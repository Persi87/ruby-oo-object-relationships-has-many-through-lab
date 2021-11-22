require 'pry'

class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|apt_instances| apt_instances.patient == self}
    end

    def self.all
        @@all
    end

    def doctors
        appointments.collect {|apt_instances| apt_instances.doctor}
    end
    
end
