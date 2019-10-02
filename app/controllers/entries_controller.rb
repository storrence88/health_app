# frozen_string_literal: true

class EntriesController < ApplicationController
  before_action :set_entry, only: %i[edit update destroy]

  def new
    @entry = Entry.new
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

  def set_entry
    @entry = Entry.find(params[:id])
  end
end
