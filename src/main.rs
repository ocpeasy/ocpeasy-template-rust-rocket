#![feature(proc_macro_hygiene, decl_macro, never_type)]
#[macro_use] extern crate rocket;

#[cfg(test)] mod tests;

#[get("/")]
fn hello() -> &'static str {
    "Hello, world!"
}

fn main() {
    rocket::ignite()
        .mount("/", routes![hello])
        .launch();
}