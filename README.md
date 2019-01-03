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

<https://wiki.gnuradio.org/index.php/Download>

<https://www.gnuradio.org/doc/doxygen/build_guide.html>

<https://wiki.gnuradio.org/index.php/BuildGuide>

<https://github.com/mossmann/hackrf/wiki/Getting-Started-with-HackRF-and-GNU-Radio>

<https://gnss-sdr.org>

<https://osmocom.org/projects/gr-osmosdr/wiki>

## Targets

"Cadmium"    
Intel NUC7i7BNH    
Intel Core i7-7567U x86_64 @ 3.5GHz x 2 x 2    
Ubuntu 18.04.1 "bionic"    
Linux 4.15.0    
gcc 7.3.0    

"Critter"
Ettus Research USRP B210

## Notes

    Dec 31 12:30:28 cadmium kernel: [ 4622.056229] usb 1-2: USB disconnect, device number 5
    Dec 31 12:30:28 cadmium kernel: [ 4622.374788] usb 2-2: new SuperSpeed USB device number 2 using xhci_hcd
    Dec 31 12:30:28 cadmium kernel: [ 4622.395424] usb 2-2: LPM exit latency is zeroed, disabling LPM.
    Dec 31 12:30:28 cadmium kernel: [ 4622.396555] usb 2-2: New USB device found, idVendor=2500, idProduct=0020
    Dec 31 12:30:28 cadmium kernel: [ 4622.396563] usb 2-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
    Dec 31 12:30:28 cadmium kernel: [ 4622.396568] usb 2-2: Product: USRP B200
    Dec 31 12:30:28 cadmium kernel: [ 4622.396574] usb 2-2: Manufacturer: Ettus Research LLC
    Dec 31 12:30:28 cadmium kernel: [ 4622.396578] usb 2-2: SerialNumber: 31736DE
    Dec 31 12:30:28 cadmium mtp-probe: checking bus 2, device 2: "/sys/devices/pci0000:00/0000:00:14.0/usb2/2-2"
    Dec 31 12:30:28 cadmium mtp-probe: bus: 2, device: 2 was not an MTP device

    $ lsb_release -a
    No LSB modules are available.
    Distributor ID:	Ubuntu
    Description:	Ubuntu 18.04.1 LTS
    Release:	18.04
    Codename:	bionic

    $ uname -a
    Linux critter 4.15.0-42-generic #45-Ubuntu SMP Thu Nov 15 19:32:57 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux

    $ gcc --version
    gcc (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0
    Copyright (C) 2017 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

    $ gnuradio-companion --version
    GNU Radio Companion 3.7.11
    
    This program is part of GNU Radio
    GRC comes with ABSOLUTELY NO WARRANTY.
    This is free software, and you are welcome to redistribute it.

    $ gnuradio-config-info --version
    3.7.11
    $ gnss-sdr --version
    linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
    
    gnss-sdr version 0.0.9

    $ sudo /usr/lib/uhd/utils/uhd_images_downloader.py
    Images destination:      /usr/share/uhd/images
    Downloading images from: http://files.ettus.com/binaries/images/uhd-images_003.010.003.000-release.zip
    Downloading images to:   /tmp/tmp7_MPcg/uhd-images_003.010.003.000-release.zip
    57009 kB / 57009 kB (100%)
    
    Images successfully installed to: /usr/share/uhd/images

    $ uhd_find_devices
    linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
    
    -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
    --------------------------------------------------
    -- UHD Device 0
    --------------------------------------------------
    Device Address:
        type: b200
        name: MyB210
        serial: 31736DE
        product: B210

