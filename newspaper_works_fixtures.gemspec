$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# version updated in one place:
require 'newspaper_works_fixtures/version'

# Gem description:
Gem::Specification.new do |spec|
  spec.name        = 'newspaper_works_fixtures'
  spec.version     = NewspaperWorksFixtures::VERSION
  spec.authors     = ['Sean Upton', 'Jacob Reed', 'Brian McBride',
                      'Eben English']
  spec.email       = ['sean.upton@utah.edu', 'jacob.reed@utah.edu',
                      'brian.mcbride@utah.edu', 'eenglish@bpl.org']
  spec.homepage    = 'https://github.com/marriott-library/newspaper_works_fixtures'
  spec.description = 'Gem/Engine containing fixture files for NewspaperWorks'
  spec.summary     = <<-SUMMARY
  newspaper_works_fixtures is a Rails Engine gem providing file fixtures
  for testing ingest workflows of historic newspaper content.
  SUMMARY
  spec.license = 'Apache-2.0'
  spec.files = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.add_dependency 'rails', '~> 5.0'
end
