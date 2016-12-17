OpenSSL for XCode
==========

origin: https://github.com/danielctull/openssl-xcode

usage
-----

1. clone and move repository

    ```
    git clone https://github.com/leico/openssl-xcode
    cd openssl-xcode
    ```
1. move and clone openssl submodule

    ```
    git submodule update --init --recursive
    ```

1. change openssl branch for stable version

    ```
    cd openssl
    git branch -a
      master
      remotes/origin/HEAD -> origin/master
      remotes/origin/OpenSSL-engine-0_9_6-stable
      remotes/origin/OpenSSL-fips-0_9_7-stable
      remotes/origin/OpenSSL-fips-0_9_8-stable
      remotes/origin/OpenSSL-fips-1_2-stable
      remotes/origin/OpenSSL-fips-2_0-dev
      remotes/origin/OpenSSL-fips-2_0-stable
      remotes/origin/OpenSSL-fips2-0_9_7-stable
      remotes/origin/OpenSSL_0_9_6-stable
      remotes/origin/OpenSSL_0_9_7-stable
      remotes/origin/OpenSSL_0_9_8-stable
      remotes/origin/OpenSSL_0_9_8fg-stable
      remotes/origin/OpenSSL_1_0_0-stable
      remotes/origin/OpenSSL_1_0_1-stable
      remotes/origin/OpenSSL_1_0_2-stable
      remotes/origin/OpenSSL_1_1_0-stable
      remotes/origin/SSLeay
      remotes/origin/master
    git checkout -b OpenSSL_1_1_0-stable origin/OpenSSL_1_1_0-stable
    ```

1. openssl configure
    ```
    ./Configure 
      Configuring OpenSSL version 1.1.0c-dev (0x0x10100030L)
      Usage: Configure [no-<cipher> ...] [enable-<cipher> ...] [-Dxxx] [-lxxx] 
      [-Lxxx] [-fxxx] [-Kxxx] [no-hw-xxx|no-hw] [[no-]threads] [[no-]shared] [[no-]zlib|zlib-dynamic] 
      [no-asm] [no-dso] [no-egd] [sctp] [386] [--prefix=DIR] [--openssldir=OPENSSLDIR] [--with-xxx[=vvv]] [--config=FILE] os/compiler[:flags]
      
      pick os/compiler from:
      BS2000-OSD BSD-generic32 BSD-generic64 BSD-ia64 BSD-sparc64 BSD-sparcv8 
      BSD-x86 BSD-x86-elf BSD-x86_64 Cygwin Cygwin-i386 Cygwin-i486 Cygwin-i586 
      Cygwin-i686 Cygwin-x86 Cygwin-x86_64 DJGPP MPE/iX-gcc OS390-Unix QNX6 
      QNX6-i386 UEFI UWIN VC-CE VC-WIN32 VC-WIN64-common VC-WIN64A VC-WIN64A-masm 
      VC-WIN64I VC-noCE-common aix-cc aix-gcc aix64-cc aix64-gcc android 
      android-armeabi android-mips android-x86 android64 android64-aarch64 
      bsdi-elf-gcc cc darwin-i386-cc darwin-ppc-cc darwin64-debug-test-64-clang 
      darwin64-ppc-cc darwin64-x86_64-cc dist gcc haiku-x86 haiku-x86_64 
      hpux-ia64-cc hpux-ia64-gcc hpux-parisc-cc hpux-parisc-gcc hpux-parisc1_1-cc 
      hpux-parisc1_1-gcc hpux64-ia64-cc hpux64-ia64-gcc hpux64-parisc2-cc 
      hpux64-parisc2-gcc hurd-x86 ios-cross ios64-cross iphoneos-cross irix-mips3-cc 
      irix-mips3-gcc irix64-mips4-cc irix64-mips4-gcc linux-aarch64 linux-alpha-gcc 
      linux-aout linux-arm64ilp32 linux-armv4 linux-c64xplus linux-elf 
      linux-generic32 linux-generic64 linux-ia64 linux-mips32 linux-mips64 linux-ppc 
      linux-ppc64 linux-ppc64le linux-sparcv8 linux-sparcv9 linux-x32 linux-x86_64 
      linux-x86_64-clang linux32-s390x linux64-mips64 linux64-s390x linux64-sparcv9 
      mingw mingw64 nextstep nextstep3.3 purify qnx4 sco5-cc sco5-gcc 
      solaris-sparcv7-cc solaris-sparcv7-gcc solaris-sparcv8-cc solaris-sparcv8-gcc 
      solaris-sparcv9-cc solaris-sparcv9-gcc solaris-x86-gcc solaris64-sparcv9-cc 
      solaris64-sparcv9-gcc solaris64-x86_64-cc solaris64-x86_64-gcc tru64-alpha-cc 
      tru64-alpha-gcc uClinux-dist uClinux-dist64 unixware-2.0 unixware-2.1 
      unixware-7 unixware-7-gcc vms-alpha vms-alpha-p32 vms-alpha-p64 vms-ia64 
      vms-ia64-p32 vms-ia64-p64 vos-gcc vxworks-mips vxworks-ppc405 vxworks-ppc60x 
      vxworks-ppc750 vxworks-ppc750-debug vxworks-ppc860 vxworks-ppcgen 
      vxworks-simlinux debug debug-erbridge debug-linux-elf-noefence 
      debug-linux-ia32-aes debug-linux-pentium debug-linux-ppro debug-test-64-clang 

    ./config no-shared zlib
      Operating system: x86_64-apple-darwinDarwin Kernel Version 15.6.0: Thu Sep 1 15:01:16 PDT 2016; root:xnu-3248.60.11~2/RELEASE_X86_64
      WARNING! If you wish to build 32-bit library, then you have to
               invoke 'KERNEL_BITS=32 ./config  no-shared zlib'.
               You have about 5 seconds to press Ctrl-C to abort.
      Configuring for darwin64-x86_64-cc
      Configuring OpenSSL version 1.1.0c-dev (0x0x10100030L)
          no-asan         [default]  OPENSSL_NO_ASAN
          no-crypto-mdebug [default]  OPENSSL_NO_CRYPTO_MDEBUG
          no-crypto-mdebug-backtrace [default]  OPENSSL_NO_CRYPTO_MDEBUG_BACKTRACE
          no-dynamic-engine [forced]  
          no-ec_nistp_64_gcc_128 [default]  OPENSSL_NO_EC_NISTP_64_GCC_128
          no-egd          [default]  OPENSSL_NO_EGD
          no-fuzz-afl     [default]  OPENSSL_NO_FUZZ_AFL
          no-fuzz-libfuzzer [default]  OPENSSL_NO_FUZZ_LIBFUZZER
          no-heartbeats   [default]  OPENSSL_NO_HEARTBEATS
          no-md2          [default]  OPENSSL_NO_MD2 (skip dir)
          no-msan         [default]  OPENSSL_NO_MSAN
          no-rc5          [default]  OPENSSL_NO_RC5 (skip dir)
          no-sctp         [default]  OPENSSL_NO_SCTP
          no-shared       [option]  
          no-ssl-trace    [default]  OPENSSL_NO_SSL_TRACE
          no-ssl3         [default]  OPENSSL_NO_SSL3
          no-ssl3-method  [default]  OPENSSL_NO_SSL3_METHOD
          no-ubsan        [default]  OPENSSL_NO_UBSAN
          no-unit-test    [default]  OPENSSL_NO_UNIT_TEST
          no-weak-ssl-ciphers [default]  OPENSSL_NO_WEAK_SSL_CIPHERS
          no-zlib-dynamic [default] 
      Configuring for darwin64-x86_64-cc
      CC            =cc
      CFLAG         =-O3 -D_REENTRANT -arch x86_64 -DL_ENDIAN -Wall 
      SHARED_CFLAG  =-fPIC
      DEFINES       =ZLIB DSO_DLFCN HAVE_DLFCN_H NDEBUG OPENSSL_THREADS OPENSSL_NO_DYNAMIC_ENGINE OPENSSL_PIC OPENSSL_IA32_SSE2 
                     OPENSSL_BN_ASM_MONT OPENSSL_BN_ASM_MONT5 OPENSSL_BN_ASM_GF2m SHA1_ASM SHA256_ASM SHA512_ASM RC4_ASM MD5_ASM 
                     AES_ASM VPAES_ASM BSAES_ASM GHASH_ASM ECP_NISTZ256_ASM POLY1305_ASM
      LFLAG         =
      PLIB_LFLAG    =-Wl,-search_paths_first
      EX_LIBS       =-lz 
      APPS_OBJ      =
      CPUID_OBJ     =x86_64cpuid.o
      UPLINK_OBJ    =
      BN_ASM        =asm/x86_64-gcc.o x86_64-mont.o x86_64-mont5.o x86_64-gf2m.o rsaz_exp.o rsaz-x86_64.o rsaz-avx2.o
      EC_ASM        =ecp_nistz256.o ecp_nistz256-x86_64.o
      DES_ENC       =des_enc.o fcrypt_b.o
      AES_ENC       =aes-x86_64.o vpaes-x86_64.o bsaes-x86_64.o aesni-x86_64.o aesni-sha1-x86_64.o aesni-sha256-x86_64.o aesni-mb-x86_64.o
      BF_ENC        =bf_enc.o
      CAST_ENC      =c_enc.o
      RC4_ENC       =rc4-x86_64.o rc4-md5-x86_64.o
      RC5_ENC       =rc5_enc.o
      MD5_OBJ_ASM   =md5-x86_64.o
      SHA1_OBJ_ASM  =sha1-x86_64.o sha256-x86_64.o sha512-x86_64.o sha1-mb-x86_64.o sha256-mb-x86_64.o
      RMD160_OBJ_ASM=
      CMLL_ENC      =cmll-x86_64.o cmll_misc.o
      MODES_OBJ     =ghash-x86_64.o aesni-gcm-x86_64.o
      PADLOCK_OBJ   =e_padlock-x86_64.o
      CHACHA_ENC    =chacha-x86_64.o
      POLY1305_OBJ  =poly1305-x86_64.o
      BLAKE2_OBJ    =
      PROCESSOR     =
      RANLIB        =ranlib -c
      ARFLAGS       =
      PERL          =/usr/bin/perl
      
      SIXTY_FOUR_BIT_LONG mode
      
      Configured for darwin64-x86_64-cc.
      ```
