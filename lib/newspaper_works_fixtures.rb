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
  def self.ndnp_chronam_batch
    File.join(file_fixtures, 'ndnp', 'batch_test_ver01')
  end

  # returns the full path to the NDNP local batch
  def self.ndnp_local_batch
    File.join(file_fixtures, 'ndnp', 'batch_local')
  end

  # returns the full path to the Beaver County News batch
  def self.article_segmented_beaver_county_news_batch
    File.join(file_fixtures, 'article-segmented', 'batch_beaver_county_news')
  end

  # returns the full path to the Deseret News batch
  def self.article_segmented_deseret_news_batch
    File.join(file_fixtures, 'article-segmented', 'batch_deseret_news')
  end
end
