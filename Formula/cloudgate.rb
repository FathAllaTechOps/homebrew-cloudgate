class Cloudgate < Formula
  desc "AWS authentication and EKS IP whitelisting CLI toolkit"
  homepage "https://github.com/FathAllaTechOps/cloudgate"
  url "https://github.com/FathAllaTechOps/cloudgate/archive/v2.8.0.tar.gz"
  sha256 "49e2669a2bd5304a5d025db1ec8f4ce1c5193683ef2aa620a756a0fc50f703a9"
  version "v2.8.0"

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
