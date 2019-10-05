class Doctor
  
attr_accessor :name 
@@all = []

def initialize(name)
  @name = name
  @@all << self
end  

def appointments
  Appointments.all.select {|item| item.  
