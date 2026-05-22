class AwsEksLogin < Formula
  desc "AWS SSO login and EKS IP whitelisting CLI tools"
  homepage "https://github.com/FathAllaTechOps/aws-eks-login"
  url "https://github.com/FathAllaTechOps/aws-eks-login/archive/v1.0.0.tar.gz"
  sha256 "c4e6b7cec83eb50723abf342ab69be7442d9d3d3f33239e9aac7e03eecc67f68"
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
