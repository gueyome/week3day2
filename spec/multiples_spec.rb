require_relative '../lib/multiples'

describe "sum calculation of numbers multiple of 3 and 5" do

    describe "is a number 3 or 5 multiple" do
        it "should return TRUE" do
            expect(is_multiple_of_3_or_5?(3)).to eq(true)
            expect(is_multiple_of_3_or_5?(25)).to eq(true)
        end
    
        it "should return FALSE" do
            expect(is_multiple_of_3_or_5?(23)).to eq(false)
        end
    end

    describe "sum of numbers 3 or 5 multiple" do
        it "sums numbers untill 9" do
            expect(sum_of_3_or_5_multiples(9)).to eq(23)
        end
        it "sums numbers untill 13" do
            expect(sum_of_3_or_5_multiples(13)).to eq(45)
        end
    end
end

