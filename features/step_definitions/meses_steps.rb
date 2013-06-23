Given /^the following Meses exist$/ do |meses_table|
  meses_table.hashes.each do |mes|
    Mes.create!(mes)
  end
end

When /I (un)?check the following subjects: (.*)/ do |uncheck, subject_list|
  subject_list.split(", ").each do |subject| 
    if uncheck
      uncheck("subjects_#{subject}")
    else
      check("subject_#{subject}")
    end
  end
end
