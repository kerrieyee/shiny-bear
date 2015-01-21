class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :url
      t.string :caption, limit: 300
      t.references :user, index: true
    end
  end
end
