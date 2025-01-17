# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Comment`.
# Please instead update this file by running `bin/tapioca dsl Comment`.

# typed: true

class Comment
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods
  extend GeneratedRelationMethods

  module GeneratedAssociationMethods
    sig { returns(T.nilable(::Application)) }
    def application; end

    sig { params(value: T.nilable(::Application)).void }
    def application=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Application) }
    def build_application(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Application) }
    def create_application(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Application) }
    def create_application!(*args, &blk); end

    sig { returns(T.nilable(::Application)) }
    def reload_application; end

    sig { returns(T::Array[T.untyped]) }
    def report_ids; end

    sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def report_ids=(ids); end

    sig { returns(::ActiveRecord::Associations::CollectionProxy[::Report]) }
    def reports; end

    sig { params(value: T::Enumerable[::Report]).void }
    def reports=(value); end
  end

  module GeneratedAttributeMethods
    sig { returns(T.nilable(::String)) }
    def address; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def address=(value); end

    sig { returns(T::Boolean) }
    def address?; end

    sig { returns(T.nilable(::String)) }
    def address_before_last_save; end

    sig { returns(T.untyped) }
    def address_before_type_cast; end

    sig { returns(T::Boolean) }
    def address_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def address_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def address_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def address_changed?; end

    sig { returns(T.nilable(::String)) }
    def address_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def address_previous_change; end

    sig { returns(T::Boolean) }
    def address_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def address_previously_was; end

    sig { returns(T.nilable(::String)) }
    def address_was; end

    sig { void }
    def address_will_change!; end

    sig { returns(::Integer) }
    def application_id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def application_id=(value); end

    sig { returns(T::Boolean) }
    def application_id?; end

    sig { returns(T.nilable(::Integer)) }
    def application_id_before_last_save; end

    sig { returns(T.untyped) }
    def application_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def application_id_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def application_id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def application_id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def application_id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def application_id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def application_id_previous_change; end

    sig { returns(T::Boolean) }
    def application_id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def application_id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def application_id_was; end

    sig { void }
    def application_id_will_change!; end

    sig { returns(T.nilable(::String)) }
    def confirm_id; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def confirm_id=(value); end

    sig { returns(T::Boolean) }
    def confirm_id?; end

    sig { returns(T.nilable(::String)) }
    def confirm_id_before_last_save; end

    sig { returns(T.untyped) }
    def confirm_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def confirm_id_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def confirm_id_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def confirm_id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def confirm_id_changed?; end

    sig { returns(T.nilable(::String)) }
    def confirm_id_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def confirm_id_previous_change; end

    sig { returns(T::Boolean) }
    def confirm_id_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def confirm_id_previously_was; end

    sig { returns(T.nilable(::String)) }
    def confirm_id_was; end

    sig { void }
    def confirm_id_will_change!; end

    sig { returns(T.nilable(T::Boolean)) }
    def confirmed; end

    sig { params(value: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
    def confirmed=(value); end

    sig { returns(T::Boolean) }
    def confirmed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def confirmed_at; end

    sig { params(value: T.nilable(::ActiveSupport::TimeWithZone)).returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def confirmed_at=(value); end

    sig { returns(T::Boolean) }
    def confirmed_at?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def confirmed_at_before_last_save; end

    sig { returns(T.untyped) }
    def confirmed_at_before_type_cast; end

    sig { returns(T::Boolean) }
    def confirmed_at_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def confirmed_at_change; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def confirmed_at_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def confirmed_at_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def confirmed_at_in_database; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def confirmed_at_previous_change; end

    sig { returns(T::Boolean) }
    def confirmed_at_previously_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def confirmed_at_previously_was; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def confirmed_at_was; end

    sig { void }
    def confirmed_at_will_change!; end

    sig { returns(T.nilable(T::Boolean)) }
    def confirmed_before_last_save; end

    sig { returns(T.untyped) }
    def confirmed_before_type_cast; end

    sig { returns(T::Boolean) }
    def confirmed_came_from_user?; end

    sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
    def confirmed_change; end

    sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
    def confirmed_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def confirmed_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def confirmed_in_database; end

    sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
    def confirmed_previous_change; end

    sig { returns(T::Boolean) }
    def confirmed_previously_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def confirmed_previously_was; end

    sig { returns(T.nilable(T::Boolean)) }
    def confirmed_was; end

    sig { void }
    def confirmed_will_change!; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at; end

    sig { params(value: T.nilable(::ActiveSupport::TimeWithZone)).returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at=(value); end

    sig { returns(T::Boolean) }
    def created_at?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_before_last_save; end

    sig { returns(T.untyped) }
    def created_at_before_type_cast; end

    sig { returns(T::Boolean) }
    def created_at_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def created_at_change; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def created_at_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def created_at_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_in_database; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def created_at_previous_change; end

    sig { returns(T::Boolean) }
    def created_at_previously_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_previously_was; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_was; end

    sig { void }
    def created_at_will_change!; end

    sig { returns(T.nilable(::String)) }
    def email; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def email=(value); end

    sig { returns(T::Boolean) }
    def email?; end

    sig { returns(T.nilable(::String)) }
    def email_before_last_save; end

    sig { returns(T.untyped) }
    def email_before_type_cast; end

    sig { returns(T::Boolean) }
    def email_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def email_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def email_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def email_changed?; end

    sig { returns(T.nilable(::String)) }
    def email_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def email_previous_change; end

    sig { returns(T::Boolean) }
    def email_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def email_previously_was; end

    sig { returns(T.nilable(::String)) }
    def email_was; end

    sig { void }
    def email_will_change!; end

    sig { returns(T::Boolean) }
    def hidden; end

    sig { params(value: T::Boolean).returns(T::Boolean) }
    def hidden=(value); end

    sig { returns(T::Boolean) }
    def hidden?; end

    sig { returns(T.nilable(T::Boolean)) }
    def hidden_before_last_save; end

    sig { returns(T.untyped) }
    def hidden_before_type_cast; end

    sig { returns(T::Boolean) }
    def hidden_came_from_user?; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def hidden_change; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def hidden_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def hidden_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def hidden_in_database; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def hidden_previous_change; end

    sig { returns(T::Boolean) }
    def hidden_previously_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def hidden_previously_was; end

    sig { returns(T.nilable(T::Boolean)) }
    def hidden_was; end

    sig { void }
    def hidden_will_change!; end

    sig { returns(T.nilable(::Integer)) }
    def id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def id=(value); end

    sig { returns(T::Boolean) }
    def id?; end

    sig { returns(T.nilable(::Integer)) }
    def id_before_last_save; end

    sig { returns(T.untyped) }
    def id_before_type_cast; end

    sig { returns(T::Boolean) }
    def id_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def id_change; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def id_in_database; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def id_previous_change; end

    sig { returns(T::Boolean) }
    def id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def id_was; end

    sig { void }
    def id_will_change!; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def last_delivered_at; end

    sig { params(value: T.nilable(::ActiveSupport::TimeWithZone)).returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def last_delivered_at=(value); end

    sig { returns(T::Boolean) }
    def last_delivered_at?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def last_delivered_at_before_last_save; end

    sig { returns(T.untyped) }
    def last_delivered_at_before_type_cast; end

    sig { returns(T::Boolean) }
    def last_delivered_at_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def last_delivered_at_change; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def last_delivered_at_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def last_delivered_at_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def last_delivered_at_in_database; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def last_delivered_at_previous_change; end

    sig { returns(T::Boolean) }
    def last_delivered_at_previously_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def last_delivered_at_previously_was; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def last_delivered_at_was; end

    sig { void }
    def last_delivered_at_will_change!; end

    sig { returns(T.nilable(T::Boolean)) }
    def last_delivered_successfully; end

    sig { params(value: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
    def last_delivered_successfully=(value); end

    sig { returns(T::Boolean) }
    def last_delivered_successfully?; end

    sig { returns(T.nilable(T::Boolean)) }
    def last_delivered_successfully_before_last_save; end

    sig { returns(T.untyped) }
    def last_delivered_successfully_before_type_cast; end

    sig { returns(T::Boolean) }
    def last_delivered_successfully_came_from_user?; end

    sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
    def last_delivered_successfully_change; end

    sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
    def last_delivered_successfully_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def last_delivered_successfully_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def last_delivered_successfully_in_database; end

    sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
    def last_delivered_successfully_previous_change; end

    sig { returns(T::Boolean) }
    def last_delivered_successfully_previously_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def last_delivered_successfully_previously_was; end

    sig { returns(T.nilable(T::Boolean)) }
    def last_delivered_successfully_was; end

    sig { void }
    def last_delivered_successfully_will_change!; end

    sig { returns(T.nilable(::String)) }
    def name; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def name=(value); end

    sig { returns(T::Boolean) }
    def name?; end

    sig { returns(T.nilable(::String)) }
    def name_before_last_save; end

    sig { returns(T.untyped) }
    def name_before_type_cast; end

    sig { returns(T::Boolean) }
    def name_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def name_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def name_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def name_changed?; end

    sig { returns(T.nilable(::String)) }
    def name_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def name_previous_change; end

    sig { returns(T::Boolean) }
    def name_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def name_previously_was; end

    sig { returns(T.nilable(::String)) }
    def name_was; end

    sig { void }
    def name_will_change!; end

    sig { void }
    def restore_address!; end

    sig { void }
    def restore_application_id!; end

    sig { void }
    def restore_confirm_id!; end

    sig { void }
    def restore_confirmed!; end

    sig { void }
    def restore_confirmed_at!; end

    sig { void }
    def restore_created_at!; end

    sig { void }
    def restore_email!; end

    sig { void }
    def restore_hidden!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_last_delivered_at!; end

    sig { void }
    def restore_last_delivered_successfully!; end

    sig { void }
    def restore_name!; end

    sig { void }
    def restore_text!; end

    sig { void }
    def restore_updated_at!; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_address; end

    sig { returns(T::Boolean) }
    def saved_change_to_address?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_application_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_application_id?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_confirm_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_confirm_id?; end

    sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
    def saved_change_to_confirmed; end

    sig { returns(T::Boolean) }
    def saved_change_to_confirmed?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_confirmed_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_confirmed_at?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_created_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_created_at?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_email; end

    sig { returns(T::Boolean) }
    def saved_change_to_email?; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def saved_change_to_hidden; end

    sig { returns(T::Boolean) }
    def saved_change_to_hidden?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_last_delivered_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_last_delivered_at?; end

    sig { returns(T.nilable([T.nilable(T::Boolean), T.nilable(T::Boolean)])) }
    def saved_change_to_last_delivered_successfully; end

    sig { returns(T::Boolean) }
    def saved_change_to_last_delivered_successfully?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_name; end

    sig { returns(T::Boolean) }
    def saved_change_to_name?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_text; end

    sig { returns(T::Boolean) }
    def saved_change_to_text?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_updated_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_updated_at?; end

    sig { returns(T.nilable(::String)) }
    def text; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def text=(value); end

    sig { returns(T::Boolean) }
    def text?; end

    sig { returns(T.nilable(::String)) }
    def text_before_last_save; end

    sig { returns(T.untyped) }
    def text_before_type_cast; end

    sig { returns(T::Boolean) }
    def text_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def text_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def text_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def text_changed?; end

    sig { returns(T.nilable(::String)) }
    def text_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def text_previous_change; end

    sig { returns(T::Boolean) }
    def text_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def text_previously_was; end

    sig { returns(T.nilable(::String)) }
    def text_was; end

    sig { void }
    def text_will_change!; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at; end

    sig { params(value: T.nilable(::ActiveSupport::TimeWithZone)).returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at=(value); end

    sig { returns(T::Boolean) }
    def updated_at?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_before_last_save; end

    sig { returns(T.untyped) }
    def updated_at_before_type_cast; end

    sig { returns(T::Boolean) }
    def updated_at_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def updated_at_change; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def updated_at_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def updated_at_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_in_database; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def updated_at_previous_change; end

    sig { returns(T::Boolean) }
    def updated_at_previously_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_previously_was; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_was; end

    sig { void }
    def updated_at_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_address?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_application_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_confirm_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_confirmed?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_confirmed_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_created_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_email?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_hidden?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_last_delivered_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_last_delivered_successfully?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_name?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_text?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_updated_at?; end
  end

  module GeneratedRelationMethods
    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def confirmed(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def in_past_week(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def visible(*args, &blk); end
  end
end
