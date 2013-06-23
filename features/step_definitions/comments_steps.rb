Given /^the following Comments exist$/ do |comments_table|
  comments_table.hashes.each do |comment|
    Comentario.create!(comment)
  end
end
