class AddViewToMemo < ActiveRecord::Migration
  def change
    add_column :memos, :view, :integer
  end
end
