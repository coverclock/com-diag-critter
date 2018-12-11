# com-diag-critter

Musings with Software Defined Radio (SDR).

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

## Targets

"Critter"    
Intel NUC7i7BNH    
Intel x86_64    
Intel Core i7-7567U @ 3.5GHz x 2 x 2    
Ubuntu 18.04.1 "bionic"    
Linux 4.15.0    
gcc 7.3.0    

## Notes

    jsloan@critter:~/src/com-diag-critter/Critter$ lsb_release -a
    No LSB modules are available.
    Distributor ID:	Ubuntu
    Description:	Ubuntu 18.04.1 LTS
    Release:	18.04
    Codename:	bionic
    jsloan@critter:~/src/com-diag-critter/Critter$ uname -a
    Linux critter 4.15.0-42-generic #45-Ubuntu SMP Thu Nov 15 19:32:57 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
    jsloan@critter:~/src/com-diag-critter/Critter$ gcc --version
    gcc (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0
    Copyright (C) 2017 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    
    jsloan@critter:~/src/com-diag-critter/Critter$ gnuradio-companion --version
    GNU Radio Companion 3.7.11
    
    This program is part of GNU Radio
    GRC comes with ABSOLUTELY NO WARRANTY.
    This is free software, and you are welcome to redistribute it.
    
    jsloan@critter:~/src/com-diag-critter/Critter$ gnuradio-config-info --version
    3.7.11
    jsloan@critter:~/src/com-diag-critter/Critter$ gnss-sdr --version
    linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
    
    gnss-sdr version 0.0.9
    jsloan@critter:~/src/com-diag-critter/Critter$

