#include "gnss_synchro_udp_source.h"
#include <boost/archive/binary_iarchive.hpp>
#include <boost/serialization/vector.hpp>
#include <sstream>
#include <ncurses.h>

Gnss_Synchro_Udp_Source::Gnss_Synchro_Udp_Source(const unsigned short& port)
	: socket{io_service},
          endpoint{boost::asio::ip::udp::v4(), port}
{
    socket.open(endpoint.protocol(), error);  // Open socket.
    socket.bind(endpoint, error);             // Bind the socket to the given local endpoint.
}

bool Gnss_Synchro_Udp_Source::read_gnss_synchro(std::vector<Gnss_Synchro>& stocks)
{
    char buff[1500];  // Buffer for storing the received data.

    // This call will block until one or more bytes of data has been received.
    int bytes = socket.receive(boost::asio::buffer(buff));

    try
        {
            std::string archive_data(&buff[0], bytes);
            std::istringstream archive_stream(archive_data);
            boost::archive::binary_iarchive archive(archive_stream);

            // Deserialize a stock of Gnss_Synchro objects from the binary archive.
            archive >> stocks;
        }
    catch (std::exception& e)
        {
            return false;
        }

    return true;
}

void Gnss_Synchro_Udp_Source::populate_channels(std::vector<Gnss_Synchro> stocks)
{
    for (std::size_t i = 0; i < stocks.size(); i++)
        {
            Gnss_Synchro ch = stocks[i];
            if (ch.fs != 0)  // Channel is valid.
                {
                    channels[ch.Channel_ID] = ch;
                }
        }
}

bool Gnss_Synchro_Udp_Source::print_table()
{
    if (read_gnss_synchro(stocks))
        {
            populate_channels(stocks);

            clear();  // Clear the screen.

            // Print table header.
            attron(A_REVERSE);
            printw("%3s%6s%14s%17s\n", "CH", "PRN", "CN0 [dB-Hz]", "Doppler [Hz]");
            attroff(A_REVERSE);

            // Print table contents.
            for (auto const& ch : channels)
                {
                    int channel_id = ch.first;      // Key
                    Gnss_Synchro data = ch.second;  // Value

                    printw("%3d%6d%14f%17f\n", channel_id, data.PRN, data.CN0_dB_hz, data.Carrier_Doppler_hz);
                }
            refresh();  // Update the screen.
        }
    else
        {
            return false;
        }

    return true;
}
