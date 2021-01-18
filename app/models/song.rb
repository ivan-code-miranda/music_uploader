class Song < ApplicationRecord

	mount_uploader :attachement, AttachementUploader

	belongs_to :playlist, optional: true

end
