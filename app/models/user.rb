# frozen_string_literal: true

class User < ActiveRecord::Base
  has_many :created_events, class_name: "Event", foreign_key: "owner_id"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
