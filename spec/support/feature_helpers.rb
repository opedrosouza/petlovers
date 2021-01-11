module FeatureHelpers
  def sign_in_user
    @user = FactoryBot.create(:user)
    visit new_user_session_path
    fill_in "email", with: @user.email
    fill_in "password", with: @user.password
    click_button "Entrar"
  end
end