# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tiny_rack_spellchecker}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Pickett"]
  s.date = %q{2009-05-16}
  s.email = %q{dpickett@enlightsolutions.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "features/spell_checking.feature",
     "features/step_definitions/spell_checking_steps.rb",
     "features/step_definitions/suggest_replacement_steps.rb",
     "features/suggest_replacements.feature",
     "features/support/env.rb",
     "lib/tiny_rack_spellchecker.rb",
     "lib/tiny_rack_spellchecker/rack_application.rb",
     "lib/tiny_rack_spellchecker/request_controller.rb",
     "test/test_helper.rb",
     "test/tiny_rack_spellchecker_test.rb",
     "tiny_rack_spellchecker.gemspec"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/dpickett/tiny_rack_spellchecker}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{A Rack Application that processes tinyMCE spell check requests}
  s.test_files = [
    "test/test_helper.rb",
     "test/tiny_rack_spellchecker_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<raspell>, [">= 1.1"])
      s.add_runtime_dependency(%q<json>, [">= 1.1.4"])
    else
      s.add_dependency(%q<raspell>, [">= 1.1"])
      s.add_dependency(%q<json>, [">= 1.1.4"])
    end
  else
    s.add_dependency(%q<raspell>, [">= 1.1"])
    s.add_dependency(%q<json>, [">= 1.1.4"])
  end
end
