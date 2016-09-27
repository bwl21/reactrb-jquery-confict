# Rakefile
require 'opal'
require 'opal-jquery'
require 'erb'
require 'zip'
require 'net/http'
require 'pry'

def javascript_include_tag(filename)
  "<script src = \"public/#{ZUPFNOTER_JS}\" type=\"application/javascript\"></script>"
end

desc "start the development server"
task :server do
  cd "." do
    sh "bundle exec rackup -p 9200"
  end
end

