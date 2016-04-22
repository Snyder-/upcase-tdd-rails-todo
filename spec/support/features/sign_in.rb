module Features
  def sign_in
    visit root_path
    fill_in "Email", with: "example@example.com"
    click_on "Sign In"
  end
end
