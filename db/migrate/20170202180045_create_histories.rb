class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :email
      t.string :url
      t.string :origin_url
      t.string :target_url
      t.string :lang
      t.string :title
      t.string :description
      t.string :image
      t.string :search
      t.datetime :enter_date
      t.datetime :leave_time
      t.float :focus_elasped_time
      t.float :total_elasped_time

      t.timestamps
    end
  end
end
