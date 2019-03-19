class Appointment
  attr_accessor :date, :doctor
  attr_reader :patient
  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  # def patient
  #    Patient.all.select { |each_patient| each_patient.appointment == self }
  #  end

  end
