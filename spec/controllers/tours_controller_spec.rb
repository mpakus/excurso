require 'rails_helper'

RSpec.describe Admin::ToursController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Tour. As you add validations to Tour, be sure to
  # adjust the attributes here as well.
  # let(:valid_attributes) {
  #   skip("Add a hash of attributes valid for your model")
  # }
  #
  # let(:invalid_attributes) {
  #   skip("Add a hash of attributes invalid for your model")
  # }
  #
  # # This should return the minimal set of values that should be in the session
  # # in order to pass any filters (e.g. authentication) defined in
  # # ToursController. Be sure to keep this updated too.
  # let(:valid_session) { {} }
  #
  # describe "GET index" do
  #   it "assigns all tours as @tours" do
  #     tour = Tour.create! valid_attributes
  #     get :index, {}, valid_session
  #     expect(assigns(:tours)).to eq([tour])
  #   end
  # end
  #
  # describe "GET show" do
  #   it "assigns the requested tour as @tour" do
  #     tour = Tour.create! valid_attributes
  #     get :show, {:id => tour.to_param}, valid_session
  #     expect(assigns(:tour)).to eq(tour)
  #   end
  # end
  #
  # describe "GET new" do
  #   it "assigns a new tour as @tour" do
  #     get :new, {}, valid_session
  #     expect(assigns(:tour)).to be_a_new(Tour)
  #   end
  # end
  #
  # describe "GET edit" do
  #   it "assigns the requested tour as @tour" do
  #     tour = Tour.create! valid_attributes
  #     get :edit, {:id => tour.to_param}, valid_session
  #     expect(assigns(:tour)).to eq(tour)
  #   end
  # end
  #
  # describe "POST create" do
  #   describe "with valid params" do
  #     it "creates a new Tour" do
  #       expect {
  #         post :create, {:tour => valid_attributes}, valid_session
  #       }.to change(Tour, :count).by(1)
  #     end
  #
  #     it "assigns a newly created tour as @tour" do
  #       post :create, {:tour => valid_attributes}, valid_session
  #       expect(assigns(:tour)).to be_a(Tour)
  #       expect(assigns(:tour)).to be_persisted
  #     end
  #
  #     it "redirects to the created tour" do
  #       post :create, {:tour => valid_attributes}, valid_session
  #       expect(response).to redirect_to(Tour.last)
  #     end
  #   end
  #
  #   describe "with invalid params" do
  #     it "assigns a newly created but unsaved tour as @tour" do
  #       post :create, {:tour => invalid_attributes}, valid_session
  #       expect(assigns(:tour)).to be_a_new(Tour)
  #     end
  #
  #     it "re-renders the 'new' template" do
  #       post :create, {:tour => invalid_attributes}, valid_session
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end
  #
  # describe "PUT update" do
  #   describe "with valid params" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }
  #
  #     it "updates the requested tour" do
  #       tour = Tour.create! valid_attributes
  #       put :update, {:id => tour.to_param, :tour => new_attributes}, valid_session
  #       tour.reload
  #       skip("Add assertions for updated state")
  #     end
  #
  #     it "assigns the requested tour as @tour" do
  #       tour = Tour.create! valid_attributes
  #       put :update, {:id => tour.to_param, :tour => valid_attributes}, valid_session
  #       expect(assigns(:tour)).to eq(tour)
  #     end
  #
  #     it "redirects to the tour" do
  #       tour = Tour.create! valid_attributes
  #       put :update, {:id => tour.to_param, :tour => valid_attributes}, valid_session
  #       expect(response).to redirect_to(tour)
  #     end
  #   end
  #
  #   describe "with invalid params" do
  #     it "assigns the tour as @tour" do
  #       tour = Tour.create! valid_attributes
  #       put :update, {:id => tour.to_param, :tour => invalid_attributes}, valid_session
  #       expect(assigns(:tour)).to eq(tour)
  #     end
  #
  #     it "re-renders the 'edit' template" do
  #       tour = Tour.create! valid_attributes
  #       put :update, {:id => tour.to_param, :tour => invalid_attributes}, valid_session
  #       expect(response).to render_template("edit")
  #     end
  #   end
  # end
  #
  # describe "DELETE destroy" do
  #   it "destroys the requested tour" do
  #     tour = Tour.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => tour.to_param}, valid_session
  #     }.to change(Tour, :count).by(-1)
  #   end
  #
  #   it "redirects to the tours list" do
  #     tour = Tour.create! valid_attributes
  #     delete :destroy, {:id => tour.to_param}, valid_session
  #     expect(response).to redirect_to(tours_url)
  #   end
  # end

end
