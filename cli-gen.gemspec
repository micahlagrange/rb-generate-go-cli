Gem::Specification.new do |s|
  s.name        = 'cli-gen'
  s.version     = '0.0.1'
  s.date        = Time.now().strftime('%Y-%m-%d')
  s.summary     = "Cli Generation"
  s.description = "Generates CLIs with go/cobra and full tab completion support."
  s.authors     = ["Micah Turner"]
  s.email       = 'turner.micah@gmail.com'
  s.files       =  Dir.glob('lib/**/*')
  s.homepage    = 'https://github.com/micahlagrage'
  s.license     = 'MIT'
end
