# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!
  helper_method :users

  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  attr_reader :users
end
