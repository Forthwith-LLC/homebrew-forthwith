class Forthwith < Formula
  desc "Manage Forthwith resources from the command line"
  homepage "https://forthwith.dev"
  version "1.0.5"

  on_macos do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_arm64.tar.gz"
      sha256 "c75566abff0d7ceb7efb087e74a9be5006c1e03399287438eed0fb9215dcc2d5"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_amd64.tar.gz"
      sha256 "b7deabc50901bddad4cc10f8e1b43594ac10e855db044d3181a5f40b92cbce11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_arm64.tar.gz"
      sha256 "c1cadc2281eae64a7e7aa0208ebab58483169d401efe7e8c39f5013c070e1f75"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_amd64.tar.gz"
      sha256 "c63fbb2735683301dfc9381338a9e4bdb14d9305d0500f4c7e803bf28eeb1166"
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
