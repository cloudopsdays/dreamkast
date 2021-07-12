class Sponsor < ApplicationRecord
  belongs_to :conference

  has_one :sponsor_attachment_text
  has_one :sponsor_attachment_logo_image
  has_one :sponsor_attachment_zoom
  has_one :sponsor_attachment_miro
  has_one :booth

  has_many :sponsor_attachment_pdfs
  has_many :sponsor_attachment_key_images
  has_many :sponsor_attachment_vimeos
  has_many :sponsors_sponsor_types
  has_many :sponsor_types, through: :sponsors_sponsor_types

  def booth_info
    {id: booth.id, opened: booth.published}
  end

  def booth_sponsor?
    self.sponsor_types.each do |type|
      if ["Diamond", "Gold", "Platinum"].include?(type.name)
        return true
      end
    end
    return false
  end
end
