module KaizenData::NumberFormat
  def self.with_delimiter(number, **options)
    # Handle incorrect input
    unless options[:delimiter]
      puts "KaizenData: No delimiter specified for number formatting. See 'kaizen_data help'"
      exit 1
    end

    # Convert to string with correct decimal places
    number = options[:decimals] ? number.round(options[:decimals]).to_s : number.round().to_s

    # Pull off decimal value
    left_of_decimal = number.split(".")[0]
    right_of_decimal = number.split(".")[1]

    # Add delimiter & return
    left_of_decimal = left_of_decimal.reverse.gsub(/...(?=.)/,"\&#{options[:delimiter]}").reverse
    return right_of_decimal ? "#{left_of_decimal}.#{right_of_decimal}" : left_of_decimal
  end
end