// rust-main.rs - a test for using the rust standard library in a statically compiled library
#![crate_type="staticlib"]

use std::sync::Mutex;
#[no_mangle]
pub extern fn add(x: i32, y:i32) -> i32 {
    let mut acc = 0;
    let r : Vec<i32> = vec!(1, 2, 3, 4, 5);
    for i in r {
        acc = acc+i;
    };
    let foo = Mutex::new(5);
    let z = foo.lock().unwrap();
    x+y+acc+*z

}

