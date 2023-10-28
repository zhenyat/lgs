require "test_helper"

class SpeechPartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speech_part = speech_parts(:one)
  end

  test "should get index" do
    get speech_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_speech_part_url
    assert_response :success
  end

  test "should create speech_part" do
    assert_difference("SpeechPart.count") do
      post speech_parts_url, params: { speech_part: { de: @speech_part.de, en: @speech_part.en, es: @speech_part.es, ru: @speech_part.ru } }
    end

    assert_redirected_to speech_part_url(SpeechPart.last)
  end

  test "should show speech_part" do
    get speech_part_url(@speech_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_speech_part_url(@speech_part)
    assert_response :success
  end

  test "should update speech_part" do
    patch speech_part_url(@speech_part), params: { speech_part: { de: @speech_part.de, en: @speech_part.en, es: @speech_part.es, ru: @speech_part.ru } }
    assert_redirected_to speech_part_url(@speech_part)
  end

  test "should destroy speech_part" do
    assert_difference("SpeechPart.count", -1) do
      delete speech_part_url(@speech_part)
    end

    assert_redirected_to speech_parts_url
  end
end
