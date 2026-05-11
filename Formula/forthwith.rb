class Forthwith < Formula
  desc "Manage Forthwith resources from the command line"
  homepage "https://forthwith.dev"
  version "1.0.7"

  on_macos do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_arm64.tar.gz"
      sha256 "cd982b53a9dd776c488047a0bab8f75d9850f62650d016eb32f75d318889cebf"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_amd64.tar.gz"
      sha256 "95d1d66c15c321600894eb399534d743bd6440109ab91900d9f7d06d3c5590d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_arm64.tar.gz"
      sha256 "93a03b0f90f3ed9e25bbc6c1be6a8b069d1edf7f63125b30d6d5384153894ad8"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_amd64.tar.gz"
      sha256 "c4542e6bc316d98dfeaa85188dd122aab1a32945d123ff749c24968591d445cb"
    end
  end

  def install
    bin.install "forthwith"
    prefix.install_metafiles
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forthwith --version")
  end
end
