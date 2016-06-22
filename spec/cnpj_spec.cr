require "./spec_helper"

describe CNPJ do
  %w[
    36.542.879/0001-40 14.168.474/0001-51 19.998.518/0001-94 92.771.534/0001-30
    61.338.213/0001-12 70.693.646/0001-87 75.422.321/0001-83 56.347.327/0001-99
    20.672.416/0001-63 34.477.876/0001-45 18.674.628/0001-38 28.507.344/0001-00
    59.782.728/0001-65 58.143.676/0001-14 46.077.038/0001-63 20.532.866/0001-50
  ].each do |str|
    str = str.strip
    it "validates that #{str} is a valid CNPJ" do
      CNPJ.new(str).valid?.should be_true
    end

    it "prettyprints #{str} correctly" do
      CNPJ.new(str).to_s.should eq(str)
    end
  end
end
