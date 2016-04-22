module Features
  def sign_in email = "example@example.com"
    visit root_path
    fill_in "Email", with: email
    click_on "Sign In"
  end
end
