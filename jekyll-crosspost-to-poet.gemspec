Gem::Specification.new do |s|
  s.name        = 'jekyll-crosspost-to-poet'
  s.version     = '0.1.0'
  s.date        = '2018-06-13'
  s.summary     = "Crosspost to Po.et Generator for Jekyll"
  s.description = <<-EOF
  This generator stamps entries into the Po.et network. To work, this script requires
  a FROST_TOKEN environment variable.

  The generator will only pick up posts with the following front matter:

  `crosspost_to_poet: true`

  You can control crossposting globally by setting `enabled: true` under the
  `jekyll-crosspost_to_poet` variable in your Jekyll configuration file.
  Setting it to false will skip the processing loop entirely which can be
  useful for local preview builds. In addition, the `author` setting will need to be set.
EOF
  s.authors     = ["Solomon Victorino"]
  s.email       = 'solomonvictorino@gmail.com'
  s.files       = ["lib/jekyll-crosspost-to-poet.rb"]
  s.homepage    = ''
  #s.homepage = 'http://rubygems.org/gems/jekyll-crosspost-to-poet'
  s.license     = 'MIT'

  s.add_runtime_dependency "jekyll", ">= 2.0", "< 4.0"
  s.add_runtime_dependency "json", "~> 2.0"
  s.add_runtime_dependency "http", "~> 2.0"
end