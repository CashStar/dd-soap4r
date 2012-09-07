require 'rake/gempackagetask'
load 'soap4r.gemspec'

task :default => :gem

Rake::GemPackageTask.new(SOAP4R_SPEC) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end
