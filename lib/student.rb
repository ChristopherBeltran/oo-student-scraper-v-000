class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    self.send(student_hash)
    
    
    @@all << self 
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      student = Student.new
      student.each do |names, location, profile|
        student.name = names
        student.location = location
        student.profile_url = profile
      end 
    end 
    
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    
  end
end

