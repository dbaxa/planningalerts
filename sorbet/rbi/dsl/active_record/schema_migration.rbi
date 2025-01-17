# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveRecord::SchemaMigration`.
# Please instead update this file by running `bin/tapioca dsl ActiveRecord::SchemaMigration`.

# typed: true

class ActiveRecord::SchemaMigration
  include GeneratedAttributeMethods
  extend GeneratedRelationMethods

  module GeneratedAttributeMethods
    sig { void }
    def restore_version!; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_version; end

    sig { returns(T::Boolean) }
    def saved_change_to_version?; end

    sig { returns(T.nilable(::String)) }
    def version; end

    sig { params(value: ::String).returns(::String) }
    def version=(value); end

    sig { returns(T::Boolean) }
    def version?; end

    sig { returns(T.nilable(::String)) }
    def version_before_last_save; end

    sig { returns(T.untyped) }
    def version_before_type_cast; end

    sig { returns(T::Boolean) }
    def version_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def version_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def version_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def version_changed?; end

    sig { returns(T.nilable(::String)) }
    def version_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def version_previous_change; end

    sig { returns(T::Boolean) }
    def version_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def version_previously_was; end

    sig { returns(T.nilable(::String)) }
    def version_was; end

    sig { void }
    def version_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_version?; end
  end

  module GeneratedRelationMethods
    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def name(*args, &blk); end
  end
end
