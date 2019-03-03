require 'pry'

class Doctor
  attr_accessor :appointments, :patients
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select { |appt| appt.doctor == self }
  end

  def patients
    appointments.collect { |appointment| appointment.patient }
  end

end #<---- CLASS end
