class Doctor
  attr_accessor :appointments, :patients
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @patients = []
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
    self.appointments.collect do |each_appointment|
      each_appointment.patient.uniq
    end
  end



end #<---- CLASS end
