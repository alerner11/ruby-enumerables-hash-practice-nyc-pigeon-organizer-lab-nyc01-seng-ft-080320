def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key1, key2|
    data[key1].each do |key2, array| 
      array.select do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][key1]
          pigeon_list[name][key1] = []
        end
        pigeon_list[name][key1] << key2.to_s
      end
    end
  end
  pigeon_list
end