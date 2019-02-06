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

<http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-February/051558.html>

<https://www.google.com/maps/place/41°16'29.3%22N+1°59'15.4%22E/@41.2748,1.985426,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d41.2748!4d1.98762>

<https://github.com/gnuradio/gnuradio/issues/1706>

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

    $ pybombs -y prefix init `pwd` -a myprefix -R gnuradio-default
    [INFO] Prefix Python version is: 2.7.12
    [INFO] PyBOMBS Version 2.3.4a0
    [WARNING] There already is a prefix in `/home/jsloan/src/gnss-sdr-v0.0.10'.
    [INFO] Prefix Python version is: 2.7.12
    [INFO] Prefix Python version is: 2.7.12
    [INFO] Installing default packages for prefix...
    [INFO]
      - gnuradio
    [INFO] Phase 1: Creating install tree and installing binary packages:
    Install tree:
    |
    \- gnuradio
       |
       +- uhd
       |
       \- apache-thrift
    [INFO] Phase 1 complete: All binary dependencies installed.
    [INFO] Phase 2: Recursively installing source packages to prefix:
    [INFO] Installing package: apache-thrift
    Cloning into 'apache-thrift'...
    remote: Enumerating objects: 1, done.
    remote: Counting objects: 100% (1/1), done.
    remote: Total 29 (delta 1), reused 1 (delta 1), pack-reused 28
    Unpacking objects: 100% (29/29), done.
    Checking connectivity... done.
    Note: checking out '0.10.0'.
    
    You are in 'detached HEAD' state. You can look around, make experimental
    changes and commit them, and you can discard any commits you make in this
    state without impacting any branches by performing another checkout.
    
    If you want to create a new branch to retain commits you create, you may
    do so (now or later) by using -b with the checkout command again. Example:
    
      git checkout -b <new-branch-name>
    
    HEAD is now at b2a4d4a... THRIFT-3775: 0.10.0 release Client: release Patch: jfarrell
    Configuring: (100%) [=========================================================]
    Building:    (100%) [=========================================================]
    Installing:  (100%) [=========================================================]
    [INFO] Installation successful.
    [INFO] Installing package: uhd
    Cloning into 'uhd'...
    remote: Enumerating objects: 69, done.
    remote: Counting objects: 100% (69/69), done.
    Receiving objects: 100% (115/115), 10.62 KiB | 0 bytes/s, done.
    remote: Total 115 (delta 69), reused 69 (delta 69), pack-reused 46
    Resolving deltas: 100% (87/87), completed with 25 local objects.
    Checking connectivity... done.
    Configuring: (100%) [=========================================================]
    Building:    (100%) [=========================================================]
    Installing:  (100%) [=========================================================]
    [INFO] Installation successful.
    [INFO] Installing package: gnuradio
    Cloning into 'gnuradio'...
    remote: Enumerating objects: 1164, done.
    remote: Counting objects: 100% (1164/1164), done.
    remote: Total 2892 (delta 1164), reused 1164 (delta 1164), pack-reused 1728
    Receiving objects: 100% (2892/2892), 1.28 MiB | 0 bytes/s, done.
    Resolving deltas: 100% (2315/2315), completed with 322 local objects.
    Checking connectivity... done.
    Submodule 'volk' (https://github.com/gnuradio/volk.git) registered for path 'volk'
    Cloning into 'volk'...
    remote: Enumerating objects: 40, done.
    remote: Counting objects: 100% (40/40), done.
    remote: Compressing objects: 100% (24/24), done.
    remote: Total 7792 (delta 15), reused 32 (delta 15), pack-reused 7752
    Receiving objects: 100% (7792/7792), 2.13 MiB | 3.08 MiB/s, done.
    Resolving deltas: 100% (5416/5416), done.
    Checking connectivity... done.
    Submodule path 'volk': checked out '17277ed3130e9b2592da06c681657e63b5590c56'
    Configuring: (100%) [=========================================================]
    Building:    (100%) [=========================================================]
    Installing:  (100%) [=========================================================]
    [INFO] Installation successful.
    [INFO] Phase 2 complete: All source packages installed.

    $ vi $HOME/src/gnss-sdr-v0.0.10/.pybombs/recipes/gr-recipes/gnss-sdr.lwr $HOME/.pybombs/recipes/gr-recipes/gnss-sdr.lwr# "next" -> "v0.0.10"

    $ pybombs install gnss-sdr
    [INFO] Prefix Python version is: 2.7.12
    [INFO] PyBOMBS Version 2.3.4a0
    [INFO] Phase 1: Creating install tree and installing binary packages:
    Install tree:
    |
    \- gnss-sdr
    [INFO] Phase 1 complete: All binary dependencies installed.
    [INFO] Phase 2: Recursively installing source packages to prefix:
    [INFO] Installing package: gnss-sdr
    remote: Enumerating objects: 23, done.
    remote: Counting objects: 100% (23/23), done.
    remote: Compressing objects: 100% (7/7), done.
    remote: Total 14 (delta 8), reused 13 (delta 7), pack-reused 0
    Unpacking objects: 100% (14/14), done.
    From http://github.com/gnss-sdr/gnss-sdr
       02b5484..1de9588  next       -> gnss-sdr/next
    Cloning into 'gnss-sdr'...
    remote: Enumerating objects: 438, done.
    remote: Counting objects: 100% (438/438), done.
    remote: Total 1184 (delta 438), reused 438 (delta 438), pack-reused 746
    Receiving objects: 100% (1184/1184), 256.07 KiB | 0 bytes/s, done.
    Resolving deltas: 100% (993/993), completed with 72 local objects.
    Checking connectivity... done.
    Note: checking out '31c6b6bc1da77c9589a04d52a38d2d20edacf06e'.
    
    You are in 'detached HEAD' state. You can look around, make experimental
    changes and commit them, and you can discard any commits you make in this
    state without impacting any branches by performing another checkout.
    
    If you want to create a new branch to retain commits you create, you may
    do so (now or later) by using -b with the checkout command again. Example:
    
      git checkout -b <new-branch-name>
    
    [WARNING] Build dir already exists: /home/jsloan/src/gnss-sdr-v0.0.10/src/gnss-sdr/build
    Configuring: (100%) [=========================================================]
    Building:    (100%) [=========================================================]
    Installing:  (100%) [=========================================================]
    [INFO] Installation successful.
    [INFO] Phase 2 complete: All source packages installed.

    $ lsb_release -a
    No LSB modules are available.
    Distributor ID:    Ubuntu
    Description:    Ubuntu 16.04.5 LTS
    Release:    16.04
    Codename:    xenial

    $ uname -a
    Linux cadmium 4.15.0-43-generic #46~16.04.1-Ubuntu SMP Fri Dec 7 13:31:08 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux

    $ gcc --version
    gcc (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609
    Copyright (C) 2015 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

    $ gnuradio-companion --version
    GNU Radio Companion 3.7.13.4

    This program is part of GNU Radio
    GRC comes with ABSOLUTELY NO WARRANTY.
    This is free software, and you are welcome to redistribute it.

    $ gnuradio-config-info --version
    3.7.13.4

    $ gnss-sdr --version
    gnss-sdr version 0.0.10

    $ cat /proc/cpuinfo
    processor	: 0
    vendor_id	: GenuineIntel
    cpu family	: 6
    model		: 142
    model name	: Intel(R) Core(TM) i7-7567U CPU @ 3.50GHz
    stepping	: 9
    microcode	: 0x8e
    cpu MHz		: 917.830
    cache size	: 4096 KB
    physical id	: 0
    siblings	: 4
    core id		: 0
    cpu cores	: 2
    apicid		: 0
    initial apicid	: 0
    fpu		: yes
    fpu_exception	: yes
    cpuid level	: 22
    wp		: yes
    flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp flush_l1d
    bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf
    bogomips	: 7008.00
    clflush size	: 64
    cache_alignment	: 64
    address sizes	: 39 bits physical, 48 bits virtual
    power management:
    
    processor	: 1
    vendor_id	: GenuineIntel
    cpu family	: 6
    model		: 142
    model name	: Intel(R) Core(TM) i7-7567U CPU @ 3.50GHz
    stepping	: 9
    microcode	: 0x8e
    cpu MHz		: 909.707
    cache size	: 4096 KB
    physical id	: 0
    siblings	: 4
    core id		: 1
    cpu cores	: 2
    apicid		: 2
    initial apicid	: 2
    fpu		: yes
    fpu_exception	: yes
    cpuid level	: 22
    wp		: yes
    flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp flush_l1d
    bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf
    bogomips	: 7008.00
    clflush size	: 64
    cache_alignment	: 64
    address sizes	: 39 bits physical, 48 bits virtual
    power management:
    
    processor	: 2
    vendor_id	: GenuineIntel
    cpu family	: 6
    model		: 142
    model name	: Intel(R) Core(TM) i7-7567U CPU @ 3.50GHz
    stepping	: 9
    microcode	: 0x8e
    cpu MHz		: 943.615
    cache size	: 4096 KB
    physical id	: 0
    siblings	: 4
    core id		: 0
    cpu cores	: 2
    apicid		: 1
    initial apicid	: 1
    fpu		: yes
    fpu_exception	: yes
    cpuid level	: 22
    wp		: yes
    flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp flush_l1d
    bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf
    bogomips	: 7008.00
    clflush size	: 64
    cache_alignment	: 64
    address sizes	: 39 bits physical, 48 bits virtual
    power management:
    
    processor	: 3
    vendor_id	: GenuineIntel
    cpu family	: 6
    model		: 142
    model name	: Intel(R) Core(TM) i7-7567U CPU @ 3.50GHz
    stepping	: 9
    microcode	: 0x8e
    cpu MHz		: 960.711
    cache size	: 4096 KB
    physical id	: 0
    siblings	: 4
    core id		: 1
    cpu cores	: 2
    apicid		: 3
    initial apicid	: 3
    fpu		: yes
    fpu_exception	: yes
    cpuid level	: 22
    wp		: yes
    flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp flush_l1d
    bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf
    bogomips	: 7008.00
    clflush size	: 64
    cache_alignment	: 64
    address sizes	: 39 bits physical, 48 bits virtual
    power management:

    $ volk_profile
    RUN_VOLK_TESTS: volk_64u_popcntpuppet_64u(131071,1987)
    generic completed in 141.779ms
    a_sse4_2 completed in 144.078ms
    Best aligned arch: generic
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_64u_popcntpuppet_64u(131071,1987)
    generic completed in 146.186ms
    a_sse4_2 completed in 141.807ms
    Best aligned arch: a_sse4_2
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_64u_popcntpuppet_64u(131071,1987)
    generic completed in 142.008ms
    a_sse4_2 completed in 141.789ms
    Best aligned arch: a_sse4_2
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_16u_byteswappuppet_16u(131071,1987)
    generic completed in 112.014ms
    u_sse2 completed in 32.965ms
    a_sse2 completed in 31.729ms
    u_avx2 completed in 23.865ms
    a_avx2 completed in 23.679ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32u_byteswappuppet_32u(131071,1987)
    generic completed in 114.918ms
    u_sse2 completed in 87.805ms
    a_sse2 completed in 90.184ms
    u_avx2 completed in 52.533ms
    a_avx2 completed in 52.052ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32u_popcntpuppet_32u(131071,1987)
    generic completed in 423.12ms
    a_sse4_2 completed in 86.784ms
    Best aligned arch: a_sse4_2
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_64u_byteswappuppet_64u(131071,1987)
    generic completed in 211.22ms
    u_sse2 completed in 198.729ms
    a_sse2 completed in 188.55ms
    u_ssse3 completed in 130.093ms
    a_ssse3 completed in 113.668ms
    u_avx2 completed in 106.519ms
    a_avx2 completed in 107.66ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32fc_s32fc_rotatorpuppet_32fc(131071,1987)
    generic completed in 8288.88ms
    a_sse4_1 completed in 363.407ms
    u_sse4_1 completed in 364.157ms
    a_avx completed in 181.612ms
    u_avx completed in 181.653ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_8u_conv_k7_r2puppet_8u(131071,198)
    spiral completed in 101.852ms
    generic completed in 2327.53ms
    offset 0 in1: 1 in2: 0 tolerance was: 0
    offset 1 in1: 1 in2: 0 tolerance was: 0
    offset 2 in1: 1 in2: 0 tolerance was: 0
    offset 4 in1: 1 in2: 0 tolerance was: 0
    offset 6 in1: 1 in2: 0 tolerance was: 0
    offset 7 in1: 1 in2: 0 tolerance was: 0
    offset 8 in1: 1 in2: 0 tolerance was: 0
    offset 9 in1: 1 in2: 0 tolerance was: 0
    offset 10 in1: 1 in2: 0 tolerance was: 0
    offset 11 in1: 1 in2: 0 tolerance was: 0
    volk_8u_conv_k7_r2puppet_8u: fail on arch spiral
    Best aligned arch: generic
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32f_x2_fm_detectpuppet_32f(131071,1987)
    a_sse completed in 61.327ms
    generic completed in 824.53ms
    Best aligned arch: a_sse
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_16ic_s32f_deinterleave_real_32f(131071,1987)
    a_sse4_1 completed in 46.621ms
    a_sse completed in 471.395ms
    generic completed in 131.25ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_16ic_deinterleave_real_8i(131071,1987)
    a_ssse3 completed in 25.37ms
    generic completed in 89.387ms
    u_orc completed in 66.252ms
    Best aligned arch: a_ssse3
    Best unaligned arch: u_orc
    RUN_VOLK_TESTS: volk_16ic_deinterleave_16i_x2(131071,1987)
    a_ssse3 completed in 46.998ms
    a_sse2 completed in 98.394ms
    generic completed in 185.403ms
    u_orc completed in 76.351ms
    Best aligned arch: a_ssse3
    Best unaligned arch: u_orc
    RUN_VOLK_TESTS: volk_16ic_s32f_deinterleave_32f_x2(131071,1987)
    a_sse completed in 530.094ms
    generic completed in 392.837ms
    u_orc completed in 135.852ms
    Best aligned arch: u_orc
    Best unaligned arch: u_orc
    RUN_VOLK_TESTS: volk_16ic_deinterleave_real_16i(131071,1987)
    a_ssse3 completed in 27.164ms
    a_sse2 completed in 49.523ms
    generic completed in 82.435ms
    Best aligned arch: a_ssse3
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_16ic_magnitude_16i(131071,1987)
    a_sse3 completed in 1248.4ms
    a_sse completed in 1657.72ms
    generic completed in 501.573ms
    Best aligned arch: generic
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_16ic_s32f_magnitude_32f(131071,1987)
    a_sse3 completed in 843.568ms
    a_sse completed in 1051.78ms
    generic completed in 357.133ms
    Best aligned arch: generic
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_16ic_convert_32fc(131071,1987)
    generic completed in 230.222ms
    a_sse2 completed in 229.286ms
    u_sse2 completed in 229.244ms
    u_axv completed in 245.9ms
    a_axv completed in 246.94ms
    Best aligned arch: u_sse2
    Best unaligned arch: u_sse2
    RUN_VOLK_TESTS: volk_16ic_x2_multiply_16ic(131071,1987)
    generic completed in 262.836ms
    a_sse2 completed in 77.21ms
    u_sse2 completed in 82.56ms
    u_avx2 completed in 57.617ms
    a_avx2 completed in 57.622ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_16ic_x2_dot_prod_16ic(131071,1987)
    generic completed in 1280.03ms
    a_sse2 completed in 83.785ms
    u_sse2 completed in 82.689ms
    u_axv2 completed in 42.996ms
    a_axv2 completed in 43.026ms
    Best aligned arch: u_axv2
    Best unaligned arch: u_axv2
    RUN_VOLK_TESTS: volk_16i_s32f_convert_32f(131071,1987)
    u_avx completed in 34.778ms
    u_sse4_1 completed in 35.207ms
    u_sse completed in 114.891ms
    generic completed in 196.6ms
    a_avx completed in 35.84ms
    a_sse4_1 completed in 36.472ms
    a_sse completed in 114.856ms
    a_generic completed in 196.524ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_16i_convert_8i(131071,1987)
    u_sse2 completed in 13.187ms
    generic completed in 88.556ms
    a_sse2 completed in 13.417ms
    a_generic completed in 86.055ms
    Best aligned arch: u_sse2
    Best unaligned arch: u_sse2
    RUN_VOLK_TESTS: volk_16i_32fc_dot_prod_32fc(131071,1987)
    generic completed in 143.452ms
    u_sse completed in 148.028ms
    a_sse completed in 147.525ms
    Best aligned arch: generic
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32f_accumulator_s32f(131071,1987)
    a_avx completed in 33.538ms
    u_avx completed in 33.623ms
    a_sse completed in 148.246ms
    u_sse completed in 148.259ms
    generic completed in 264.75ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_x2_add_32f(131071,1987)
    u_avx completed in 49.712ms
    u_sse completed in 51.905ms
    generic completed in 131.387ms
    a_sse completed in 51.14ms
    a_generic completed in 107.303ms
    u_orc completed in 53.032ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_index_max_16u(131071,1987)
    a_sse4_1 completed in 66.792ms
    a_sse completed in 70.164ms
    generic completed in 65.844ms
    Best aligned arch: generic
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32f_index_max_32u(131071,1987)
    a_sse4_1 completed in 133.969ms
    u_sse4_1 completed in 133.348ms
    a_sse completed in 145.418ms
    u_sse completed in 146.701ms
    a_avx completed in 66.911ms
    u_avx completed in 66.908ms
    generic completed in 131.693ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_32f_multiply_32fc(131071,1987)
    a_avx completed in 101.155ms
    a_sse completed in 87.925ms
    generic completed in 180.1ms
    u_orc completed in 96.347ms
    Best aligned arch: a_sse
    Best unaligned arch: u_orc
    RUN_VOLK_TESTS: volk_32fc_32f_add_32fc(131071,1987)
    generic completed in 177.248ms
    u_avx completed in 89.218ms
    a_avx completed in 85.193ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_log2_32f(131071,1987)
    generic completed in 2688.15ms
    a_avx2 completed in 50.339ms
    a_sse4_1 completed in 89.507ms
    u_generic completed in 2400.21ms
    u_avx2 completed in 51.824ms
    u_sse4_1 completed in 90.942ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32f_expfast_32f(131071,1987)
    a_avx completed in 38.139ms
    a_sse4_1 completed in 42.312ms
    u_avx completed in 37.157ms
    u_sse4_1 completed in 41.278ms
    generic completed in 1948.47ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_x2_pow_32f(131071,1987)
    a_sse4_1 completed in 426.431ms
    generic completed in 13887.3ms
    u_sse4_1 completed in 442.012ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_TESTS: volk_32f_sin_32f(131071,1987)
    a_sse4_1 completed in 714.487ms
    u_sse4_1 completed in 719.537ms
    generic completed in 2452.46ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_TESTS: volk_32f_cos_32f(131071,1987)
    a_sse4_1 completed in 715.247ms
    u_sse4_1 completed in 711.491ms
    generic_fast completed in 4325.72ms
    generic completed in 2514.74ms
    Best aligned arch: u_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_TESTS: volk_32f_tan_32f(131071,1987)
    a_sse4_1 completed in 869.692ms
    u_sse4_1 completed in 878.004ms
    generic completed in 6714.86ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_TESTS: volk_32f_atan_32f(131071,1987)
    a_sse4_1 completed in 493.974ms
    u_sse4_1 completed in 501.021ms
    generic completed in 5498.55ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_TESTS: volk_32f_asin_32f(131071,1987)
    a_sse4_1 completed in 724.582ms
    u_sse4_1 completed in 748.264ms
    u_generic completed in 4352.89ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_TESTS: volk_32f_acos_32f(131071,1987)
    a_sse4_1 completed in 768.364ms
    u_sse4_1 completed in 774.013ms
    generic completed in 4368.68ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_TESTS: volk_32fc_s32f_power_32fc(131071,1987)
    a_sse completed in 36835.4ms
    generic completed in 36836.3ms
    Best aligned arch: a_sse
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32f_s32f_calc_spectral_noise_floor_32f(131071,1987)
    a_sse completed in 295.708ms
    generic completed in 524.157ms
    Best aligned arch: a_sse
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_s32f_atan2_32f(131071,1987)
    a_sse4_1 completed in 6558.28ms
    a_sse completed in 6508.59ms
    generic completed in 6554.89ms
    Best aligned arch: a_sse
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_x2_conjugate_dot_prod_32fc(131071,1987)
    generic completed in 216.176ms
    u_avx completed in 75.206ms
    a_avx completed in 71.398ms
    u_sse3 completed in 299.08ms
    a_generic completed in 214.566ms
    a_sse completed in 137.441ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_deinterleave_32f_x2(131071,1987)
    a_avx completed in 90.188ms
    a_sse completed in 103.03ms
    generic completed in 210.23ms
    Best aligned arch: a_avx
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_deinterleave_64f_x2(131071,1987)
    u_avx completed in 158.18ms
    u_sse2 completed in 204.557ms
    generic completed in 256.729ms
    a_avx completed in 177.917ms
    a_sse2 completed in 200.943ms
    a_generic completed in 269.629ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_s32f_deinterleave_real_16i(131071,1987)
    a_sse completed in 204.217ms
    generic completed in 131.668ms
    Best aligned arch: generic
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_deinterleave_imag_32f(131071,1987)
    a_avx completed in 50.688ms
    a_sse completed in 53.48ms
    generic completed in 93.891ms
    Best aligned arch: a_avx
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_deinterleave_real_32f(131071,1987)
    a_sse completed in 52.841ms
    generic completed in 131.027ms
    Best aligned arch: a_sse
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_deinterleave_real_64f(131071,1987)
    a_sse2 completed in 83.304ms
    generic completed in 102.954ms
    Best aligned arch: a_sse2
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_x2_dot_prod_32fc(131071,1987)
    generic completed in 214.612ms
    u_sse_64 completed in 131.141ms
    u_sse3 completed in 131.644ms
    u_sse4_1 completed in 202.492ms
    u_avx completed in 75.455ms
    a_generic completed in 202.174ms
    a_sse_64 completed in 131.578ms
    a_sse3 completed in 296.129ms
    a_sse4_1 completed in 205.274ms
    a_avx completed in 70.522ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_32f_dot_prod_32fc(131071,1987)
    generic completed in 261.626ms
    a_avx completed in 42.985ms
    a_sse completed in 53.574ms
    u_avx completed in 42.028ms
    u_sse completed in 53.808ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_index_max_16u(131071,1987)
    a_sse3 completed in 63.669ms
    generic completed in 65.837ms
    Best aligned arch: a_sse3
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_index_max_32u(131071,1987)
    a_sse3 completed in 126.458ms
    generic completed in 132.436ms
    Best aligned arch: a_sse3
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_s32f_magnitude_16i(131071,1987)
    a_sse3 completed in 318.455ms
    a_sse completed in 302.974ms
    generic completed in 338.266ms
    u_orc completed in 261.008ms
    Best aligned arch: u_orc
    Best unaligned arch: u_orc
    RUN_VOLK_TESTS: volk_32fc_magnitude_32f(131071,1987)
    u_avx completed in 57.776ms
    u_sse3 completed in 68.677ms
    u_sse completed in 64.778ms
    generic completed in 215.419ms
    a_avx completed in 57.649ms
    a_sse3 completed in 68.642ms
    a_sse completed in 63.91ms
    a_generic completed in 215.169ms
    u_orc completed in 101.371ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_magnitude_squared_32f(131071,1987)
    u_avx completed in 54.966ms
    u_sse3 completed in 61.896ms
    u_sse completed in 58.891ms
    generic completed in 147.698ms
    a_avx completed in 53.986ms
    a_sse3 completed in 63.062ms
    a_sse completed in 59.02ms
    a_generic completed in 149.031ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_x2_add_32fc(131071,1987)
    u_avx completed in 104.097ms
    a_avx completed in 111.637ms
    u_sse completed in 118.018ms
    generic completed in 206.864ms
    a_sse completed in 113.516ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_x2_multiply_32fc(131071,1987)
    u_avx2_fma completed in 102.366ms
    u_avx completed in 109.641ms
    u_sse3 completed in 135.57ms
    generic completed in 2326.7ms
    a_avx2_fma completed in 106.802ms
    a_avx completed in 110.049ms
    a_sse3 completed in 133.781ms
    a_generic completed in 2318.89ms
    u_orc completed in 209.276ms
    Best aligned arch: u_avx2_fma
    Best unaligned arch: u_avx2_fma
    RUN_VOLK_TESTS: volk_32fc_x2_multiply_conjugate_32fc(131071,1987)
    u_avx completed in 106.4ms
    u_sse3 completed in 124.132ms
    generic completed in 2338.94ms
    a_avx completed in 119.848ms
    a_sse3 completed in 131.675ms
    a_generic completed in 2324.87ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_x2_divide_32fc(131071,1987)
    u_sse3 completed in 194.112ms
    u_avx completed in 114.689ms
    generic completed in 2022.62ms
    a_sse3 completed in 182.326ms
    a_avx completed in 128.979ms
    a_generic completed in 2020.96ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32fc_conjugate_32fc(131071,1987)
    u_avx completed in 73.282ms
    u_sse3 completed in 79.568ms
    generic completed in 190.374ms
    a_avx completed in 73.404ms
    a_sse3 completed in 76.884ms
    a_generic completed in 170.538ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_s32f_convert_16i(131071,1987)
    u_avx2 completed in 30.298ms
    u_avx completed in 36.495ms
    u_sse2 completed in 40.823ms
    u_sse completed in 455.404ms
    generic completed in 458.3ms
    a_avx2 completed in 30.938ms
    a_avx completed in 36.181ms
    a_sse2 completed in 40.439ms
    a_sse completed in 475.532ms
    a_generic completed in 465.231ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32f_s32f_convert_32i(131071,1987)
    u_sse2 completed in 47.965ms
    u_sse completed in 219.162ms
    generic completed in 233.428ms
    a_avx completed in 37.623ms
    a_sse2 completed in 47.662ms
    a_sse completed in 218.38ms
    a_generic completed in 229.614ms
    Best aligned arch: a_avx
    Best unaligned arch: u_sse2
    RUN_VOLK_TESTS: volk_32f_convert_64f(131071,1987)
    u_avx completed in 61.39ms
    u_sse2 completed in 67.68ms
    generic completed in 104.427ms
    a_avx completed in 61.949ms
    a_sse2 completed in 69.844ms
    a_generic completed in 102.16ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_s32f_convert_8i(131071,1987)
    u_avx2 completed in 27.217ms
    u_sse2 completed in 40.724ms
    u_sse completed in 222.951ms
    generic completed in 1511.49ms
    a_avx2 completed in 27.786ms
    a_sse2 completed in 42.903ms
    a_sse completed in 222.512ms
    a_generic completed in 1536.09ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32fc_convert_16ic(131071,1987)
    u_sse2 completed in 70.807ms
    a_sse2 completed in 71.011ms
    generic completed in 916.478ms
    Best aligned arch: u_sse2
    Best unaligned arch: u_sse2
    RUN_VOLK_TESTS: volk_32fc_s32f_power_spectrum_32f(131071,1987)
    a_sse3 completed in 5695.16ms
    generic completed in 5713.74ms
    Best aligned arch: a_sse3
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_x2_square_dist_32f(131071,1987)
    a_sse3 completed in 69.172ms
    generic completed in 196.57ms
    Best aligned arch: a_sse3
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32fc_x2_s32f_square_dist_scalar_mult_32f(131071,1987)
    a_sse3 completed in 74.103ms
    generic completed in 197.854ms
    Best aligned arch: a_sse3
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32f_x2_divide_32f(131071,1987)
    a_sse completed in 52.819ms
    a_avx completed in 49.793ms
    generic completed in 200.126ms
    u_orc completed in 53.657ms
    u_avx completed in 50.936ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_x2_dot_prod_32f(131071,1987)
    generic completed in 261.603ms
    u_sse completed in 38.929ms
    u_sse3 completed in 39.326ms
    u_sse4_1 completed in 51.445ms
    u_avx completed in 33.592ms
    a_generic completed in 262.832ms
    a_sse completed in 39.069ms
    a_sse3 completed in 40.292ms
    a_sse4_1 completed in 50.448ms
    a_avx completed in 29.759ms
    a_avx2_fma completed in 33.814ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_x2_s32f_interleave_16ic(131071,1987)
    a_avx2 completed in 53.802ms
    a_sse2 completed in 63.527ms
    a_sse completed in 398.743ms
    generic completed in 204.667ms
    u_avx2 completed in 54.23ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32f_x2_interleave_32fc(131071,1987)
    a_sse completed in 76.311ms
    generic completed in 174.221ms
    Best aligned arch: a_sse
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32f_x2_max_32f(131071,1987)
    a_sse completed in 51.481ms
    a_avx completed in 49.782ms
    generic completed in 131.153ms
    u_orc completed in 54.616ms
    u_avx completed in 49.881ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_x2_min_32f(131071,1987)
    a_sse completed in 51.433ms
    a_avx completed in 49.872ms
    generic completed in 105.735ms
    u_orc completed in 55.786ms
    u_avx completed in 49.803ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_x2_multiply_32f(131071,1987)
    u_sse completed in 51.487ms
    u_avx completed in 49.827ms
    generic completed in 102.946ms
    a_sse completed in 52.423ms
    a_avx completed in 50.876ms
    a_generic completed in 126.244ms
    u_orc completed in 51.697ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_64f_multiply_64f(131071,1987)
    generic completed in 137.575ms
    u_avx completed in 92.33ms
    a_avx completed in 95.284ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_64f_add_64f(131071,1987)
    generic completed in 136.767ms
    u_avx completed in 92.169ms
    a_avx completed in 88.14ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_s32f_normalize(131071,1987)
    a_sse completed in 27.733ms
    a_avx completed in 23.146ms
    generic completed in 80.003ms
    u_orc completed in 27.116ms
    u_avx completed in 23.654ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_s32f_power_32f(131071,1987)
    a_sse4_1 completed in 20570.8ms
    a_sse completed in 20518.8ms
    generic completed in 20543ms
    Best aligned arch: a_sse
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32f_sqrt_32f(131071,1987)
    a_sse completed in 49.505ms
    a_avx completed in 49.533ms
    generic completed in 2522.82ms
    u_orc completed in 49.537ms
    Best aligned arch: a_sse
    Best unaligned arch: u_orc
    RUN_VOLK_TESTS: volk_32f_s32f_stddev_32f(131071,1987)
    a_sse4_1 completed in 41.164ms
    a_avx completed in 22.764ms
    a_sse completed in 148.616ms
    generic completed in 261.738ms
    Best aligned arch: a_avx
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_32f_stddev_and_mean_32f_x2(131071,1987)
    a_avx completed in 32.999ms
    u_avx completed in 33.526ms
    a_sse4_1 completed in 86.414ms
    a_sse completed in 147.723ms
    generic completed in 261.75ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_x2_subtract_32f(131071,1987)
    a_sse completed in 51.321ms
    a_avx completed in 49.886ms
    generic completed in 106.288ms
    u_orc completed in 51.829ms
    u_avx completed in 49.828ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_x3_sum_of_poly_32f(131071,1987)
    a_sse3 completed in 89.386ms
    a_avx completed in 65.66ms
    generic completed in 325.969ms
    u_avx completed in 65.725ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32i_x2_and_32i(131071,1987)
    a_avx2 completed in 49.753ms
    a_sse completed in 51.721ms
    generic completed in 106.261ms
    u_orc completed in 52.214ms
    u_avx2 completed in 49.913ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32i_s32f_convert_32f(131071,1987)
    u_sse2 completed in 40.541ms
    generic completed in 130.99ms
    a_sse2 completed in 40.416ms
    a_generic completed in 132.408ms
    Best aligned arch: a_sse2
    Best unaligned arch: u_sse2
    RUN_VOLK_TESTS: volk_32i_x2_or_32i(131071,1987)
    a_avx2 completed in 49.657ms
    a_sse completed in 51.784ms
    generic completed in 106.314ms
    u_orc completed in 51.681ms
    u_avx2 completed in 49.88ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32f_x2_dot_prod_16i(131071,1987)
    generic completed in 261.604ms
    a_avx completed in 28.761ms
    u_avx completed in 31.829ms
    a_sse completed in 39.456ms
    u_sse completed in 37.769ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_64f_convert_32f(131071,1987)
    u_avx completed in 51.189ms
    u_sse2 completed in 61.843ms
    generic completed in 132.057ms
    a_avx completed in 52.691ms
    a_sse2 completed in 62.014ms
    a_generic completed in 131.672ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_64f_x2_max_64f(131071,1987)
    a_avx completed in 106.701ms
    a_sse2 completed in 106.989ms
    generic completed in 135.455ms
    u_avx completed in 109.491ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_64f_x2_min_64f(131071,1987)
    a_avx completed in 106.158ms
    a_sse2 completed in 107.423ms
    generic completed in 134.936ms
    u_avx completed in 110.514ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_64f_x2_multiply_64f(131071,1987)
    generic completed in 132.508ms
    u_sse2 completed in 103.714ms
    u_avx completed in 108.394ms
    a_sse2 completed in 111.712ms
    a_avx completed in 106.567ms
    Best aligned arch: u_sse2
    Best unaligned arch: u_sse2
    RUN_VOLK_TESTS: volk_64f_x2_add_64f(131071,1987)
    generic completed in 132.714ms
    u_sse2 completed in 113.15ms
    u_avx completed in 104.73ms
    a_sse2 completed in 111.157ms
    a_avx completed in 111.961ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_8ic_deinterleave_16i_x2(131071,1987)
    a_sse4_1 completed in 46.112ms
    a_avx completed in 45.248ms
    generic completed in 324.77ms
    Best aligned arch: a_avx
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_8ic_s32f_deinterleave_32f_x2(131071,1987)
    a_sse4_1 completed in 76.717ms
    a_sse completed in 530.193ms
    a_avx2 completed in 64.934ms
    generic completed in 230.053ms
    Best aligned arch: a_avx2
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_8ic_deinterleave_real_16i(131071,1987)
    a_sse4_1 completed in 20.757ms
    a_avx completed in 25.057ms
    generic completed in 131.251ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_8ic_s32f_deinterleave_real_32f(131071,1987)
    a_avx2 completed in 32.006ms
    a_sse4_1 completed in 37.466ms
    a_sse completed in 461.426ms
    generic completed in 131.542ms
    Best aligned arch: a_avx2
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_8ic_deinterleave_real_8i(131071,1987)
    a_ssse3 completed in 13.523ms
    a_avx completed in 15.179ms
    generic completed in 79.769ms
    Best aligned arch: a_ssse3
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_8ic_x2_multiply_conjugate_16ic(131071,1987)
    a_sse4_1 completed in 147.66ms
    generic completed in 3212.64ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_8ic_x2_s32f_multiply_conjugate_32fc(131071,1987)
    a_sse4_1 completed in 133.461ms
    generic completed in 3059.45ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: generic
    RUN_VOLK_TESTS: volk_8i_convert_16i(131071,1987)
    u_sse4_1 completed in 16.543ms
    generic completed in 131.905ms
    a_sse4_1 completed in 17.098ms
    a_generic completed in 131.494ms
    u_orc completed in 16.297ms
    Best aligned arch: u_orc
    Best unaligned arch: u_orc
    RUN_VOLK_TESTS: volk_8i_s32f_convert_32f(131071,1987)
    u_sse4_1 completed in 32.211ms
    generic completed in 132.918ms
    a_sse4_1 completed in 32.506ms
    a_generic completed in 131.48ms
    u_orc completed in 34.402ms
    Best aligned arch: u_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_TESTS: volk_32fc_s32fc_multiply_32fc(131071,1987)
    u_avx completed in 74.536ms
    u_sse3 completed in 99.938ms
    generic completed in 2249.52ms
    a_avx completed in 75.938ms
    a_sse3 completed in 98.023ms
    a_generic completed in 2240.93ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_s32f_multiply_32f(131071,1987)
    u_sse completed in 38.254ms
    u_avx completed in 37.832ms
    generic completed in 89.401ms
    a_sse completed in 38.195ms
    a_avx completed in 36.697ms
    a_generic completed in 90.615ms
    u_orc completed in 38.957ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_binary_slicer_32i(131071,1987)
    generic completed in 975.823ms
    generic_branchless completed in 117.316ms
    a_sse2 completed in 43.476ms
    a_avx completed in 37.475ms
    u_sse2 completed in 43.54ms
    u_avx completed in 37.802ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_binary_slicer_8i(131071,1987)
    generic completed in 977.055ms
    generic_branchless completed in 101.036ms
    a_avx2 completed in 23.649ms
    u_avx2 completed in 23.582ms
    a_sse2 completed in 34.178ms
    u_sse2 completed in 33.754ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_TESTS: volk_32u_reverse_32u(131071,1987)
    dword_shuffle completed in 3207.75ms
    byte_shuffle completed in 3196.41ms
    lut completed in 347.628ms
    2001magic completed in 523.319ms
    1972magic completed in 1224.87ms
    bintree_permute_top_down completed in 401.169ms
    bintree_permute_bottom_up completed in 396.133ms
    Best aligned arch: lut
    Best unaligned arch: lut
    RUN_VOLK_TESTS: volk_32f_tanh_32f(131071,1987)
    generic completed in 11980ms
    series completed in 443.831ms
    a_sse completed in 106.782ms
    a_avx completed in 47.495ms
    u_sse completed in 88.272ms
    u_avx completed in 49.43ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_32f_s32f_mod_rangepuppet_32f(131071,1987)
    generic completed in 354.086ms
    u_sse completed in 129.682ms
    a_sse completed in 167.888ms
    u_sse2 completed in 128.006ms
    a_sse2 completed in 128.025ms
    u_avx completed in 62.813ms
    a_avx completed in 63.941ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_TESTS: volk_8u_x3_encodepolarpuppet_8u(131071,1987)
    generic completed in 1225.03ms
    u_ssse3 completed in 610.019ms
    a_ssse3 completed in 613.082ms
    Best aligned arch: u_ssse3
    Best unaligned arch: u_ssse3
    RUN_VOLK_TESTS: volk_32f_8u_polarbutterflypuppet_32f(131071,1987)
    generic completed in 34400.3ms
    u_avx completed in 4424.58ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    Writing /home/jsloan/.volk/volk_config...
    
    $ volk_gnsssdr_profile
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8i_accumulator_s8i(8111,100000)
    u_sse3 completed in 53.0106 ms
    generic completed in 270.86 ms
    a_sse3 completed in 86.0487 ms
    a_avx2 completed in 12.8991 ms
    u_avx2 completed in 14.3812 ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8i_index_max_16u(8111,100000)
    u_avx2 completed in 70.7625 ms
    u_avx completed in 123.735 ms
    u_sse4_1 completed in 51.7812 ms
    u_sse2 completed in 69.9719 ms
    generic completed in 513.872 ms
    a_avx2 completed in 71.8707 ms
    a_avx completed in 145.775 ms
    a_sse4_1 completed in 78.226 ms
    a_sse2 completed in 64.1909 ms
    Best aligned arch: u_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8i_max_s8i(8111,100000)
    u_avx2 completed in 9.84599 ms
    u_sse4_1 completed in 39.8525 ms
    u_sse2 completed in 60.3757 ms
    generic completed in 16.8538 ms
    a_sse4_1 completed in 40.5953 ms
    a_avx2 completed in 16.0175 ms
    a_sse2 completed in 58.9583 ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8i_x2_add_8i(8111,100000)
    u_sse2 completed in 31.7662 ms
    u_avx2 completed in 16.215 ms
    generic completed in 26.2311 ms
    a_sse2 completed in 32.2613 ms
    a_avx2 completed in 15.7607 ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8ic_conjugate_8ic(8111,100000)
    u_avx2 completed in 27.3631 ms
    u_avx completed in 40.8147 ms
    u_ssse3 completed in 53.1245 ms
    u_sse3 completed in 62.0722 ms
    generic completed in 66.1403 ms
    a_avx completed in 39.7876 ms
    a_avx2 completed in 29.9022 ms
    a_ssse3 completed in 54.6296 ms
    a_sse3 completed in 60.8377 ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8ic_magnitude_squared_8i(8111,100000)
    u_sse3 completed in 129.403 ms
    generic completed in 84.8299 ms
    a_sse3 completed in 129.603 ms
    Best aligned arch: generic
    Best unaligned arch: generic
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8ic_x2_dot_prod_8ic(8111,1987)
    generic completed in 18.9095 ms
    u_sse2 completed in 2.95647 ms
    u_sse4_1 completed in 2.80962 ms
    a_sse2 completed in 2.88248 ms
    a_sse4_1 completed in 2.75337 ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8ic_x2_multiply_8ic(8111,1987)
    u_sse2 completed in 3.86088 ms
    u_sse4_1 completed in 3.39057 ms
    generic completed in 4.18276 ms
    a_sse2 completed in 3.78288 ms
    a_sse4_1 completed in 3.24759 ms
    Best aligned arch: a_sse4_1
    Best unaligned arch: u_sse4_1
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8ic_s8ic_multiply_8ic(8111,1987)
    u_sse3 completed in 2.62533 ms
    generic completed in 6.10789 ms
    a_sse3 completed in 3.1849 ms
    Best aligned arch: u_sse3
    Best unaligned arch: u_sse3
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_8u_x2_multiply_8u(8111,100000)
    u_avx2 completed in 37.2711 ms
    u_sse3 completed in 69.9773 ms
    generic completed in 40.982 ms
    a_sse3 completed in 66.9902 ms
    a_avx2 completed in 38.4193 ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_64f_accumulator_64f(8111,1987)
    u_avx completed in 4.05106 ms
    u_sse3 completed in 8.1553 ms
    generic completed in 16.3143 ms
    a_avx completed in 4.18466 ms
    a_sse3 completed in 18.4979 ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32f_sincos_32fc(8111,1987)
    u_sse4_1 completed in 56.1577 ms
    a_sse4_1 completed in 55.8844 ms
    a_sse2 completed in 26.9331 ms
    u_sse2 completed in 27.1682 ms
    generic completed in 168.497 ms
    generic_fxpt completed in 102.211 ms
    Best aligned arch: a_sse2
    Best unaligned arch: u_sse2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32f_index_max_32u(8111,1987)
    a_avx completed in 4.16973 ms
    u_avx completed in 4.23856 ms
    a_sse4_1 completed in 11.9277 ms
    u_sse4_1 completed in 12.0242 ms
    a_sse completed in 13.488 ms
    u_sse completed in 13.4486 ms
    generic completed in 16.366 ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32fc_convert_8ic(8111,1987)
    generic completed in 56.7545 ms
    u_avx2 completed in 2.88636 ms
    a_avx2 completed in 3.02048 ms
    u_sse2 completed in 4.85424 ms
    a_sse2 completed in 5.06755 ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32fc_convert_16ic(8111,100000)
    u_sse2 completed in 208.74 ms
    u_sse completed in 207.336 ms
    u_avx2 completed in 128.882 ms
    a_sse2 completed in 208.109 ms
    a_sse completed in 208.296 ms
    a_avx2 completed in 128.693 ms
    generic completed in 2468.27 ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_x2_dot_prod_16ic(8111,1987)
    generic completed in 79.3162 ms
    a_sse2 completed in 5.24886 ms
    u_sse2 completed in 5.2577 ms
    u_axv2 completed in 2.82553 ms
    a_axv2 completed in 2.77969 ms
    Best aligned arch: a_axv2
    Best unaligned arch: u_axv2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_x2_multiply_16ic(8111,100000)
    generic completed in 202.818 ms
    a_sse2 completed in 227.575 ms
    u_sse2 completed in 240.554 ms
    u_avx2 completed in 143.964 ms
    a_avx2 completed in 133.984 ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_convert_32fc(8111,100000)
    generic completed in 254.888 ms
    a_sse2 completed in 723.758 ms
    u_sse2 completed in 720.06 ms
    u_axv completed in 767.063 ms
    a_axv completed in 770.275 ms
    a_avx2 completed in 121.649 ms
    u_avx2 completed in 126.291 ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_conjugate_16ic(8111,100000)
    generic completed in 121.614 ms
    u_ssse3 completed in 90.2621 ms
    a_ssse3 completed in 92.1632 ms
    a_avx2 completed in 69.3886 ms
    u_avx2 completed in 62.1054 ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_s32f_sincospuppet_32fc(8111,1987)
    generic completed in 188.451 ms
    generic_fxpt completed in 112.314 ms
    a_sse2 completed in 26.0501 ms
    u_sse2 completed in 26.0329 ms
    a_avx2 completed in 16.1894 ms
    u_avx2 completed in 16.1738 ms
    Best aligned arch: u_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_rotatorpuppet_16ic(8111,1987)
    generic completed in 540.602 ms
    generic_reload completed in 535.918 ms
    a_sse3 completed in 26.4221 ms
    a_sse3_reload completed in 26.0772 ms
    u_sse3 completed in 25.8071 ms
    u_sse3_reload completed in 26.1967 ms
    Best aligned arch: u_sse3
    Best unaligned arch: u_sse3
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_resamplerfastpuppet_16ic(8111,1987)
    generic completed in 84.3727 ms
    a_sse2 completed in 12.2268 ms
    u_sse2 completed in 13.8878 ms
    Best aligned arch: a_sse2
    Best unaligned arch: u_sse2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_resamplerfastxnpuppet_16ic(8111,1987)
    generic completed in 227.951 ms
    a_sse2 completed in 37.4778 ms
    u_sse2 completed in 52.5338 ms
    Best aligned arch: a_sse2
    Best unaligned arch: u_sse2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_resamplerxnpuppet_16ic(8111,1987)
    generic completed in 184.796 ms
    a_sse3 completed in 74.2703 ms
    u_sse3 completed in 76.0153 ms
    u_sse4_1 completed in 65.5597 ms
    a_sse4_1 completed in 65.7092 ms
    u_avx completed in 61.8378 ms
    a_avx completed in 61.8438 ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16i_resamplerxnpuppet_16i(8111,1987)
    generic completed in 174.689 ms
    a_sse3 completed in 59.1502 ms
    u_sse3 completed in 59.1951 ms
    u_sse4_1 completed in 48.7375 ms
    a_sse4_1 completed in 49.7648 ms
    u_avx completed in 42.0899 ms
    a_avx completed in 42.0742 ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32fc_resamplerxnpuppet_32fc(8111,1987)
    generic completed in 218.508 ms
    a_sse3 completed in 111.791 ms
    u_sse3 completed in 111.629 ms
    u_sse4_1 completed in 101.543 ms
    a_sse4_1 completed in 101.913 ms
    a_avx completed in 96.3962 ms
    u_avx completed in 96.6061 ms
    a_avx2 completed in 96.1122 ms
    u_avx2 completed in 96.2993 ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32f_resamplerxnpuppet_32f(8111,1987)
    generic completed in 174.79 ms
    a_sse3 completed in 60.852 ms
    u_sse3 completed in 60.6562 ms
    u_sse4_1 completed in 51.6194 ms
    a_sse4_1 completed in 50.3257 ms
    a_avx completed in 42.6229 ms
    u_avx completed in 42.7547 ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32f_high_dynamics_resamplerxnpuppet_32f(8111,1987)
    generic completed in 77.6887 ms
    a_sse3 completed in 28.3093 ms
    u_sse3 completed in 28.2016 ms
    u_sse4_1 completed in 24.427 ms
    a_sse4_1 completed in 24.1302 ms
    a_avx completed in 20.5476 ms
    u_avx completed in 20.5139 ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_x2_dotprodxnpuppet_16ic(8111,1987)
    generic completed in 242.12 ms
    generic_sat completed in 293.069 ms
    a_sse2 completed in 19.0557 ms
    u_sse2 completed in 20.3873 ms
    a_avx2 completed in 12.5557 ms
    u_avx2 completed in 14.9728 ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_x2_rotator_dotprodxnpuppet_16ic(8111,1987)
    generic completed in 526.363 ms
    generic_reload completed in 523.544 ms
    a_sse3 completed in 43.6368 ms
    a_sse3_reload completed in 42.0852 ms
    u_sse3 completed in 44.1322 ms
    a_avx2 completed in 35.7593 ms
    a_avx2_reload completed in 37.0412 ms
    u_avx2 completed in 35.9168 ms
    u_avx2_reload completed in 35.2123 ms
    Best aligned arch: u_avx2_reload
    Best unaligned arch: u_avx2_reload
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_16ic_16i_rotator_dotprodxnpuppet_16ic(8111,1987)
    generic completed in 504.722 ms
    generic_reload completed in 475.101 ms
    a_sse3 completed in 31.3427 ms
    u_sse3 completed in 31.2399 ms
    a_avx2 completed in 16.2153 ms
    u_avx2 completed in 16.4736 ms
    Best aligned arch: a_avx2
    Best unaligned arch: u_avx2
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32fc_x2_rotator_dotprodxnpuppet_32fc(8111,1987)
    generic completed in 720.241 ms
    generic_reload completed in 723.512 ms
    u_sse3 completed in 80.5678 ms
    a_sse3 completed in 80.0529 ms
    u_avx completed in 60.766 ms
    a_avx completed in 60.3944 ms
    Best aligned arch: a_avx
    Best unaligned arch: u_avx
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32fc_32f_rotator_dotprodxnpuppet_32fc(8111,1987)
    generic completed in 293.932 ms
    generic_reload completed in 290.089 ms
    u_avx completed in 25.2213 ms
    a_avx completed in 25.3042 ms
    Best aligned arch: u_avx
    Best unaligned arch: u_avx
    RUN_VOLK_GNSSSDR_TESTS: volk_gnsssdr_32fc_32f_high_dynamic_rotator_dotprodxnpuppet_32fc(8111,1987)
    no architectures to test
    Writing /home/jsloan/.volk_gnsssdr/volk_gnsssdr_config ...

    # gnss-sdr --config_file=../../etc/gnss-file.conf
    Initializing GNSS-SDR v0.0.10.git-next-b6f0c92 ... Please wait.
    Logging will be written at "/tmp"
    Use gnss-sdr --log_dir=/path/to/log to change that.
    Processing file /tmp/2013_04_04_GNSS_SIGNAL_at_CTTC_SPAIN/2013_04_04_GNSS_SIGNAL_at_CTTC_SPAIN.dat, which contains 1600000000 [bytes]
    GNSS signal recorded time to be processed: 99.999 [s]
    Starting a TCP/IP server of RTCM messages on port 2101
    The TCP/IP server of RTCM messages is up and running. Accepting connections ...
    Tracking of GPS L1 C/A signal started on channel 0 for satellite GPS PRN 01 (Block IIF)
    Tracking of GPS L1 C/A signal started on channel 3 for satellite GPS PRN 11 (Block IIR)
    Current receiver time: 1 s
    Tracking of GPS L1 C/A signal started on channel 7 for satellite GPS PRN 17 (Block IIR-M)
    Tracking of GPS L1 C/A signal started on channel 4 for satellite GPS PRN 20 (Block IIR)
    Tracking of GPS L1 C/A signal started on channel 6 for satellite GPS PRN 32 (Block IIF)
    Current receiver time: 2 s
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 30 (Block IIF)
    Current receiver time: 3 s
    Loss of lock in channel 2!
    Current receiver time: 4 s
    Current receiver time: 5 s
    Current receiver time: 6 s
    Current receiver time: 7 s
    Current receiver time: 8 s
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 27 (Block IIF)
    Current receiver time: 9 s
    Current receiver time: 10 s
    Current receiver time: 11 s
    Current receiver time: 12 s
    Loss of lock in channel 2!
    Current receiver time: 13 s
    Current receiver time: 14 s
    New GPS NAV message received in channel 3: subframe 1 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 0: subframe 1 from satellite GPS PRN 01 (Block IIF)
    Tracking of GPS L1 C/A signal started on channel 1 for satellite GPS PRN 21 (Block IIR)
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 27 (Block IIF)
    Current receiver time: 15 s
    Current receiver time: 16 s
    Loss of lock in channel 2!
    Current receiver time: 17 s
    Current receiver time: 18 s
    Current receiver time: 19 s
    Current receiver time: 20 s
    New GPS NAV message received in channel 6: subframe 2 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 0: subframe 2 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 4: subframe 2 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 7: subframe 2 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 3: subframe 2 from satellite GPS PRN 11 (Block IIR)
    Current receiver time: 21 s
    Current receiver time: 22 s
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 08 (Block IIF)
    Current receiver time: 23 s
    Loss of lock in channel 2!
    Current receiver time: 24 s
    Current receiver time: 25 s
    Current receiver time: 26 s
    New GPS NAV message received in channel 0: subframe 3 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 6: subframe 3 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 3: subframe 3 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 7: subframe 3 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 4: subframe 3 from satellite GPS PRN 20 (Block IIR)
    Current receiver time: 27 s
    Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN 03 (Block IIF)
    Current receiver time: 28 s
    Current receiver time: 29 s
    Loss of lock in channel 5!
    Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN 08 (Block IIF)
    Current receiver time: 30 s
    Loss of lock in channel 5!
    Current receiver time: 31 s
    Current receiver time: 32 s
    New GPS NAV message received in channel 4: subframe 4 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 6: subframe 4 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 0: subframe 4 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 3: subframe 4 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 7: subframe 4 from satellite GPS PRN 17 (Block IIR-M)
    Current receiver time: 33 s
    Current receiver time: 34 s
    Current receiver time: 35 s
    Current receiver time: 36 s
    Current receiver time: 37 s
    Current receiver time: 38 s
    New GPS NAV message received in channel 4: subframe 5 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 0: subframe 5 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 3: subframe 5 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 6: subframe 5 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 7: subframe 5 from satellite GPS PRN 17 (Block IIR-M)
    Current receiver time: 39 s
    Current receiver time: 40 s
    Current receiver time: 41 s
    Current receiver time: 42 s
    Current receiver time: 43 s
    Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN 09 (Block IIF)
    Current receiver time: 44 s
    New GPS NAV message received in channel 4: subframe 1 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 0: subframe 1 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 6: subframe 1 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 3: subframe 1 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 7: subframe 1 from satellite GPS PRN 17 (Block IIR-M)
    Current receiver time: 45 s
    Current receiver time: 46 s
    Loss of lock in channel 5!
    Current receiver time: 47 s
    Current receiver time: 48 s
    Current receiver time: 49 s
    Current receiver time: 50 s
    New GPS NAV message received in channel 0: subframe 2 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 7: subframe 2 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 4: subframe 2 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 3: subframe 2 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 6: subframe 2 from satellite GPS PRN 32 (Block IIF)
    Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN 26 (Block IIF)
    Current receiver time: 51 s
    Current receiver time: 52 s
    Loss of lock in channel 5!
    Current receiver time: 53 s
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 30 (Block IIF)
    Current receiver time: 54 s
    Loss of lock in channel 2!
    Current receiver time: 55 s
    Current receiver time: 56 s
    New GPS NAV message received in channel 6: subframe 3 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 7: subframe 3 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 3: subframe 3 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 4: subframe 3 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 0: subframe 3 from satellite GPS PRN 01 (Block IIF)
    First position fix at 2013-Apr-04 06:24:02.150000 UTC is Lat = 41.2748 [deg], Long = 1.98762 [deg], Height= 85.4156 [m]
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 30 (Block IIF)
    Current receiver time: 57 s
    Loss of lock in channel 2!
    Current receiver time: 58 s
    Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN 03 (Block IIF)
    Current receiver time: 59 s
    Loss of lock in channel 5!
    Current receiver time: 1 min 0 s
    Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN 03 (Block IIF)
    Current receiver time: 1 min 1 s
    Loss of lock in channel 5!
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 06 (Block IIF)
    Tracking of GPS L1 C/A signal started on channel 5 for satellite GPS PRN 03 (Block IIF)
    Current receiver time: 1 min 2 s
    New GPS NAV message received in channel 7: subframe 4 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 3: subframe 4 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 4: subframe 4 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 0: subframe 4 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 6: subframe 4 from satellite GPS PRN 32 (Block IIF)
    Loss of lock in channel 2!
    Current receiver time: 1 min 3 s
    Current receiver time: 1 min 4 s
    Current receiver time: 1 min 5 s
    Current receiver time: 1 min 6 s
    Current receiver time: 1 min 7 s
    Current receiver time: 1 min 8 s
    New GPS NAV message received in channel 4: subframe 5 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 6: subframe 5 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 7: subframe 5 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 3: subframe 5 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 0: subframe 5 from satellite GPS PRN 01 (Block IIF)
    Current receiver time: 1 min 9 s
    Current receiver time: 1 min 10 s
    Current receiver time: 1 min 11 s
    Current receiver time: 1 min 12 s
    Current receiver time: 1 min 13 s
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 06 (Block IIF)
    Current receiver time: 1 min 14 s
    New GPS NAV message received in channel 7: subframe 1 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 3: subframe 1 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 0: subframe 1 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 6: subframe 1 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 4: subframe 1 from satellite GPS PRN 20 (Block IIR)
    Current receiver time: 1 min 15 s
    Current receiver time: 1 min 16 s
    Loss of lock in channel 2!
    Current receiver time: 1 min 17 s
    Current receiver time: 1 min 18 s
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 24 (Block IIF)
    Current receiver time: 1 min 19 s
    Loss of lock in channel 2!
    Current receiver time: 1 min 20 s
    New GPS NAV message received in channel 0: subframe 2 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 6: subframe 2 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 7: subframe 2 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 3: subframe 2 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 4: subframe 2 from satellite GPS PRN 20 (Block IIR)
    Current receiver time: 1 min 21 s
    Current receiver time: 1 min 22 s
    Current receiver time: 1 min 23 s
    Current receiver time: 1 min 24 s
    Current receiver time: 1 min 25 s
    Current receiver time: 1 min 26 s
    New GPS NAV message received in channel 4: subframe 3 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 3: subframe 3 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 6: subframe 3 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 0: subframe 3 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 7: subframe 3 from satellite GPS PRN 17 (Block IIR-M)
    Current receiver time: 1 min 27 s
    Current receiver time: 1 min 28 s
    Current receiver time: 1 min 29 s
    Current receiver time: 1 min 30 s
    Current receiver time: 1 min 31 s
    Current receiver time: 1 min 32 s
    New GPS NAV message received in channel 3: subframe 4 from satellite GPS PRN 11 (Block IIR)
    New GPS NAV message received in channel 7: subframe 4 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 6: subframe 4 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 4: subframe 4 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 0: subframe 4 from satellite GPS PRN 01 (Block IIF)
    Current receiver time: 1 min 33 s
    Current receiver time: 1 min 34 s
    Current receiver time: 1 min 35 s
    Current receiver time: 1 min 36 s
    Current receiver time: 1 min 37 s
    Tracking of GPS L1 C/A signal started on channel 2 for satellite GPS PRN 27 (Block IIF)
    Current receiver time: 1 min 38 s
    New GPS NAV message received in channel 4: subframe 5 from satellite GPS PRN 20 (Block IIR)
    New GPS NAV message received in channel 0: subframe 5 from satellite GPS PRN 01 (Block IIF)
    New GPS NAV message received in channel 6: subframe 5 from satellite GPS PRN 32 (Block IIF)
    New GPS NAV message received in channel 7: subframe 5 from satellite GPS PRN 17 (Block IIR-M)
    New GPS NAV message received in channel 3: subframe 5 from satellite GPS PRN 11 (Block IIR)
    Loss of lock in channel 2!
    Current receiver time: 1 min 39 s
    Current receiver time: 1 min 40 s
    Stopping GNSS-SDR, please wait!
    Total GNSS-SDR run time: 17.8708 [seconds]
    GNSS-SDR program ended.
    Stopping TCP/IP server on port 2101

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
   
    $ tail -100 /var/log/syslog | grep usb 
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

    # rx_ascii_art_dft --freq 1575420000 --rate 4e6 --gain 40 --bw 4e6 --ref-lvl -30
