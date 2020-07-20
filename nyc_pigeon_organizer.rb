def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key1, key2|
    data[key1].each do |key2, array| 
      array.select do |name|
        pigeon_list[name] = {
          key1 => [key2]
        }
      end
    end
  end
  puts pigeon_list
end

nyc_pigeon_organizer({
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
})