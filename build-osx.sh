cd "${SRCROOT}/openssl"

./config "$OPENSSL_XCODE_CONFIGURE_ARGS"
makeOptions="CFLAG=\"-D_DARWIN_C_SOURCE $archFlag $isysroot\" SHARED_LDFLAGS=\"$archFlag -Os\" -j8"

make "$makeOptions" install
