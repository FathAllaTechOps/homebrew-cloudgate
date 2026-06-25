class Cloudgate < Formula
  desc "AWS authentication and EKS IP whitelisting CLI toolkit"
  homepage "https://github.com/FathAllaTechOps/cloudgate"
  url "https://github.com/FathAllaTechOps/cloudgate/archive/v2.1.0.tar.gz"
  sha256 "7ec1db8a23f6eb6d74d9da5c076700ebd0205fb324e589f6ac88ca097048e9c5"
  version "v2.1.0"

  def install
    bin.install "bin/aws-login.sh" => "aws-login"
    bin.install "bin/eks-allowip.sh" => "eks-allowip"
    bin.install "bin/cloudgate.sh" => "cloudgate"
  end

  test do
    system "#{bin}/cloudgate", "--help"
    system "#{bin}/aws-login", "--help"
    system "#{bin}/eks-allowip", "--help"
  end
end
