require "application_system_test_case"

class TelefonidsTest < ApplicationSystemTestCase
  setup do
    @telefonid = telefonids(:one)
  end

  test "visiting the index" do
    visit telefonids_url
    assert_selector "h1", text: "Telefonids"
  end

  test "creating a Telefonid" do
    visit telefonids_url
    click_on "New Telefonid"

    fill_in "Muutmalu", with: @telefonid.Muutmalu
    fill_in "Nimi", with: @telefonid.Nimi
    fill_in "Protsessor", with: @telefonid.Protsessor
    fill_in "Protsessori kiirus", with: @telefonid.Protsessori_kiirus
    fill_in "Sisemalu", with: @telefonid.Sisemalu
    fill_in "Kirjeldus", with: @telefonid.kirjeldus
    click_on "Create Telefonid"

    assert_text "Telefonid was successfully created"
    click_on "Back"
  end

  test "updating a Telefonid" do
    visit telefonids_url
    click_on "Edit", match: :first

    fill_in "Muutmalu", with: @telefonid.Muutmalu
    fill_in "Nimi", with: @telefonid.Nimi
    fill_in "Protsessor", with: @telefonid.Protsessor
    fill_in "Protsessori kiirus", with: @telefonid.Protsessori_kiirus
    fill_in "Sisemalu", with: @telefonid.Sisemalu
    fill_in "Kirjeldus", with: @telefonid.kirjeldus
    click_on "Update Telefonid"

    assert_text "Telefonid was successfully updated"
    click_on "Back"
  end

  test "destroying a Telefonid" do
    visit telefonids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Telefonid was successfully destroyed"
  end
end
