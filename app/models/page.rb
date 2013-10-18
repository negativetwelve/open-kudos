class Page < ActiveRecord::Base
  has_many :kudos
  belongs_to :app

  def self.to_json(pages)
    pages.collect {|page| page.to_json}
  end

  def to_json
    return {
      url: url,
      kudos: Kudo.to_json(kudos)
    }
  end

  def num_kudos
    kudos.length
  end

end
