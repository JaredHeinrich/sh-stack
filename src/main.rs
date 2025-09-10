use std::process;

fn main() {
    println!("Stack is stacking!");
    println!("Hier wird später der Stack durchgeführt!");
    exit_with("Ein fehler ist aufgetreten");
}

fn exit_with(error_message: &str) {
    // Farbe anpassen
    println!("{error_message}");
    process::exit(1);
}
