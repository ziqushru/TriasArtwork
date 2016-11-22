class CreateChristenings < ActiveRecord::Migration[5.0]
  def change
    create_table :christenings do |t|
      t.string :video_id
      t.string :description

      t.timestamps
    end
  end
end
