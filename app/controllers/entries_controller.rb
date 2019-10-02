# frozen_string_literal: true

class EntriesController < ApplicationController
  before_action :set_entry, only: %i[edit update destroy]
  helper_method :entry

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

  attr_reader :entry

  def set_entry
    @entry = Entry.find(params[:id])
  end
end
