# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :attendances
  has_many :awards
end
