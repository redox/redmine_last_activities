require 'redmine'
require 'last_activities_hooks'

Redmine::Plugin.register :last_activities do
  name 'Redmine Last Activities plugin'
  author 'Sylvain Utard'
  description 'Display a home-page box of the last 10 activities of each project.'
  version '0.0.1'
  url 'https://github.com/redox/redmine_last_activities'
  author_url 'http://sylvain.utard.info'
end
