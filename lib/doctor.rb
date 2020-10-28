require 'pry'

class Doctor

    attr_reader :name

    @@all = []

    def initialize( name )
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        arr = []
        Appointment.all.each do |appointment|
            if appointment.doctor == self
                arr << appointment
            end
        end
        arr
    end

    def new_appointment( date, patient )
        new_apt = Appointment.new( date, patient, self )
    end

    def patients
        Patient.all
    end
end