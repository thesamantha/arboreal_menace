class WorkTypesValidValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, array)
      array.each do |value|
        record.errors.add "#{attribute} - #{value}", (options[:message] || "is not a valid value for #{record}.") unless Listing::WORK_TYPES.include?(value)
      end
    end
end
