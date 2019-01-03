# com-diag-critter

Musings with Software Defined Radio (SDR) using GNU Radio and HackRF One.

## Copyright

Copyright 2017-2018 by the Digital Aggregates Corporation, Arvada Colorado U.S.A.

## License

Licensed under the terms of the FSF GNU GPL v2.0.

## Contact

Chip Overclock  
<mailto:coverclock@diag.com>  
Digital Aggregates Corporation  
<http://www.diag.com>  
3440 Youngfield Street  
Suite 209  
Wheat Ridge CO 80033  
U.S.A.  

## Resources

<https://wiki.gnuradio.org/index.php/Tutorials>

<https://github.com/mossmann/hackrf/wiki/Getting-Started-with-HackRF-and-GNU-Radio>

<https://gnss-sdr.org>

<https://osmocom.org/projects/gr-osmosdr/wiki>

## Notes

    pi@critter:~ $ lsb_release --all
    No LSB modules are available.
    Distributor ID: Raspbian
    Description:    Raspbian GNU/Linux 9.6 (stretch)
    Release:    9.6
    Codename:   stretch

    pi@critter:~ $ uname -a
    Linux critter 4.14.79-v7+ #1159 SMP Sun Nov 4 17:50:20 GMT 2018 armv7l GNU/Linux

    pi@critter:~ $ hackrf_info
    Found HackRF board 0:
    USB descriptor string: 000000000000000087c867dc2b3a305f
    Board ID Number: 2 (HackRF One)
    Firmware Version: 2018.01.1
    Part ID Number: 0xa000cb3c 0x00594f58
    Serial Number: 0x00000000 0x00000000 0x87c867dc 0x2b3a305f

    pi@critter:~ $ gnss-sdr --version
    linux; GNU C++ version 6.2.0 20161010; Boost_106100; UHD_003.009.005-0-unknown
    gnss-sdr version 0.0.8

