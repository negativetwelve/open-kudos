class Page < ActiveRecord::Base
  belongs_to :app

  def self.to_json(pages)
    pages.collect {|page| page.to_json}
  end

  def to_json
    return {
      url: url,
      kudos: num_kudos
    }
  end

  def num_kudos
    kudos
  end

end
