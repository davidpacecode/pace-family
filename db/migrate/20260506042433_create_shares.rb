class CreateShares < ActiveRecord::Migration[8.1]
  def change
    create_table :shares do |t|
      t.string :title
      t.string :headline
      t.string :tags
      t.integer :audience

      t.timestamps
    end
  end
end
