# Newspaper works modules
module NewspaperWorksFixtures
  require 'newspaper_works_fixtures/engine'
  require 'newspaper_works_fixtures/version'
  # returns the full path the the gem installation
  def self.root
    @root ||= File.expand_path(File.dirname(File.dirname(__FILE__)))
  end

  # returns the full path to the fixture files dir
  def self.file_fixtures
    File.join(root, 'spec', 'fixtures', 'files')
  end

  # returns the full path to the NDNP sample batch
  def self.ndnp_sample_batch
    File.join(file_fixtures, 'ndnp', 'batch_test_ver01')
  end
end
