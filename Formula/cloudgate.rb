class Cloudgate < Formula
  desc "AWS authentication and EKS IP whitelisting CLI toolkit"
  homepage "https://github.com/FathAllaTechOps/cloudgate"
  url "https://github.com/FathAllaTechOps/cloudgate/archive/v3.0.0.tar.gz"
  sha256 "0b8ef20b6d9c0a5fa6c57e8bacc3a28a9c44c1e5f52b1feb0be89ce3af76dbf1"
  version "v3.0.0"

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
