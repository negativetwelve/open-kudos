class Kudo < ActiveRecord::Base
  belongs_to :page

  def self.to_json(kudos)
    kudos.collect {|kudo| kudo.to_json}
  end

  def to_json
    return {
      
    }
  end

end
