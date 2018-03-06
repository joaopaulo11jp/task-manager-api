require 'rails_helper'

RSpec.describe 'Users API', type: :request do
    let!(:user){ create(:user) } #create cria usuário em banco, o build apenas na memória.
    let(:user_id){ user.id }

    before{ host! "api.tasks-manager.dev" } #Pode ser qualquer um endereço, se nao encontrar considera localhost

    describe "GET /users/:id" do
        before do
            headers = {"Accept" => "application/vnd.taskmanager.v1"}
            get "/users/#{user_id}", params: {}, headers: headers #Padrão do 5.1, usar params: e headers:
        end

        context "when the users exists" do 
            it "returns the user" do
              user_response = JSON.parse(response.body)
              expect(user_response["id"]).to eq(user_id)
            end
        end
    end
end