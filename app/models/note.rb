class Note < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	belongs_to :theme
end
