class Patient
    attr_accessor :name
    @@all = []
    def initialize(name)
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor,date)
      Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select{|appointment_instance| appointment_instance.patient == self }
    end

    def doctors
        self.appointments.map{|instance| instance.doctor}
    end


end
