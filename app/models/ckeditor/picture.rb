class Ckeditor::Picture < Ckeditor::Asset
  mount_uploader :data, CkeditorPictureUploader, :mount_on => :data_file_name

  belongs_to :owner, polymorphic: true

  scope :orphan, -> { where(owner_type: nil, owner_id: nil) }
  scope :by_owner, ->(owner) { where(owner_type: owner.class.name, owner_id: owner.id) }

  def url_content
    url(:content)
  end
end
