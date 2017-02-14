module AuthenticationMacros
  def login
    let(:user) { build(:user) }
    before do
      #login_as user, scope: :user
      sign_in user
    end 
  end
end
