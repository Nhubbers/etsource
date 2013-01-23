require 'rubel'

module ETSource

  class Runtime < ::Rubel::Base

    attr_reader :dataset

    # Creates a new runtime in the +context+ of a dataset.
    def initialize(dataset)
      @dataset = dataset
      super()
    end

    def energy_balance
      dataset.energy_balance
    end

    # ------------------ QUERY FUNCTIONS -------------------------------------

    # takes a value from the EnergyBalance for the current Dataset.
    def EB(use, carrier)
      energy_balance.get(use, carrier)
    end

    # Gets a property from the current Area.
    def AREA(property)
      dataset.send(property)
    end

  end

end