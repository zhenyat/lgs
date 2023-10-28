# frozen_string_literal: true

###############################################
# Parts of Speech for all languages: full list
###############################################
class SpeechPart < ApplicationRecord
  validates :de, :en, :es, :ru, presence: true, uniqueness: true
end
