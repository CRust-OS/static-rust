Static Rust Library
===================

This is documenting my attempts to make a static library in rust. There are various examples online for making static programs in rust, but I figured a code example would help.

To determine the the rust library dependencies, I used the following:

    rustc -Z print-link-args cp-rust-main.rs | sed 's/ /\n/g' | grep ".rlib"

This needed me to add `fn main() {}` to the library code.
