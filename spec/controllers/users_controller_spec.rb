require 'rails_helper'


RSpec.describe UsersController, type: :controller do
  describe "GET #show" do
    context "when user is not logged in" do
      it "redirects to the login page" do
        get :show
        expect(response).to redirect_to(new_user_session_path)
      end
    end


    context "when user is logged in" do
      before do
        @user = FactoryBot.create(:user)
        sign_in @user
      end

      it "responds successfully" do
        get :show
        expect(response).to be_successful
      end
    end
  end
end
