class BalachandranCopyFile < Formula
    desc "Copy from one file from one place to another place"
    homepage "https://github.com/mailmebalachandran/homebrew-balachandran-copy-file"
    url "https://github.com/mailmebalachandran/homebrew-balachandran-copy-file/archive/v1.0.0.tar.gz"
    sha256 "bd87d639c3937cc5355a600c20e8195a7e52772d334ff8cdd47bbe7f9345f436"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    end
  
    test do
      assert_match "expected_output", shell_output("#{bin}/balachandran-copy-file --version")
    end
  end
  