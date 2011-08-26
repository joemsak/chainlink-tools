class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.string :name
      t.string :website
      t.date :starts
      t.date :ends
      t.boolean :paid
      t.timestamps
    end
  end
end
