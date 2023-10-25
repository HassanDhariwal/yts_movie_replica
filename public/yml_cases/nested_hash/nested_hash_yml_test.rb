require 'yaml'
require 'pry'
require 'awesome_print'

	data = YAML.load_file('nested_hash.yml')
    puts "#{data.keys[0]}:"
	puts " Name => #{data['person_detail']['name'].capitalize} -> #{data['person_goal']['name'].capitalize} "
	puts " JOB => #{data['person_detail']['job']} -> #{data['person_goal']['job']}"
	puts " skill => #{data['person_detail']['skill']} -> #{data['person_goal']['skill']}"
	puts "#{data.keys[2]}:"
	puts "  #{data['person_address']['street']}  #{data['person_address']['city']}  #{data['person_address']['countary']}"



