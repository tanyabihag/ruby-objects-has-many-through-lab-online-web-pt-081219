class Patient 

  attr_accessor :name 

  @@all = [ ]

  def initialize 
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  
  end

  def appointments
    Appointment.all.select {|item| item.patient == self }
  end

  def doctors
    doctor_list = []
    self.appointments.each {|item| doctor_list << item.doctor}
    doctor_list
  end
end 