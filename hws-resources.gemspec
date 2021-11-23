# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'hws-resources'
  spec.version       = '0.1.0'
  spec.authors       = ['Hypto Engineering Team']
  spec.email         = ['engineering@hypto.in']

  spec.summary       = 'Experimental resource primitive'
  spec.description   = 'Experimental resource primitive'
  spec.homepage      = 'https://github.com/hwslabs/hws-resources-ruby'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.5.0'

  # spec.metadata['allowed_push_host'] = 'TODO: Set to https://mygemserver.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/hwslabs/hws-resources-ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/hwslabs/hws-resources-ruby/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'json_schemer', '0.2.16'
  spec.add_dependency 'lsuuid', '0.1.0'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
