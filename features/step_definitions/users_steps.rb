Given /^the following Users exist$/ do |users_table|
  users_table.hashes.each do |user|
    Usuario.create!(user)
  end
end

Given /^I'm logged in as "(.*?)", with key "(.*?)"$/ do |nick, key|
		step %{I am on the home page}
		step %{I follow "Acceder"}
		step %{I should be on the Acceder page}
		step %{I fill in "Nick" with "#{nick}"}
		step %{I fill in "Key" with "#{key}"}
		step %{I press "Acceder"}
		step %{I should be on the index page}
end

