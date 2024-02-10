class BalachandranCopyFile < Formula
    desc "Copy from one file from one place to another place"
    homepage "https://github.com/mailmebalachandran/balachandran-copy-file"
    url "https://github.com/mailmebalchandran/balachandran-copy-file/archive/v1.0.0.tar.gz"
    sha256 "TSample Test for Balachandran"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    end
  
    test do
      assert_match "expected_output", shell_output("#{bin}/balachandran-copy-file --version")
    end
  end
  