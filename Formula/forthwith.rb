class Forthwith < Formula
  desc "Manage Forthwith resources from the command line"
  homepage "https://forthwith.dev"
  version "1.0.6"

  on_macos do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_arm64.tar.gz"
      sha256 "6e489a393bc16cabe0423cd14896774fd1bd840453f1bf4b78249bd57b79185c"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_amd64.tar.gz"
      sha256 "d82adc4b78b330abbfad6953d25018bd3b6a7323b2380468c2080d8259937568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_arm64.tar.gz"
      sha256 "73887d4d686ad1a3382dc6a14025703c723a6b1a66a47095cce62bae4bbf5b51"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_amd64.tar.gz"
      sha256 "67bca4448f1d5d2efa43ee060afb89ff483aa1bb5429b8ae9757dbd10f7bdfc9"
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
