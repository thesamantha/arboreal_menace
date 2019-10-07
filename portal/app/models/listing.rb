class Listing < ApplicationRecord
  include ActiveModel::Validations

  FIELDS      = %w[ Architecture Biology Business Computer_science Design Electrical_engineering Forensics Geology Health Illustration  ].freeze
  LEVELS      = %w[ Bachelor Master Doctorate ].freeze
  WORK_TYPES  = %w[ Internship Student_assistant Research Thesis Part_time ].freeze
  SALARY_OCCS = %w[ Hour Day Week Month  ].freeze

  validates :fields, :presence => true, :fields_valid => true
  validates :levels, :presence => true, :levels_valid => true
  validates :work_types, :presence => true, :work_types_valid => true
  validates :salary_occs, :presence => true, :salary_occs_valid => true
end
