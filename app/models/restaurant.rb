class Restaurant < ApplicationRecord
  validates :title, presence: true
  belongs_to :user

  default_scope { available }
  scope :available, -> { where(deleted_at: nil) }

  def destroy
    update(deleted_at: Time.now)
  end
end



  
