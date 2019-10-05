class Doctor
  
attr_accessor :name 
@@all = []

def initialize(name)
  @name = name
  @@all << self
end  

def self.all
  @@all
end

def appointments
  Appointment.all.select {|item| item.doctor == self}
end

def new_appointments(date, patient)
  Appointment.new(date, patient)
end

end
