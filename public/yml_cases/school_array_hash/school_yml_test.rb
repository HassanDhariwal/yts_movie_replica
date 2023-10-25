require 'yaml'
require 'pry'
require 'awesome_print'
# require 'activesupport'
# require 'humanize'

yml_data = YAML.load_file('school_data.yml')
schools = yml_data['schools'][1]['classes']

all_school_data = [] # recode of all students nested  array 
class_students = [] #Empty Array for students
all_class_subjects = []
class_subjects = [] #Empty Array for subjects
class_subjects_count = [] #Empty Array for subjects
unique_to_first_school_subjects = []
unique_to_second_school_subjects = []
teacher_in_more_then_one_class  = []
all_class_teachers = []
teacher_in_both_school = []
i = 1
  all_school_teachers_data = []

yml_data['schools'].each do |school_data| #outer loop

  school_name = school_data['name'] #school name 
  # puts"\n"
  puts"#{i} School NAME: #{school_name}"
  puts"\n"
  puts "List of Classes (no of student):"
  puts"\n"

  subjects = [] #Empty Array for classes subjects
  students = [] #Empty Array for classes students
  teachers = [] #Empty Array for classes teachers
  teacher_subjects = []
  teacher_subject_hash = {}


    school_data['classes'].each do |class_data|   #inner loop
      students += class_data['students'] #single class students name 
      subjects << class_data['subject']
      teachers << class_data['teacher']
      
      if teacher_subject_hash[class_data['teacher']].nil?
         teacher_subject_hash[class_data['teacher']] = [class_data['subject']]
      else
         teacher_subject_hash[class_data['teacher']] += [class_data['subject']]     
      end
     
      puts "- #{class_data['subject']} (#{class_data['students'].count})" 
    end

    teacher_in_more_classes = teacher_subject_hash.select{|key,subject| subject.count > 1 }
   
    puts "Teacher Teaching in more then 1 classes #{teacher_in_more_classes.keys} Subjects #{teacher_in_more_classes.values}"

   #TODO : HERE Show that Teacher Teachering in more then one class
      all_school_teachers_data << teacher_subject_hash

      # subject = ["Match","Egnlish","Science"]
      # teacher = ["Robit","Jack","Robit"]

    puts "\n"
      # puts "List of Teachers Teaching in more then One Class:"
      # puts "- #{teacher_subjects.uniq}"

    puts "---"


      class_students << students   #combined 2 schools classes students
      all_class_subjects << subjects
      all_class_teachers << teachers

       # puts "School #{school_name} students (#{students.count}) Uniq (#{students.uniq.count})"
       # puts "====+++===subjects of clasees==+++==== "
       # puts " subjects in a schools #{subjects}"
       i = i+1

  end

# a_hash = {"robit" => ["Match"], "Mobit" => ["English", "Match"] }
# teacher_name = a_hash.keys
# subject_name = a_hash.keys

      puts "Subjects only offered in the 1st school not Others"
        unique_to_first_school_subjects  = all_class_subjects[0] - all_class_subjects[1]
        puts "- #{unique_to_first_school_subjects}"
      puts "Subjects only offered in the 2nd school not Others=="
       an_unique_to_second_school_subjects = all_class_subjects[1] - all_class_subjects[0]
       puts "- #{an_unique_to_second_school_subjects}"
       puts "teacher_in_more_then_one_school=="

       teacher_in_both_school = all_class_teachers[0] & all_class_teachers[1]
       puts "- #{teacher_in_both_school}"

         first_school_techers =   all_school_teachers_data[0].keys
         second_school_techers =   all_school_teachers_data[1].keys

        common_teacher = first_school_techers & second_school_techers

#        puts "==========Both School subjects & students of clasees======== "

# puts "Both School  subjects (#{all_class_subjects.flatten.count}) Uniq (#{all_class_subjects.flatten.uniq.count})"   
# puts "Both School students (#{class_students.flatten.count}) Uniq (#{class_students.flatten.uniq.count})"
