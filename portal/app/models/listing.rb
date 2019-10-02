class Listing < ApplicationRecord
  FIELDS      = %w[ Architecture Biology Business Computer_science Design Electrical_engineering Forensics Geology Health Illustration  ].freeze
  LEVELS      = %w[ Bachelor Master Doctorate ].freeze
  WORK_TYPES  = %w[ Internship Student_assistant Research Thesis Part_time ].freeze
  SALARY_OCCS = %w[ Hour Day Week Month  ].freeze
end
