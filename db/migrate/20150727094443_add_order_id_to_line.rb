class AddOrderIdToLine < ActiveRecord::Migration
  def change
    add_column :lines, :item, :string
    update %{
      UPDATE users
      SET string = TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE())
    }
   # add_column :lines, :order_id, :integer
  end
end
