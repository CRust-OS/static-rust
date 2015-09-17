filename := rust-main.rs

rslibs := "/usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/libstd-10cbabc2.rlib"
rslibs += "/usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcollections-10cbabc2.rlib"
rslibs += "/usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/librustc_unicode-10cbabc2.rlib"
rslibs += "/usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/librand-10cbabc2.rlib"
rslibs += "/usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/liballoc-10cbabc2.rlib"
rslibs += "/usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/liballoc_jemalloc-10cbabc2.rlib"
rslibs += "/usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/liblibc-10cbabc2.rlib"
rslibs += "/usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcore-10cbabc2.rlib"

Zflags := -Z no-landing-pads

clibs := -ldl -lpthread -lgcc_eh -lrt -lc -lm 

output := hello

target:
	rustc $(Zflags) --crate-type staticlib --emit obj $(filename)
	gcc -static -static-libgcc test.c rust-main.o $(rslibs) $(clibs) -o $(output)

