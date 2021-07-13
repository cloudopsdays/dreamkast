class EventController < ApplicationController
  include Secured
  include ActionView::Helpers::UrlHelper

  before_action :set_current_user, :set_profile, :set_speaker

  def show
    if event_name == "codt2021"
      redirect_to "https://cloudopsdays.com/"
    else
      @conference = Conference.includes(sponsor_types: {sponsors: :sponsor_attachment_logo_image}).order("sponsor_types.order ASC").find_by(abbr: event_name)
      render event_view
    end
    
  end

  def set_current_user
    if session[:userinfo].present?
      @current_user = session[:userinfo]
    end
  end
  
  def privacy
    @conference = Conference.find_by(abbr: params[:event])
  end

  def coc
    @conference = Conference.find_by(abbr: params[:event])
  end

  private

  def use_secured_before_action?
    false
  end

  helper_method :speaker_entry_button_name

  def speaker_entry_button_name
    @speaker.present? ? 'スピーカーダッシュボード' : 'スピーカーとしてエントリー'
  end
end
