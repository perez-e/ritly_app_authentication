# == Schema Information
#
# Table name: ritlies
#
#  id            :integer          not null, primary key
#  link          :string(255)
#  random_string :string(255)
#  visits        :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Ritly < ActiveRecord::Base
end
