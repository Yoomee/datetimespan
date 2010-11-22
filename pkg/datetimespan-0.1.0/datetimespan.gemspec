# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{datetimespan}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Si Wilkins"]
  s.date = %q{2010-11-22}
  s.description = %q{Render a date/time span according to an strftime pattern. Only works with sensibly ordered date-formats (so not US!)}
  s.email = %q{si@yoomee.com}
  s.extra_rdoc_files = ["lib/datetimespan.rb"]
  s.files = ["Rakefile", "lib/datetimespan.rb", "Manifest", "datetimespan.gemspec"]
  s.homepage = %q{http://github.com/Yoomee/datetimespan}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Datetimespan"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{datetimespan}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Render a date/time span according to an strftime pattern. Only works with sensibly ordered date-formats (so not US!)}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
