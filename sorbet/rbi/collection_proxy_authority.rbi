# typed: strict

# TODO: This should be removed when collection_proxy.rbi is removed

# These are truly horrible hacks as we're defining this on all the generic types

class ActiveRecord::Associations::CollectionProxy < ::ActiveRecord::Relation
  def recent; end
  def with_first_version; end
  def with_current_version; end
end
