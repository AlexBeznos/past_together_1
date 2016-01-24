class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :no_pasted_images ,array: true 
    end
  end
end
