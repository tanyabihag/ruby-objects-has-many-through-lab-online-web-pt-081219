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

def new_appointment(date, patient)
  Appointment.new(date, patient, self)
end

def patients
  patient_list = []
  self.appointments.select {|item| patient_list << item.patient}
  patient_list
end


end