require 'test_helper'

class TelefonidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telefonid = telefonids(:one)
  end

  test "should get index" do
    get telefonids_url
    assert_response :success
  end

  test "should get new" do
    get new_telefonid_url
    assert_response :success
  end

  test "should create telefonid" do
    assert_difference('Telefonid.count') do
      post telefonids_url, params: { telefonid: { Muutmalu: @telefonid.Muutmalu, Nimi: @telefonid.Nimi, Protsessor: @telefonid.Protsessor, Protsessori_kiirus: @telefonid.Protsessori_kiirus, Sisemalu: @telefonid.Sisemalu, kirjeldus: @telefonid.kirjeldus } }
    end

    assert_redirected_to telefonid_url(Telefonid.last)
  end

  test "should show telefonid" do
    get telefonid_url(@telefonid)
    assert_response :success
  end

  test "should get edit" do
    get edit_telefonid_url(@telefonid)
    assert_response :success
  end

  test "should update telefonid" do
    patch telefonid_url(@telefonid), params: { telefonid: { Muutmalu: @telefonid.Muutmalu, Nimi: @telefonid.Nimi, Protsessor: @telefonid.Protsessor, Protsessori_kiirus: @telefonid.Protsessori_kiirus, Sisemalu: @telefonid.Sisemalu, kirjeldus: @telefonid.kirjeldus } }
    assert_redirected_to telefonid_url(@telefonid)
  end

  test "should destroy telefonid" do
    assert_difference('Telefonid.count', -1) do
      delete telefonid_url(@telefonid)
    end

    assert_redirected_to telefonids_url
  end
end
