# == Schema Information
#
# Table name: apps
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  imageurl    :string(255)
#  itunesid    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class App < ActiveRecord::Base
  attr_accessible :description, :name, :imageurl

  before_save { |app| app.name = name.downcase }

   validates :name, presence: true, length: { maximum: 15 }
   validates :description, presence: true, length: { maximum: 140 }, uniqueness: { case_sensitive: false }
end

#:imageurl, :itunesid,
