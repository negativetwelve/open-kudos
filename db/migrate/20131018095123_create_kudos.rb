class CreateKudos < ActiveRecord::Migration
  def change
    create_table :kudos do |t|
      t.belongs_to :page

      t.timestamps
    end
  end
end
