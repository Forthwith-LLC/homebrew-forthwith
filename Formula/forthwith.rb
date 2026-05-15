class Forthwith < Formula
  desc "Manage Forthwith resources from the command line"
  homepage "https://forthwith.dev"
  version "1.0.8"

  on_macos do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_arm64.tar.gz"
      sha256 "b0d0118559e3d5b99f0ec44455cfad828029f564c54f41fa9b40331cf293726c"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_amd64.tar.gz"
      sha256 "ef3a4e4555f612b560af3411242c07023638820af4af0f8fb7b7121394d9905b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_arm64.tar.gz"
      sha256 "a9b351c67bed5d288ba75863d68d63c0c449396e4cab42591a0e1852964fcfe7"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_amd64.tar.gz"
      sha256 "1480928e7a017e2b6663d4af0e1c0b63a04344c05b458e393e9e4dbd99009686"
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
