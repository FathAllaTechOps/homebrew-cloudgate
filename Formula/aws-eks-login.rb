class AwsEksLogin < Formula
  desc "AWS SSO login and EKS IP whitelisting CLI tools"
  homepage "https://github.com/FathAllaTechOps/aws-eks-login"
  url "https://github.com/FathAllaTechOps/aws-eks-login/archive/v2.0.0.tar.gz"
  sha256 "6767d78fed27512339f3d7cc4880cc8b838422772a5990a7de6b646aa9eb4c00"
  version "v2.0.0"

  def install
    bin.install "bin/aws-login.sh" => "aws-login"
    bin.install "bin/eks-allowip.sh" => "eks-allowip"
    bin.install "bin/cloudgate.sh" => "cloudgate"
  end

  test do
    system "#{bin}/aws-login", "--help"
    system "#{bin}/eks-allowip", "--help"
    system "#{bin}/cloudgate", "--help"
  end
end
