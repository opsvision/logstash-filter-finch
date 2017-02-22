Gem::Specification.new do |s|
  s.name          = 'logstash-filter-finch'
  s.version       = '0.1.0'
  s.licenses      = ['Apache License (2.0)']
  s.summary       = 'TODO: Write a short summary, because Rubygems requires one.'
  s.description   = 'TODO: Write a longer description or delete this line.'
  s.homepage      = 'TODO: Put your plugin''s website or public repo URL here.'
  s.authors       = ['David Ishmael']
  s.email         = 'dishmael@opsvision.com'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_development_dependency 'logstash-devutils'
end
