class AddFieldsToListing < ActiveRecord::Migration[5.2]
  def change
	  add_column :listings, :fields, :string
	  add_column :listings, :levels, :string
	  add_column :listings, :work_types, :string
	  add_column :listings, :locations, :string
	  add_column :listings, :shifts, :string
	  add_column :listings, :logo_loc, :string
	  add_column :listings, :logo_dsc, :string

  end
end
