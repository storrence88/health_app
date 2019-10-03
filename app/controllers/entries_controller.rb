# frozen_string_literal: true

class EntriesController < ApplicationController
  before_action :set_entry, only: %i[edit update destroy]
  helper_method :entry

  def new
    @entry = Entry.new
  end

  def create
    entry = Entry.new(entry_params)
    if entry.save
      flash[:success] = 'Successfully created new weigh-in!'
      redirect_to authenticated_root_path
    else
      flash[:error] = entry.errors.full_messages
      render :new
    end
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

  def entry_params
    params.require(:entry).permit(:user_id, :date, :weight)
  end
end
