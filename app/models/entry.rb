# frozen_string_literal: true

class Entry < ApplicationRecord
  belongs_to :user

  validates :date, :weight, presence: true
end
