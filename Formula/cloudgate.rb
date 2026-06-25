class Cloudgate < Formula
  desc "AWS authentication and EKS IP whitelisting CLI toolkit"
  homepage "https://github.com/FathAllaTechOps/cloudgate"
  url "https://github.com/FathAllaTechOps/cloudgate/archive/v2.3.0.tar.gz"
  sha256 "8a2d3d709f1f13d6ea084cd6f78b6c4f1904896ade4da181c227a711f6a852fa"
  version "v2.3.0"

  def install
    bin.install "bin/cloudgate.sh" => "cloudgate"
    bin.install "bin/cloudgate-saml.sh" => "cloudgate-saml"
    bin.install "bin/eks-allowip.sh" => "eks-allowip"
  end

  test do
    system "#{bin}/cloudgate", "--help"
    system "#{bin}/cloudgate-saml", "--help"
    system "#{bin}/eks-allowip", "--help"
  end
end
