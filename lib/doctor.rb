
class Doctor
    attr_accessor 
    attr_reader :name

    @@all = []

    def initialize(name)
        @@all << self
        @name = name
    end

    def self.all
        @@all
    end
     
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointment|
            self == appointment.doctor
        end
    end

    def patients
        Appointment.all.collect do |appointment|
            self == appointment.doctor
            appointment.patient
        end
    end
end