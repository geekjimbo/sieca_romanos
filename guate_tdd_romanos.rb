require './guate_romanos'

describe "convertir de aragibos a romanos" do

  {
    0 => "",
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    6 => "VI"
  }.each_pair do |arabigo, romano|
    it "#{arabigo} se representa con #{romano}" do
      expect( convert(arabigo) ).to eq(romano)
    end
  end
end
