module ETSource

class Input < ActiveDocument

  attr_accessor :comments, :factor, :id, :label, :label_query, :max_value,
                :max_value_gql, :min_value, :min_value_gql, :query,
                :share_group, :start_value, :start_value_gql, :unit,
                :updateable_period, :default_unit, :dependent_on, :key


  def self.directory_store
    'inputs'
  end

end #class Input

end #module ETSource