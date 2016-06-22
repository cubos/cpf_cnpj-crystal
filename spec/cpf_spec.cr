require "./spec_helper"

describe CPF do
  %w[
    728.866.950-50 971.854.577-85 750.544.936-20 776.061.012-21 268.353.047-15
    348.542.736-58 674.550.200-31 626.781.213-80 074.670.678-28 863.301.512-96
    581.970.428-29 587.123.329-50 388.329.721-66 235.235.446-37 750.868.704-37
    507.451.798-27 479.860.044-01 152.217.431-16 595.698.291-84 173.408.333-66
  ].each do |str|
    str = str.strip
    it "validates that #{str} is a valid CPF" do
      CPF.new(str).valid?.should be_true
    end

    it "prettyprints #{str} correctly" do
      CPF.new(str).to_s.should eq(str)
    end
  end
end
