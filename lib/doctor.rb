class Doctor
    @@all=[]
    attr_accessor :name

    def initialize(name)
        @name=name
        @@all<< self
    end

    def self.all
        @@all
    end

    def new_appointment(patient,date)
      Appointment.new(date,patient,self)

    end


    def appointments
        Appointment.all.select{|appointment_instance| appointment_instance.doctor==self}
    end

    def patients
        self.appointments.map{|instance| instance.patient}
    end
end
