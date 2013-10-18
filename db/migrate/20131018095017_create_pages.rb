class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :url
      t.belongs_to :app

      t.timestamps
    end
  end
end
