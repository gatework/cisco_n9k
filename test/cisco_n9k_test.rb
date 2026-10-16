# frozen_string_literal: true

require "minitest/autorun"
require "cisco_n9k"

class CiscoN9KTest < Minitest::Test
  def test_version_matches_gemspec
    spec = Gem::Specification.load(File.expand_path("../cisco_n9k.gemspec", __dir__))
    assert_equal CiscoN9K::VERSION, spec.version.to_s
    assert_equal "cisco_n9k", spec.name
  end

  def test_errors_can_be_rescued_as_standard_errors
    assert_operator CiscoN9K::Error, :<, StandardError
  end

  def test_package_contains_only_library_and_documentation
    spec = Gem::Specification.load(File.expand_path("../cisco_n9k.gemspec", __dir__))
    assert_equal %w[CHANGELOG.md LICENSE README.md lib/cisco_n9k.rb lib/cisco_n9k/version.rb], spec.files.sort
  end
end
