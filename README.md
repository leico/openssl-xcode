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
