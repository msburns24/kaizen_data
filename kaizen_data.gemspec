# DYNAMIC VERSION
# =================

# Ensure version number is passed in
if ARGV[2].nil?
  puts "KaizenData: Version number is required"
  exit 1
end

Gem::Specification.new do |s|
  s.name        = "kaizen_data"
  s.version     = ARGV[2]
  s.executables << "kzd"
  s.summary     = "Modeling and querying data in Ruby"
  s.description = "A clean way to model and query data in Ruby"
  s.authors     = ["Matt Burns"]
  s.files       = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.homepage    = "https://github.com/msburns24/kaizen_data"
  s.license     = "MIT"
end

# STATIC VERSION
# =================

# Gem::Specification.new do |s|
#   s.name        = "kaizen_data"
#   s.version     = ARGV[2]
#   s.executables << "kzd"
#   s.summary     = "Modeling and querying data in Ruby"
#   s.description = "A clean way to model and query data in Ruby"
#   s.authors     = ["Matt Burns"]
#   s.files       = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
#   s.homepage    = "https://github.com/msburns24/kaizen_data"
#   s.license     = "MIT"
# end