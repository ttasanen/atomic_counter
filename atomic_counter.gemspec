lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "atomic_counter/version"

Gem::Specification.new do |spec|
  spec.name = "atomic_counter"
  spec.version = AtomicCounter::VERSION
  spec.authors = ["Tero Tasanen"]
  spec.email = ["tero.tasanen@gmail.com"]
  spec.summary = "Atomic Counter for Ruby"
  spec.description = "Thread safe Counter for Ruby"
  spec.homepage = "https://github.com/ttasanen/atomic_counter"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/ttasanen/atomic_counter"
    spec.metadata["changelog_uri"] = "https://github.com/ttasanen/"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
