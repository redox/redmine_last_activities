require 'redmine'
require 'last_activities_hooks'

Redmine::Plugin.register :last_activities do
  name 'Redmine Last Activities plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
