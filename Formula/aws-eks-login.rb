class AwsEksLogin < Formula
  desc "AWS SSO login and EKS IP whitelisting CLI tools"
  homepage "https://github.com/FathAllaTechOps/aws-eks-login"
  url "https://github.com/FathAllaTechOps/aws-eks-login/archive/v1.0.0.tar.gz"
  sha256 "placeholder"
  version "v1.0.0"

  def install
    bin.install "bin/aws-login.sh" => "aws-login"
    bin.install "bin/eks-allow.sh" => "eks-allow"
  end

  test do
    system "#{bin}/aws-login", "--help"
    system "#{bin}/eks-allow", "--help"
  end
end
