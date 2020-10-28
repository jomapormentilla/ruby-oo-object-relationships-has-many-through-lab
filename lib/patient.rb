class Patient

    attr_reader :name

    @@all = []

    def initialize( name )
        @name =  name
        @@all << self
    end

    def new_appointment( date, doctor )
        Appointment.new( date, self, doctor )
    end

    def self.all
        @@all
    end

    def appointments
        arr = []
        Appointment.all.each do |appointment|
            if appointment.patient == self
                arr << appointment
            end
        end
        arr
    end

    def doctors
        Doctor.all
    end
end