class Forthwith < Formula
  desc "Manage Forthwith resources from the command line"
  homepage "https://forthwith.dev"
  version "1.0.3"

  on_macos do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_arm64.tar.gz"
      sha256 "4b8a3d9914e4406daff194a63be6232e7ca4e4a74680b6dd2462f98dcf855ec8"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_darwin_amd64.tar.gz"
      sha256 "85f75df980bc03affc80af848371df1c4373a7acbdc7a596258c0977ad9bb207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_arm64.tar.gz"
      sha256 "ec2324f53cde9c4d73812d12eff6b5fbf8f622f17c2d54a886af21be2df373ac"
    end

    on_intel do
      url "https://github.com/Forthwith-LLC/forthwith-releases/releases/download/v#{version}/forthwith_#{version}_linux_amd64.tar.gz"
      sha256 "30374a1f14c69a9615106f20de43c2b94cf062026a036eeed3d4da32eef4e964"
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
