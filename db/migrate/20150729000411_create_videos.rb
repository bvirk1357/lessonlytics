class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :external_url
      t.string :internal_resource_path
      t.timestamps
    end
  end
end
