# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lightning}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gabriel Horner"]
  s.date = %q{2009-02-09}
  s.description = %q{Path completions for your shell that will let you navigate like lightning.}
  s.email = %q{gabriel.horner@gmail.com}
  s.executables = ["lightning-complete", "lightning-full_path", "lightning-install"]
  s.extra_rdoc_files = ["README.markdown", "LICENSE.txt"]
  s.files = ["Rakefile", "VERSION.yml", "lightning_completions.example", "lightning.yml.example", "README.markdown", "LICENSE.txt", "bin/lightning", "bin/lightning-complete", "bin/lightning-full_path", "bin/lightning-install", "lib/lightning", "lib/lightning/bolt.rb", "lib/lightning/bolts.rb", "lib/lightning/completion.rb", "lib/lightning/completion_map.rb", "lib/lightning/config.rb", "lib/lightning/generator.rb", "lib/lightning/task.rb", "lib/lightning.rb", "test/bolt_test.rb", "test/completion_map_test.rb", "test/completion_test.rb", "test/config_test.rb", "test/lightning.yml", "test/lightning_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/cldwalker/lightning}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Path completions for your shell that will let you navigate like lightning.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
  end
end
