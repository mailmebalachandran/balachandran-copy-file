class BalachandranCopyFile < Formula
    desc "A brief description of your tool"
    homepage "https://github.com/your_username/your_cli_tool"
    url "https://github.com/your_username/your_cli_tool/archive/v1.0.0.tar.gz"
    sha256 "The SHA-256 hash of the tarball"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    end
  
    test do
      assert_match "expected_output", shell_output("#{bin}/your_cli_tool --version")
    end
  end
  