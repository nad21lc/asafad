class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, index:true
      t.text :description, index: { unique: true, name: 'unique_description' }

      t.timestamps
    end
  end
end
