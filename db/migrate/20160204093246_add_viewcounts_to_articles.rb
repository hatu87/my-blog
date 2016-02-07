class AddViewcountsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :view_count, :Integer, :default => 0
  end
end
