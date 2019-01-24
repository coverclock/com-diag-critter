# com-diag-critter

Musings with Software Defined Radio (SDR).

## Copyright

Copyright 2017-2019 by the Digital Aggregates Corporation, Arvada Colorado U.S.A.

## License

Licensed under the terms in LICENSE.txt.

## Contact

Chip Overclock  
<mailto:coverclock@diag.com>  
Digital Aggregates Corporation  
<http://www.diag.com>  
3440 Youngfield Street  
Suite 209  
Wheat Ridge CO 80033  
U.S.A.  

## Articles

<https://coverclock.blogspot.com/2018/04/a-menagerie-of-gps-devices-with-usb.html>

## Resources

<https://wiki.gnuradio.org/index.php/Tutorials>

<https://wiki.gnuradio.org/index.php/Download>

<https://www.gnuradio.org/doc/doxygen/build_guide.html>

<https://wiki.gnuradio.org/index.php/BuildGuide>

<https://github.com/mossmann/hackrf/wiki/Getting-Started-with-HackRF-and-GNU-Radio>

<https://gnss-sdr.org>

<https://osmocom.org/projects/gr-osmosdr/wiki>

<https://www.ettus.com/product/details/UB210-KIT>

<https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio>

## Targets

"Cadmium"    
Intel NUC7i7BNH    
Intel Core i7-7567U x86_64 @ 3.50GHz x 2 x 2    
Ubuntu 16.04.5 "Xenial Xerus"    
Linux 4.15.0    
gcc 5.4.0    

## Peripherals

Ettus Research USRP B210    
Ettus Research TCXO GPSDO    
Crystek Microwave CBTEE-01-50-6000 bias tee    

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

    # /usr/lib/uhd/utils/uhd_images_downloader.py
    Images destination:      /usr/share/uhd/images
    Downloading images from: http://files.ettus.com/binaries/images/uhd-images_003.010.003.000-release.zip
    Downloading images to:   /tmp/tmp7_MPcg/uhd-images_003.010.003.000-release.zip
    57009 kB / 57009 kB (100%)
    
    Images successfully installed to: /usr/share/uhd/images

    # uhd_find_devices
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

    # uhd_usrp_probe
    
    [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.0.0-72-g7fab6b80
    [INFO] [B200] Detected Device: B210
    [INFO] [B200] Operating over USB 3.
    [INFO] [B200] Detecting internal GPSDO....
    [INFO] [GPS] Found an internal GPSDO: GPSTCXO , Firmware Rev 0.929a
    [INFO] [B200] Initialize CODEC control...
    [INFO] [B200] Initialize Radio control...
    [INFO] [B200] Performing register loopback test...
    [INFO] [B200] Register loopback test passed
    [INFO] [B200] Performing register loopback test...
    [INFO] [B200] Register loopback test passed
    [INFO] [B200] Setting master clock rate selection to 'automatic'.
    [INFO] [B200] Asking for clock rate 16.000000 MHz...
    [INFO] [B200] Actually got clock rate 16.000000 MHz.
      _____________________________________________________
     /
    |       Device: B-Series Device
    |     _____________________________________________________
    |    /
    |   |       Mboard: B210
    |   |   revision: 4
    |   |   product: 2
    |   |   serial: 31736DE
    |   |   name: MyB210
    |   |   FW Version: 8.0
    |   |   FPGA Version: 16.0
    |   |
    |   |   Time sources:  none, internal, external, gpsdo
    |   |   Clock sources: internal, external, gpsdo
    |   |   Sensors: gps_gpgga, gps_gprmc, gps_time, gps_locked, gps_servo, ref_locked
    |   |     _____________________________________________________
    |   |    /
    |   |   |       RX DSP: 0
    |   |   |
    |   |   |   Freq range: -8.000 to 8.000 MHz
    |   |     _____________________________________________________
    |   |    /
    |   |   |       RX DSP: 1
    |   |   |
    |   |   |   Freq range: -8.000 to 8.000 MHz
    |   |     _____________________________________________________
    |   |    /
    |   |   |       RX Dboard: A
    |   |   |     _____________________________________________________
    |   |   |    /
    |   |   |   |       RX Frontend: A
    |   |   |   |   Name: FE-RX2
    |   |   |   |   Antennas: TX/RX, RX2
    |   |   |   |   Sensors: temp, rssi, lo_locked
    |   |   |   |   Freq range: 50.000 to 6000.000 MHz
    |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
    |   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
    |   |   |   |   Connection Type: IQ
    |   |   |   |   Uses LO offset: No
    |   |   |     _____________________________________________________
    |   |   |    /
    |   |   |   |       RX Frontend: B
    |   |   |   |   Name: FE-RX1
    |   |   |   |   Antennas: TX/RX, RX2
    |   |   |   |   Sensors: temp, rssi, lo_locked
    |   |   |   |   Freq range: 50.000 to 6000.000 MHz
    |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
    |   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
    |   |   |   |   Connection Type: IQ
    |   |   |   |   Uses LO offset: No
    |   |   |     _____________________________________________________
    |   |   |    /
    |   |   |   |       RX Codec: A
    |   |   |   |   Name: B210 RX dual ADC
    |   |   |   |   Gain Elements: None
    |   |     _____________________________________________________
    |   |    /
    |   |   |       TX DSP: 0
    |   |   |
    |   |   |   Freq range: -8.000 to 8.000 MHz
    |   |     _____________________________________________________
    |   |    /
    |   |   |       TX DSP: 1
    |   |   |
    |   |   |   Freq range: -8.000 to 8.000 MHz
    |   |     _____________________________________________________
    |   |    /
    |   |   |       TX Dboard: A
    |   |   |     _____________________________________________________
    |   |   |    /
    |   |   |   |       TX Frontend: A
    |   |   |   |   Name: FE-TX2
    |   |   |   |   Antennas: TX/RX
    |   |   |   |   Sensors: temp, lo_locked
    |   |   |   |   Freq range: 50.000 to 6000.000 MHz
    |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
    |   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
    |   |   |   |   Connection Type: IQ
    |   |   |   |   Uses LO offset: No
    |   |   |     _____________________________________________________
    |   |   |    /
    |   |   |   |       TX Frontend: B
    |   |   |   |   Name: FE-TX1
    |   |   |   |   Antennas: TX/RX
    |   |   |   |   Sensors: temp, lo_locked
    |   |   |   |   Freq range: 50.000 to 6000.000 MHz
    |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
    |   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
    |   |   |   |   Connection Type: IQ
    |   |   |   |   Uses LO offset: No
    |   |   |     _____________________________________________________
    |   |   |    /
    |   |   |   |       TX Codec: A
    |   |   |   |   Name: B210 TX dual DAC
    |   |   |   |   Gain Elements: None

    # cd src/gnuradio/lib/uhd/examples
    # ./benchmark_rate --rx_rate 10e6 --tx_rate 10e6
    
    [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.0.0-72-g7fab6b80
    [00:00:00.000007] Creating the usrp device with: ...
    [INFO] [B200] Detected Device: B210
    [INFO] [B200] Operating over USB 3.
    [INFO] [B200] Detecting internal GPSDO....
    [INFO] [GPS] Found an internal GPSDO: GPSTCXO , Firmware Rev 0.929a
    [INFO] [B200] Initialize CODEC control...
    [INFO] [B200] Initialize Radio control...
    [INFO] [B200] Performing register loopback test...
    [INFO] [B200] Register loopback test passed
    [INFO] [B200] Performing register loopback test...
    [INFO] [B200] Register loopback test passed
    [INFO] [B200] Setting master clock rate selection to 'automatic'.
    [INFO] [B200] Asking for clock rate 16.000000 MHz...
    [INFO] [B200] Actually got clock rate 16.000000 MHz.
    Using Device: Single USRP:
      Device: B-Series Device
      Mboard 0: B210
      RX Channel: 0
        RX DSP: 0
        RX Dboard: A
        RX Subdev: FE-RX2
      RX Channel: 1
        RX DSP: 1
        RX Dboard: A
        RX Subdev: FE-RX1
      TX Channel: 0
        TX DSP: 0
        TX Dboard: A
        TX Subdev: FE-TX2
      TX Channel: 1
        TX DSP: 1
        TX Dboard: A
        TX Subdev: FE-TX1
    
    [00:00:03.352258] Setting device timestamp to 0...
    [INFO] [B200] Asking for clock rate 40.000000 MHz...
    [INFO] [B200] Actually got clock rate 40.000000 MHz.
    [00:00:03.745347] Testing receive rate 10.000000 Msps on 1 channels
    [00:00:03.768722] Testing transmit rate 10.000000 Msps on 1 channels
    [00:00:13.775180] Benchmark complete.
    
    
    Benchmark rate summary:
      Num received samples:     100234521
      Num dropped samples:      0
      Num overruns detected:    0
      Num transmitted samples:  100062000
      Num sequence errors (Tx): 0
      Num sequence errors (Rx): 0
      Num underruns detected:   0
      Num late commands:        0
      Num timeouts (Tx):        0
      Num timeouts (Rx):        0
    
    
    Done!

    # cd src/gnuradio/lib/uhd/examples
    # ./rx_samples_to_file --freq 98e6 --rate 5e6 --gain 20 --duration 10 usrp_samples.dat
    
    Creating the usrp device with: ...
    [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.0.0-72-g7fab6b80
    [INFO] [B200] Detected Device: B210
    [INFO] [B200] Operating over USB 3.
    [INFO] [B200] Detecting internal GPSDO....
    [INFO] [GPS] Found an internal GPSDO: GPSTCXO , Firmware Rev 0.929a
    [INFO] [B200] Initialize CODEC control...
    [INFO] [B200] Initialize Radio control...
    [INFO] [B200] Performing register loopback test...
    [INFO] [B200] Register loopback test passed
    [INFO] [B200] Performing register loopback test...
    [INFO] [B200] Register loopback test passed
    [INFO] [B200] Setting master clock rate selection to 'automatic'.
    [INFO] [B200] Asking for clock rate 16.000000 MHz...
    [INFO] [B200] Actually got clock rate 16.000000 MHz.
    Using Device: Single USRP:
      Device: B-Series Device
      Mboard 0: B210
      RX Channel: 0
        RX DSP: 0
        RX Dboard: A
        RX Subdev: FE-RX2
      RX Channel: 1
        RX DSP: 1
        RX Dboard: A
        RX Subdev: FE-RX1
      TX Channel: 0
        TX DSP: 0
        TX Dboard: A
        TX Subdev: FE-TX2
      TX Channel: 1
        TX DSP: 1
        TX Dboard: A
        TX Subdev: FE-TX1
    
    Setting RX Rate: 5.000000 Msps...
    [INFO] [B200] Asking for clock rate 40.000000 MHz...
    [INFO] [B200] Actually got clock rate 40.000000 MHz.
    Actual RX Rate: 5.000000 Msps...
    
    Setting RX Freq: 98.000000 MHz...
    Setting RX LO Offset: 0.000000 MHz...
    Actual RX Freq: 98.000000 MHz...
    
    Setting RX Gain: 20.000000 dB...
    Actual RX Gain: 20.000000 dB...
    
    Waiting for "lo_locked": ++++++++++ locked.
    
    Press Ctrl + C to stop streaming...
    ^C
    Done!
    # ls -l usrp_samples.dat
    -rw-r--r-- 1 root root 132640000 Jan 24 13:00 usrp_samples.dat

    # ./rx_ascii_art_dft --freq 98e6 --rate 5e6 --gain 20 --bw 5e6 --ref-lvl -30
    
    Creating the usrp device with: ...
    [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.0.0-72-g7fab6b80
    [INFO] [B200] Detected Device: B210
    [INFO] [B200] Operating over USB 3.
    [INFO] [B200] Detecting internal GPSDO....
    [INFO] [GPS] Found an internal GPSDO: GPSTCXO , Firmware Rev 0.929a
    [INFO] [B200] Initialize CODEC control...
    [INFO] [B200] Initialize Radio control...
    [INFO] [B200] Performing register loopback test...
    [INFO] [B200] Register loopback test passed
    [INFO] [B200] Performing register loopback test...
    [INFO] [B200] Register loopback test passed
    [INFO] [B200] Setting master clock rate selection to 'automatic'.
    [INFO] [B200] Asking for clock rate 16.000000 MHz...
    [INFO] [B200] Actually got clock rate 16.000000 MHz.
    Using Device: Single USRP:
      Device: B-Series Device
      Mboard 0: B210
      RX Channel: 0
        RX DSP: 0
        RX Dboard: A
        RX Subdev: FE-RX2
      RX Channel: 1
        RX DSP: 1
        RX Dboard: A
        RX Subdev: FE-RX1
      TX Channel: 0
        TX DSP: 0
        TX Dboard: A
        TX Subdev: FE-TX2
      TX Channel: 1
        TX DSP: 1
        TX Dboard: A
        TX Subdev: FE-TX1
    
    Setting RX Rate: 5.000000 Msps...
    [INFO] [B200] Asking for clock rate 40.000000 MHz...
    [INFO] [B200] Actually got clock rate 40.000000 MHz.
    Actual RX Rate: 5.000000 Msps...
    
    Setting RX Freq: 98.000000 MHz...
    Actual RX Freq: 98.000000 MHz...
    
    Setting RX Gain: 20.000000 dB...
    Actual RX Gain: 20.000000 dB...
    
    Setting RX Bandwidth: 5.000000 MHz...
    Actual RX Bandwidth: 5.000000 MHz...
    
    Checking RX: LO: locked ...

    # cd Critter/gnss-b210
    # . ../bin/setup.sh
    # gnss-sdr --config_file=../etc/gnss-b210-a.conf --log_dir=. -logtostderr -colorlogtostderr

    $ cd Critter/gnss-b210
    $ . ../bin/setup.sh
    $ tail -f gnss_sdr_pvt.nmea | gpstool -E

