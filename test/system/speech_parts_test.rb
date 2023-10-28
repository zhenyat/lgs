# frozen_string_literal: true

require 'application_system_test_case'

class SpeechPartsTest < ApplicationSystemTestCase
  setup do
    @speech_part = speech_parts(:one)
  end

  test 'visiting the index' do
    visit speech_parts_url
    assert_selector 'h1', text: 'Speech parts'
  end

  test 'should create speech part' do
    visit speech_parts_url
    click_on 'New speech part'

    fill_in 'De', with: @speech_part.de
    fill_in 'En', with: @speech_part.en
    fill_in 'Es', with: @speech_part.es
    fill_in 'Ru', with: @speech_part.ru
    click_on 'Create Speech part'

    assert_text 'Speech part was successfully created'
    click_on 'Back'
  end

  # test 'should update Speech part' do
  #   visit speech_part_url(@speech_part)
  #   click_on 'Edit this speech part', match: :first

  #   fill_in 'De', with: @speech_part.de
  #   fill_in "En", with: @speech_part.en
  #   fill_in "Es", with: @speech_part.es
  #   fill_in "Ru", with: @speech_part.ru
  #   click_on "Update Speech part"

  #   assert_text 'Speech part was successfully updated'
  #   click_on "Back"
  # end

  # test "should destroy Speech part" do
  #   visit speech_part_url(@speech_part)
  #   click_on "Destroy this speech part", match: :first

  #   assert_text "Speech part was successfully destroyed"
  # end
end
