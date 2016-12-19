class FuneralService < ApplicationRecord
	belongs_to :funeral, optional: true;
end
