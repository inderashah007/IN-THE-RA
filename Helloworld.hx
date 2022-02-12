% cat hola.gemspec
Gem::Specification.new do |s|
  s.name        = 'hola'
  s.version     = '0.0.0'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Nick Quaranto"]
  s.email       = 'nick@quaran.to'
  s.files       = ["lib/hola.rb"]
  s.homepage    =
    'https://rubygems.org/gems/hola'
  s.license       = 'MIT'
end


$ curl -inderashah007 https://rubygems.org/api/v1/api_key.yaml >
~/.gem/credentials; chmod 0600 ~/.gem/credentials

Enter host password for user 'qrush':




% cat lib/hola.rb
class Hola
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

class Hola::Translator
  def initialize(language)
    @language = language
  end

  def hi
    case @language
    when "spanish"
      "hola mundo"
    else
      "hello world"
    end
  end
end




% cat lib/hola/translator.rb
class Hola::Translator
  def initialize(language)
    @language = language
  end

  def hi
    case @language
    when "spanish"
      "hola mundo"
    else
      "hello world"
    end
  end
end



% cat lib/hola.rb
class Hola
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

require 'hola/translator'




% cat hola.gemspec
Gem::Specification.new do |s|
...
s.files       = ["lib/hola.rb", "lib/hola/translator.rb"]
...
end


% curl -s http://jsonip.com/ | \
  prettify_json.rb
{
  "ip": "24.60.248.134"
}


% mkdir bin
% touch bin/hola
% chmod a+x bin/hola



% cat bin/hola
#!/usr/bin/env ruby

require 'hola'
puts Hola.hi(ARGV[0])
