require 'test_helper'

class SpeechPartTest < ActiveSupport::TestCase
  setup do
    @speech_part = SpeechPart.new
  end

  context 'validations' do
    should validate_presence_of(:de)
    should validate_uniqueness_of(:de)
    should validate_presence_of(:en)
    should validate_uniqueness_of(:en)
    should validate_presence_of(:es)
    should validate_uniqueness_of(:es)
    should validate_presence_of(:ru)
    should validate_uniqueness_of(:ru)
  end
end
