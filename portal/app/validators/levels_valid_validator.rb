class LevelsValidValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, array)
      array.each do |value|
        record.errors.add "#{attribute} - #{value}", (options[:message] || "is not a valid value for #{record}.") unless Listing::LEVELS.include?(value)
      end
    end
end
