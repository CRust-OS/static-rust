filename := rust-main.rs
rslib_output = librust_main.a
output := hello

rslibs := "-l /usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/libstd-10cbabc2.rlib"
rslibs += "-l /usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcollections-10cbabc2.rlib"
rslibs += "-l /usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/librustc_unicode-10cbabc2.rlib"
rslibs += "-l /usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/librand-10cbabc2.rlib"
rslibs += "-l /usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/liballoc-10cbabc2.rlib"
rslibs += "-l /usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/liballoc_jemalloc-10cbabc2.rlib"
rslibs += "-l /usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/liblibc-10cbabc2.rlib"
rslibs += "-l /usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcore-10cbabc2.rlib"


ldlibs := 

Zflags := -Z no-landing-pads

clibs := -ldl -lpthread -lgcc_eh -lrt -lc -lm 
#clibs += "-L /usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcompiler-rt.a"

target:
	rustc $(Zflags) $(filename) -o $(rslib_output)
	gcc test.c $(rslib_output) -o $(output) $(clibs) $(ldlibs)

