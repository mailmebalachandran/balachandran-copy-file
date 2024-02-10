use std::fs;
use std::io;
use clap::Parser;

#[derive(Parser)]
struct Cli {
    sourcePath: std::path::PathBuf,
    destinationPath: std::path::PathBuf,
}


fn main() -> io::Result<()> {
    // Specify the source and destination file paths
    let args = Cli::parse();
    let source_path = args.sourcePath;
    let destination_path = args.destinationPath;

    // Attempt to copy the file
    match fs::copy(source_path, destination_path) {
        Ok(_) => {
            println!("File copied successfully!");
            Ok(())
        }
        Err(e) => {
            eprintln!("Error copying file: {}", e);
            Err(e)
        }
    }
}