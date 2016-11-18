require 'spec_helper.rb'

describe DateConverter do

  describe "#verbal_date_to_numeric" do
    let(:input) { 'November 17, 2016' }
    let(:output) { DateConverter.verbal_date_to_numeric(input,"-") }

    it 'Converts verbal date to numeric' do
      expect(output).to eq "17-11-2016"
    end
  end
end
