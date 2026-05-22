class AwsEksLogin < Formula
  desc "AWS SSO login and EKS IP whitelisting CLI tools"
  homepage "https://github.com/FathAllaTechOps/aws-eks-login"
  url "https://github.com/FathAllaTechOps/aws-eks-login/archive/v1.1.0.tar.gz"
  sha256 "2f1c5883b00564ce5baf91aa6323011093c625769be2c7fe3dbd78548696af76"
  version "v1.1.0"

  def install
    bin.install "bin/aws-login.sh" => "aws-login"
    bin.install "bin/eks-allowip.sh" => "eks-allowip"
  end

  test do
    system "#{bin}/aws-login", "--help"
    system "#{bin}/eks-allowip", "--help"
  end
end
