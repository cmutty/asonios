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

require 'spec_helper'

describe App do
  pending "add some examples to (or delete) #{__FILE__}"
end
