require './main'

describe '#caesar_cipher' do 
    it "outputs the modified string" do 
        expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end
end