class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_taggable_on :interests
  INTERESTS = ["Landscapes", "Seascapes", "Architecture", "Timelapse", "Macro", "StopMotion", "Drone", "Trans-trav", "Urban", "Street", "City", "Mountains", "Nature", "GoPro", "4KVideoCamera", "Sliders", "Shotgun", "Documentary"]
  has_many :shotlists
  has_one_attached :photo
  has_many :portfolio_assets


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def unread_messages_hash
    @chatrooms = Chatroom.all
    total_messages = Hash.new

    @chatrooms.each do |chatroom|
       total_messages[chatroom.id] = chatroom.messages.where.not(user: self).where(read: false).count
    end

    return total_messages
  end

  def other_chatter?(chatroom)
    if chatroom.receiver_id == self.id
      User.find(chatroom.sender_id) if chatroom.sender_id.present?
    else
      User.find(chatroom.receiver_id) if chatroom.receiver_id.present?
    end
  end

end


 # @chatroom.messages.where.not(user: @receiving_user).where(read: false).count # Create a method to count unread messages for each chatroom
