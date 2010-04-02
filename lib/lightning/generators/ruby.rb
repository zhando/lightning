module Lightning::Generators
  desc "Directories of gems"
  def gem
    { :globs=>`gem environment path`.chomp.split(":").map {|e| e +"/gems/*" } }
  end

  desc "System ruby files"
  def ruby
    { :globs=>system_ruby.map {|e| e +"/**/*.{rb,bundle,so,c}"} }
  end

  desc "*ALL* local ruby files in a ruby project. Careful where you do this."
  def local_ruby
    { :globs=>["**/*.rb", "bin/*"] }
  end

  desc "Test or spec files in a ruby project"
  def test_ruby
    { :globs=>['{spec,test}/**/*_{test,spec}.rb', '{spec,test}/**/{test,spec}_*.rb', 'spec/**/*.spec'] }
  end

  private
  def system_ruby
    require 'rbconfig'
    [RbConfig::CONFIG['rubylibdir'], RbConfig::CONFIG['sitelibdir']].compact.uniq
  end
end