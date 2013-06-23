Given /^the following Events exist$/ do |events_table|
  events_table.hashes.each do |event|
    Evento.create!(event)
  end
end
