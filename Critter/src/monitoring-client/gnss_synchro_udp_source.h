#ifndef GNSS_SYNCHRO_UDP_SOURCE_H_
#define GNSS_SYNCHRO_UDP_SOURCE_H_

#include <boost/asio.hpp>
#include "gnss_synchro.h"

class Gnss_Synchro_Udp_Source
{
public:
    Gnss_Synchro_Udp_Source(const unsigned short& port);
    bool read_gnss_synchro(std::vector<Gnss_Synchro>& stocks);
    void populate_channels(std::vector<Gnss_Synchro> stocks);
    bool print_table();

private:
    boost::asio::io_service io_service;
    boost::asio::ip::udp::socket socket;
    boost::system::error_code error;
    boost::asio::ip::udp::endpoint endpoint;
    std::vector<Gnss_Synchro> stocks;
    std::map<int, Gnss_Synchro> channels;
};

#endif /* GNSS_SYNCHRO_UDP_SOURCE_H_ */

