fn main() {
    match git2::Repository::open_from_env() {
        Ok(_) => println!("Hello World"),
        Err(err) => eprintln!("error: {err:?}"),
    };
}
