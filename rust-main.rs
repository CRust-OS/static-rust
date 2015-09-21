// rust-main.rs - a test for using the rust standard library in a statically compiled library

// fn main() {}
#![crate_type="staticlib"]

#[no_mangle]
pub extern fn add(x: i32, y:i32) -> i32 {
    x+y
}

