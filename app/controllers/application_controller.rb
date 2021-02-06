class ApplicationController < ActionController::Base

	protected

	# ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
		books_path
  end

	# ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
		root_path
  end

end
