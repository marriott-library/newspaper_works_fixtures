module NewspaperWorksFixtures
  # module constants:
  GEM_PATH = Gem::Specification.find_by_name("newspaper_works_fixtures").gem_dir

  class Engine < ::Rails::Engine
    isolate_namespace NewspaperWorksFixtures
  end
end