require_relative '../lib/caesar_cipher'


describe "respects cesar alphabet" do
    it "return to A if ending alphabet" do
        expect(caesar_cipher("Zlatan",5)).to eq("Eqfyfs")
    end

    it "doesn't change the &#etc numbers and spaces" do
        expect(caesar_cipher("Z#9latan",5)).to eq("E#9qfyfs")
    end
end

