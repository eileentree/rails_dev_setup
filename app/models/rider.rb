class Rider < ActiveRecord::Base
  before_create do |doc|
    doc.api_key = doc.generate_api_key
    #doc.password =
  end


	has_many :emergency_contacts
	has_one :pel_profile
	has_one :cycling_prof
	belongs_to :ride
	belongs_to :peloton


  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless Rider.exists?(api_key: token)
    end
  end
end
