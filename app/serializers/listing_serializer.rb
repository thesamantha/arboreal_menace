class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :fields, :levels, :work_types, :locations, :shifts, :logo_loc, :logo_dsc
end
