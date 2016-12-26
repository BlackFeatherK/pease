class FuneralService < ApplicationRecord
	has_many :funeral_service_options
	has_many :funerals, through: :funeral_service_options
end
