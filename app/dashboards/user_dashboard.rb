# typed: strict
# frozen_string_literal: true

require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  extend T::Sig

  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = T.let({
    api_keys: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    password_salt: Field::String,
    reset_password_token: Field::String,
    remember_token: Field::String,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String,
    last_sign_in_ip: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    reset_password_sent_at: Field::DateTime,
    admin: YesNoBooleanField,
    name: Field::String,
    organisation: Field::String,
    confirmation_token: Field::String,
    confirmed_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
    unconfirmed_email: Field::String
  }.freeze, T::Hash[Symbol, T.untyped])

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = T.let(%i[
    email
    name
    organisation
    admin
  ].freeze, T::Array[Symbol])

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = T.let(%i[
    email
    name
    organisation
    admin
    unconfirmed_email
    api_keys
    created_at
    updated_at
    current_sign_in_at
    last_sign_in_at
    reset_password_sent_at
    confirmed_at
    confirmation_sent_at
    remember_created_at
    current_sign_in_ip
    last_sign_in_ip
    sign_in_count
  ].freeze, T::Array[Symbol])

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = T.let(%i[
    email
    name
    organisation
    admin
  ].freeze, T::Array[Symbol])

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = T.let({}.freeze, T::Hash[Symbol, T.untyped])

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.

  sig { params(user: User).returns(String) }
  def display_resource(user)
    user.name.presence || user.email
  end
end
