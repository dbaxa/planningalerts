# typed: strong
# This is an autogenerated file for Rails routes.
# Please run bundle exec rake rails_rbi:routes to regenerate.
class ActionController::Base
  include GeneratedUrlHelpers
end

module ActionView::Helpers
  include GeneratedUrlHelpers
end

class ActionMailer::Base
  include GeneratedUrlHelpers
end

module GeneratedUrlHelpers
  # Sigs for route /admin(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_root_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_root_url(*args, **kwargs); end

  # Sigs for route /admin/api_usage(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_api_usage_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_api_usage_url(*args, **kwargs); end

  # Sigs for route /admin/dashboard(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_dashboard_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_dashboard_url(*args, **kwargs); end

  # Sigs for route /admin/councillors/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_councillors_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_councillors_url(*args, **kwargs); end

  # Sigs for route /admin/councillors(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_councillors_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_councillors_url(*args, **kwargs); end

  # Sigs for route /admin/councillors/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_councillor_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_councillor_url(*args, **kwargs); end

  # Sigs for route /admin/councillors/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_councillor_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_councillor_url(*args, **kwargs); end

  # Sigs for route /admin/councillors/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_councillor_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_councillor_url(*args, **kwargs); end

  # Sigs for route /admin/suggested_councillors/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_suggested_councillors_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_suggested_councillors_url(*args, **kwargs); end

  # Sigs for route /admin/suggested_councillors/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_suggested_councillor_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_suggested_councillor_url(*args, **kwargs); end

  # Sigs for route /admin/suggested_councillors/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_suggested_councillor_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_suggested_councillor_url(*args, **kwargs); end

  # Sigs for route /admin/users/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_users_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_users_url(*args, **kwargs); end

  # Sigs for route /admin/users(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_users_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_users_url(*args, **kwargs); end

  # Sigs for route /admin/users/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_user_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_user_url(*args, **kwargs); end

  # Sigs for route /admin/users/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_user_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_user_url(*args, **kwargs); end

  # Sigs for route /admin/users/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_user_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_user_url(*args, **kwargs); end

  # Sigs for route /admin/replies/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_replies_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_replies_url(*args, **kwargs); end

  # Sigs for route /admin/replies(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_replies_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_replies_url(*args, **kwargs); end

  # Sigs for route /admin/replies/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_reply_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_reply_url(*args, **kwargs); end

  # Sigs for route /admin/replies/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_reply_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_reply_url(*args, **kwargs); end

  # Sigs for route /admin/replies/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_reply_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_reply_url(*args, **kwargs); end

  # Sigs for route /admin/councillor_contributions/:id/toggle_reviewed(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def toggle_reviewed_admin_councillor_contribution_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def toggle_reviewed_admin_councillor_contribution_url(*args, **kwargs); end

  # Sigs for route /admin/councillor_contributions/:id/toggle_accepted(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def toggle_accepted_admin_councillor_contribution_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def toggle_accepted_admin_councillor_contribution_url(*args, **kwargs); end

  # Sigs for route /admin/councillor_contributions/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_councillor_contributions_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_councillor_contributions_url(*args, **kwargs); end

  # Sigs for route /admin/councillor_contributions(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_councillor_contributions_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_councillor_contributions_url(*args, **kwargs); end

  # Sigs for route /admin/councillor_contributions/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_councillor_contribution_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_councillor_contribution_url(*args, **kwargs); end

  # Sigs for route /admin/authorities/:id/import(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def import_admin_authority_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def import_admin_authority_url(*args, **kwargs); end

  # Sigs for route /admin/authorities/:id/load_councillors(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def load_councillors_admin_authority_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def load_councillors_admin_authority_url(*args, **kwargs); end

  # Sigs for route /admin/authorities/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_authorities_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_authorities_url(*args, **kwargs); end

  # Sigs for route /admin/authorities(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_authorities_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_authorities_url(*args, **kwargs); end

  # Sigs for route /admin/authorities/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_authority_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_admin_authority_url(*args, **kwargs); end

  # Sigs for route /admin/authorities/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_authority_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_authority_url(*args, **kwargs); end

  # Sigs for route /admin/authorities/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_authority_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_authority_url(*args, **kwargs); end

  # Sigs for route /admin/alerts/:id/unsubscribe(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def unsubscribe_admin_alert_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def unsubscribe_admin_alert_url(*args, **kwargs); end

  # Sigs for route /admin/alerts/export_active_emails(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def export_active_emails_admin_alerts_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def export_active_emails_admin_alerts_url(*args, **kwargs); end

  # Sigs for route /admin/alerts/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_alerts_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_alerts_url(*args, **kwargs); end

  # Sigs for route /admin/alerts(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_alerts_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_alerts_url(*args, **kwargs); end

  # Sigs for route /admin/alerts/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_alert_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_alert_url(*args, **kwargs); end

  # Sigs for route /admin/applications/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_applications_url(*args, **kwargs); end

  # Sigs for route /admin/applications(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_applications_url(*args, **kwargs); end

  # Sigs for route /admin/applications/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_application_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_application_url(*args, **kwargs); end

  # Sigs for route /admin/comments/:id/load_replies(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def load_replies_admin_comment_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def load_replies_admin_comment_url(*args, **kwargs); end

  # Sigs for route /admin/comments/:id/resend(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def resend_admin_comment_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def resend_admin_comment_url(*args, **kwargs); end

  # Sigs for route /admin/comments/:id/confirm(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def confirm_admin_comment_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def confirm_admin_comment_url(*args, **kwargs); end

  # Sigs for route /admin/comments/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_comments_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_comments_url(*args, **kwargs); end

  # Sigs for route /admin/comments(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_comments_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_comments_url(*args, **kwargs); end

  # Sigs for route /admin/comments/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_comment_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_admin_comment_url(*args, **kwargs); end

  # Sigs for route /admin/comments/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_comment_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_comment_url(*args, **kwargs); end

  # Sigs for route /admin/background_jobs(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_background_jobs_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_background_jobs_url(*args, **kwargs); end

  # Sigs for route /admin/reports/batch_action(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_reports_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def batch_action_admin_reports_url(*args, **kwargs); end

  # Sigs for route /admin/reports(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_reports_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_reports_url(*args, **kwargs); end

  # Sigs for route /admin/reports/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_report_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_report_url(*args, **kwargs); end

  # Sigs for route /admin/admin_comments(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_admin_comments_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_admin_comments_url(*args, **kwargs); end

  # Sigs for route /admin/admin_comments/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_admin_comment_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_admin_comment_url(*args, **kwargs); end

  # Sigs for route /admin/site_settings(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_site_settings_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def admin_site_settings_url(*args, **kwargs); end

  # Sigs for route /admin/jobs
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sidekiq_web_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sidekiq_web_url(*args, **kwargs); end

  # Sigs for route /users/sign_in(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_session_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_session_url(*args, **kwargs); end

  # Sigs for route /users/sign_in(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def user_session_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def user_session_url(*args, **kwargs); end

  # Sigs for route /users/sign_out(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def destroy_user_session_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def destroy_user_session_url(*args, **kwargs); end

  # Sigs for route /users/password/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_password_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_password_url(*args, **kwargs); end

  # Sigs for route /users/password/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_user_password_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_user_password_url(*args, **kwargs); end

  # Sigs for route /users/password(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def user_password_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def user_password_url(*args, **kwargs); end

  # Sigs for route /users/cancel(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def cancel_user_registration_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def cancel_user_registration_url(*args, **kwargs); end

  # Sigs for route /users/sign_up(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_registration_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_registration_url(*args, **kwargs); end

  # Sigs for route /users/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_user_registration_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_user_registration_url(*args, **kwargs); end

  # Sigs for route /users(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def user_registration_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def user_registration_url(*args, **kwargs); end

  # Sigs for route /users/confirmation/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_confirmation_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_confirmation_url(*args, **kwargs); end

  # Sigs for route /users/confirmation(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def user_confirmation_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def user_confirmation_url(*args, **kwargs); end

  # Sigs for route /alerts/:id/confirmed(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def confirmed_alert_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def confirmed_alert_url(*args, **kwargs); end

  # Sigs for route /alerts/:id/area(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def area_alert_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def area_alert_url(*args, **kwargs); end

  # Sigs for route /alerts/:id/unsubscribe(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def unsubscribe_alert_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def unsubscribe_alert_url(*args, **kwargs); end

  # Sigs for route /alerts(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def alerts_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def alerts_url(*args, **kwargs); end

  # Sigs for route /alerts/signup(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_alert_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_alert_url(*args, **kwargs); end

  # Sigs for route /applications/:id/nearby(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def nearby_application_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def nearby_application_url(*args, **kwargs); end

  # Sigs for route /applications/search(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def search_applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def search_applications_url(*args, **kwargs); end

  # Sigs for route /applications/trending(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def trending_applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def trending_applications_url(*args, **kwargs); end

  # Sigs for route /applications/geocoding(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def geocoding_applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def geocoding_applications_url(*args, **kwargs); end

  # Sigs for route /applications/:application_id/comments/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def application_comment_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def application_comment_url(*args, **kwargs); end

  # Sigs for route /applications/:application_id/add_comments(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def application_add_comments_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def application_add_comments_url(*args, **kwargs); end

  # Sigs for route /applications/:application_id/versions(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def application_versions_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def application_versions_url(*args, **kwargs); end

  # Sigs for route /applications(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def applications_url(*args, **kwargs); end

  # Sigs for route /applications/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def application_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def application_url(*args, **kwargs); end

  # Sigs for route /comments/:id/confirmed(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def confirmed_comment_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def confirmed_comment_url(*args, **kwargs); end

  # Sigs for route /comments/writeit_reply_webhook(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def writeit_reply_webhook_comments_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def writeit_reply_webhook_comments_url(*args, **kwargs); end

  # Sigs for route /comments/:comment_id/reports(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def comment_reports_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def comment_reports_url(*args, **kwargs); end

  # Sigs for route /comments/:comment_id/reports/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_comment_report_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_comment_report_url(*args, **kwargs); end

  # Sigs for route /comments(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def comments_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def comments_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/applications/per_day(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def per_day_authority_applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def per_day_authority_applications_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/applications/per_week(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def per_week_authority_applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def per_week_authority_applications_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/applications(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_applications_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/comments/per_week(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def per_week_authority_comments_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def per_week_authority_comments_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/comments(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_comments_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_comments_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/councillor_contributions/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_authority_councillor_contribution_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_authority_councillor_contribution_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/councillor_contributions/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_councillor_contribution_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_councillor_contribution_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/under_the_hood(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_under_the_hood_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_under_the_hood_url(*args, **kwargs); end

  # Sigs for route /authorities(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authorities_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authorities_url(*args, **kwargs); end

  # Sigs for route /authorities/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_url(*args, **kwargs); end

  # Sigs for route /councillor_contributions(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def councillor_contributions_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def councillor_contributions_url(*args, **kwargs); end

  # Sigs for route /geocode_queries(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def geocode_queries_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def geocode_queries_url(*args, **kwargs); end

  # Sigs for route /geocode_queries/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def geocode_query_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def geocode_query_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/councillor_contributions/add_contributor(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def add_contributor_authority_councillor_contribution_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def add_contributor_authority_councillor_contribution_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/councillor_contributions/source(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def add_source_authority_councillor_contribution_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def add_source_authority_councillor_contribution_url(*args, **kwargs); end

  # Sigs for route /authorities/:authority_id/councillor_contributions/thank_you(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_councillor_contribution_thank_you_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def authority_councillor_contribution_thank_you_url(*args, **kwargs); end

  # Sigs for route /atdis/test(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def atdis_test_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def atdis_test_url(*args, **kwargs); end

  # Sigs for route /atdis/feed/:number/atdis/1.0/applications.json(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def atdis_feed_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def atdis_feed_url(*args, **kwargs); end

  # Sigs for route /atdis/specification(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def atdis_specification_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def atdis_specification_url(*args, **kwargs); end

  # Sigs for route /api/howto(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_howto_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_howto_url(*args, **kwargs); end

  # Sigs for route /api(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def api_url(*args, **kwargs); end

  # Sigs for route /about(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def about_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def about_url(*args, **kwargs); end

  # Sigs for route /faq(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def faq_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def faq_url(*args, **kwargs); end

  # Sigs for route /getinvolved(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def get_involved_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def get_involved_url(*args, **kwargs); end

  # Sigs for route /how_to_write_a_scraper(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def how_to_write_a_scraper_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def how_to_write_a_scraper_url(*args, **kwargs); end

  # Sigs for route /how_to_lobby_your_local_council(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def how_to_lobby_your_local_council_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def how_to_lobby_your_local_council_url(*args, **kwargs); end

  # Sigs for route /
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def address_applications_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def address_applications_url(*args, **kwargs); end

  # Sigs for route /donations/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def donations_new_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def donations_new_url(*args, **kwargs); end

  # Sigs for route /donations/create(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def donations_create_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def donations_create_url(*args, **kwargs); end

  # Sigs for route /donations(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def donations_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def donations_url(*args, **kwargs); end

  # Sigs for route /donate(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def donate_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def donate_url(*args, **kwargs); end

  # Sigs for route /
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def root_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def root_url(*args, **kwargs); end

  # Sigs for route /cuttlefish/event(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def cuttlefish_event_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def cuttlefish_event_url(*args, **kwargs); end

  # Sigs for route /theme/toggle(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def toggle_theme_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def toggle_theme_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/blobs/:signed_id/*filename(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_service_blob_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_service_blob_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_blob_representation_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_blob_representation_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/disk/:encoded_key/*filename(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_disk_service_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_disk_service_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/disk/:encoded_token(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def update_rails_disk_service_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def update_rails_disk_service_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/direct_uploads(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_direct_uploads_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_direct_uploads_url(*args, **kwargs); end
end
