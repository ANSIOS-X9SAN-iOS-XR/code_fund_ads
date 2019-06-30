class CreativeOptionsController < ApplicationController
  before_action :set_user

  def show
    @creatives = @user.creatives.order(name: :asc)
    @selected_creative_ids = [params[:selected_ids]].flatten.compact
    render layout: false
  end

  private

  def set_user
    @user = if authorized_user.can_admin_system?
      User.find(params[:user_id])
    else
      current_user
    end
  end
end
