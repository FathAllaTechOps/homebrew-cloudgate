class Cloudgate < Formula
  desc "AWS authentication and EKS IP whitelisting CLI toolkit"
  homepage "https://github.com/FathAllaTechOps/cloudgate"
  url "https://github.com/FathAllaTechOps/cloudgate/archive/v2.9.0.tar.gz"
  sha256 "d8a3ca457c2ac6d05131e78a38d3ba916213fbd1147da9a6e9c748f67a806ec2"
  version "v2.9.0"

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
