class CreateHowtos < ActiveRecord::Migration[6.1]
  def change
    create_table :howtos do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :content, null: false

      t.timestamps
    end
  end
end
