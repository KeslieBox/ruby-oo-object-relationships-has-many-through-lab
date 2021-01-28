
class Patient
attr_accessor 
attr_reader :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        # binding.pry
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appointment|
            # binding.pry
            self == appointment.patient
        end
    end

    def doctors
        Appointment.all.collect do |appointment|
            self == appointment.patient
            appointment.doctor
        end
    end
end