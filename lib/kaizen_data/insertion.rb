module KaizenData::Insertion

  # Constants
  INSERTION_FIELDS = ["table", "csv"]

  def self.insert(args)
    unless valid_args?(args)
      puts "KaizenData: Invalid arguments for insertion. See 'kaizen_data help'"
      exit 1
    end

    input_fields = {}
    args.each do { |field, value| input_fields[field] = value }
    end
    
  end

  private

    def self.valid_args?(args)
      # Check if all fields are present, and no extra fields
      args.map { |arg| arg.split("=")[0] }.sort == INSERTION_FIELDS.sort
    end
end