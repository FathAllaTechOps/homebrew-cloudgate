class AwsEksLogin < Formula
  desc "AWS SSO login and EKS IP whitelisting CLI tools"
  homepage "https://github.com/FathAllaTechOps/aws-eks-login"
  url "https://github.com/FathAllaTechOps/aws-eks-login/archive/v1.3.0.tar.gz"
  sha256 "4b156e21a5cbb3adb7d1599b00a4d4a84e3ab683195e02e5337600c63243a891"
  version "v1.3.0"

  def install
    bin.install "bin/aws-login.sh" => "aws-login"
    bin.install "bin/eks-allowip.sh" => "eks-allowip"
  end

  test do
    system "#{bin}/aws-login", "--help"
    system "#{bin}/eks-allowip", "--help"
  end
end
