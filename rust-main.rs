// kernel.rs - a test for calling a rust program from mini-is

// fn main() {}
#![crate_type="staticlib"]

#[no_mangle]
pub extern fn add(x: i32, y:i32) -> i32 {
    x
}

