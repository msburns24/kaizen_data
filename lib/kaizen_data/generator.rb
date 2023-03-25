module KaizenData::Generator
  def self.generate(args)
    puts "Generating..."
    case args[0]
    when "insertion"
      KaizenData::Insertion.insert(args[1..])
    else
      puts "KaizenData: '#{args[0]}' is not a kaizen_data generator. See 'kaizen_data help'"
      exit 1
    end
  end
end