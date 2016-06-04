class AddDateTimeUrlTelephoneToSalesmen < ActiveRecord::Migration
  def change
  	add_column :salesmen, :date, :date_select
  	add_column :salesmen, :time, :datetime_select
  	add_column :salesmen, :date_html5, :date_field
  	add_column :salesmen, :time_html5, :datetime_field
  	add_column :salesmen, :url, :url_field
  	add_column :salesmen, :mobie, :telephone_field
  end
end
