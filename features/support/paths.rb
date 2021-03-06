# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'
    when /^Acceder$/ then '/login'
    when /^Registro$/ then '/new'
    when /^the Register page$/ then '/new'
    when /^the index page$/ then '/homepage'
    when /^the Acceder page$/ then '/login'
    when /^the new event page$/ then new_evento_path
		when /^the show event page$/ then '/eventos/1'
		when /^the new comment page$/ then new_comentario_path
		when /^the comments page$/ then '/comentarios'
		when /^the month page$/ then '/meses/1'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
