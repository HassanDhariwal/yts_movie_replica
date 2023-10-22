require 'yaml'
require 'pry'
require 'awesome_print'

yml_data = YAML.load_file('school_data.yml')
schools = yml_data['schools'][1]['classes']

all_school_data = [] # recode of all students nested  array 

yml_data['schools'].each do |classes| #outer loop

  school_name = classes['name'] #school name 

  puts"School NAME: #{school_name}"

  class_students = [] #Empty Array for subjects

  classes['classes'].each do |a|   #inner loop
    class_students += a['students']
  end
  puts "School #{school_name} students (#{class_students.count}) Uniq (#{class_students.uniq.count})"   

   all_school_data << class_students
end
puts "Both School students (#{all_school_data.flatten.count}) Uniq (#{all_school_data.flatten.uniq.count})"   

# puts "nested array all subjects#{all_school_data}"


