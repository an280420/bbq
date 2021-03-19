class ApplicationController < ActionController::Base
  # Позволяем использовать возможности пандита во всех контроллерах
  include Pundit

  # Обработать ошибку авторизации
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_user_can_edit?

  def current_user_can_edit?(model)
    # Если у модели есть юзер и он залогиненный, пробуем у неё взять .event
    # Если он есть, проверяем его юзера на равенство current_user.
    user_signed_in? && (
      model.user == current_user ||
      (model.try(:event).present? && model.event.user == current_user)
    )
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:password, :password_confirmation, :current_password]
    )
  end

  def pundit_user
    UserContext.new(current_user, cookies)
  end

  def user_not_authorized
    # Перенаправляем юзера откуда пришел (или в корень сайта)
    # с сообщением об ошибке (для секьюрности сообщение ЛУЧШЕ опустить!)
    flash[:alert] = t('pundit.not_authorized')
    redirect_to(request.referrer || root_path)
  end
end
