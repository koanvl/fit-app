# frozen_string_literal: true

class SettingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show; end

  def update
    @user.assign_attributes(user_params)
    email_changed = @user.email_changed?
    if @user.save
      respond_to do |format|
        format.html do
          if email_changed
            flash[:notice] = I18n.t('devise.registrations.update_needs_confirmation')
          else
            flash[:success] = "Settings successfully updated"
          end
          redirect_to settings_path, status: :see_other
        end
      end

    else
      flash.now[:alert] = "Settings not saved"
      render 'show', status: :unprocessable_entity
    end
  end

  def account_settings; end

  def payment_details; end

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:email)
  end

  def user_settings
    @user = current_user
  end
end