class Cloudgate < Formula
  desc "AWS authentication and EKS IP whitelisting CLI toolkit"
  homepage "https://github.com/FathAllaTechOps/cloudgate"
  url "https://github.com/FathAllaTechOps/cloudgate/archive/v2.2.0.tar.gz"
  sha256 "3327ec53d038baf83d7a51cd76d2ea6190318d076d48eb77d70e2d77ea49d3f2"
  version "v2.2.0"

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
