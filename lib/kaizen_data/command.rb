module KaizenData::Command
  def self.execute(args)
    argv_original = ARGV.dup
    command = args.shift

    # Check for colon commands
    # (db:schema, db:seed, etc.)
    command = command.split(":")[0] if command.include?(":")

    case command
    when "db"
      KaizenData::DB.execute argv_original
    when "g", "generate"
      KaizenData::Generator.generate(ARGV)
    when "install"
      KaizenData::Install.install(ARGV)
    else
      puts "KaizenData: '#{command}' is not a KaizenData command. See 'kzd help'"
    end
  end

  def self.help
    puts "KaizenData Help to be written"
  end
end