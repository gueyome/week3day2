require_relative '../lib/trader'

describe "gives the best trading days to buy and sell" do

    it "return day 1 to buy and day 4 to sell" do
        expect(best_trade([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
    end

end


