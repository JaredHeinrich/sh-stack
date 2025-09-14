use std::{thread, time::Duration, io::{self, Write}};

fn main() {
    println!("Willkommen zum Beispiel-Installationsprogramm!");
    println!("Initialisiere...\n");
    thread::sleep(Duration::from_secs(1));

    let steps = vec![
        "Lade Komponenten herunter",
        "Entpacke Dateien",
        "Installiere Abhängigkeiten",
        "Konfiguriere System",
        "Bereinige temporäre Dateien",
        "Abschließen",
    ];

    for (i, step) in steps.iter().enumerate() {
        print!("Schritt {} von {}: {}... ", i + 1, steps.len(), step);
        io::stdout().flush().unwrap(); // Stelle sicher, dass die Zeile direkt ausgegeben wird

        simulate_work();

        println!("✔");
    }

    println!("\nInstallation erfolgreich abgeschlossen!");
}

fn simulate_work() {
    let bar_length = 20;
    for i in 0..=bar_length {
        let percent = (i as f32 / bar_length as f32) * 100.0;
        print!("\r[{:3.0}%] [{}>{}]",
            percent,
            "=".repeat(i),
            " ".repeat(bar_length - i)
        );
        io::stdout().flush().unwrap();
        thread::sleep(Duration::from_millis(100));
    }
    println!();
}
