class AddDateTimeToSalesmen < ActiveRecord::Migration
  def change
  	add_column :salesmen, :date, :date
  	add_column :salesmen, :time, :time

  end
end
