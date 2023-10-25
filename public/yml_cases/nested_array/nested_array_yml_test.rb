require 'yaml'
require 'pry'
require 'awesome_print'

yml_data = YAML.load_file('nested_array.yml')

month_name = yml_data.keys[0]

array_data = yml_data['february_2023']

days_name_data = array_data[0]


# 1st way days_array = array_data.drop(1)
puts "Enter a date "
user_input_date = gets.to_i


value_index = nil

array_data.each do |array|
	value_index  = array.find_index(user_input_date)

	if value_index
		break
	end

end

puts "outside loop"
 # 2nd way day_name  = days_name_data[value_index]
 day_name = array_data[0][value_index]
 puts "Date :#{user_input_date} Day name : #{day_name} , Month #{month_name} "

