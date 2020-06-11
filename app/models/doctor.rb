class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  def patient_name(arg)
    self.patients.each do |p|
      if p.id == Appointment.find(arg.id).patient_id
        return p.name
      end
    end
  end
end
