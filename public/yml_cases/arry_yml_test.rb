require 'yaml'
require 'pry' #ya he batati ha binding.pry kya ha 
# binding.pry

     yaml_data = YAML.load_file('arry.yml')

     yaml_data.each do |i|

     # for i in yaml_data do 
		puts "#{i}"
	 end 