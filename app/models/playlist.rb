# frozen_string_literal: true

class Playlist < ApplicationRecord
  validates :name, presence: true
  validates :number_of_votes, presence: true
end
