require 'spec_helper'

module ETSource; describe Dataset do

  before(:each) do
    copy_fixtures_to_tmp
    stub_const("ETSource::Dataset::DIRECTORY",
               "tmp/fixtures/#{Dataset::DIRECTORY}")
    stub_const("ETSource::EnergyBalance::DIRECTORY",
               "tmp/fixtures/#{EnergyBalance::DIRECTORY}")
  end

  describe "#new" do

    it "sets key" do
      dataset = Dataset.new(:nl)
      expect(dataset.key).to eql "nl"
    end

  end # describe #new

  describe "#find" do

    it "finds the Dutch dataset from file" do
      dataset = Dataset.find(:nl)
      expect(dataset).to be_a(Dataset)
      expect(dataset.key).to eql 'nl'
    end

    it "finds the UK dataset from file" do
      dataset = Dataset.find(:uk)
      expect(dataset).to be_a(Dataset)
      expect(dataset.key).to eql 'uk'
    end

  end # describe #load

  describe "#dataset" do

    it "has a dataset" do
      dataset = Dataset.find(:nl)
      expect(dataset.energy_balance).to be_a(EnergyBalance)
    end

  end

end ; end
