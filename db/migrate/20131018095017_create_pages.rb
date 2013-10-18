class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :url
      t.belongs_to :app
      t.integer :kudos, default: 0

      t.timestamps
    end
  end
end
