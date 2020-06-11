class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  def doctor_name(arg)
    self.doctors.each do |d|
      if d.id == Appointment.find(arg.id).doctor_id
        return d.name
      end
    end
  end

  def num_appointment
    self.appointments.count
  end
end
