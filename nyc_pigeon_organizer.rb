def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute, qualities|
    qualities.each do |quality, names|
      names.each do |name|
        if pigeon_list.keys.include?(name) == false
          pigeon_list[name] = {
              attribute => [quality.to_s]
          }
        elsif pigeon_list[name].keys.include?(attribute) == false
          pigeon_list[name][attribute] = [quality.to_s] 
        else 
          pigeon_list[name][attribute] << quality.to_s
        end
      end
    end
  end
  pigeon_list
end