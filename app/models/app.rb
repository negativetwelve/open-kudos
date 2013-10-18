class App < ActiveRecord::Base
  has_many :pages

  def self.to_json(apps)
    apps.collect {|app| app.to_json}
  end

  def to_json
    return {
      name: name,
      pages: Page.to_json(pages)
    }
  end
end
