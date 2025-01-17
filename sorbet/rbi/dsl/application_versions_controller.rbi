# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ApplicationVersionsController`.
# Please instead update this file by running `bin/tapioca dsl ApplicationVersionsController`.

# typed: true

class ApplicationVersionsController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::ActionView::Helpers::CaptureHelper
    include ::ActionView::Helpers::OutputSafetyHelper
    include ::ActionView::Helpers::TagHelper
    include ::ActionView::Helpers::UrlHelper
    include ::ActionView::Helpers::DateHelper
    include ::ActionView::Helpers::AssetUrlHelper
    include ::ActionView::Helpers::AssetTagHelper
    include ::ActionView::Helpers::SanitizeHelper
    include ::ActionView::Helpers::TextHelper
    include ::ApplicationHelper
    include ::Admin::ApplicationHelper
    include ::AlertMailerHelper
    include ::ApplicationsHelper
    include ::ActionDispatch::Routing::PolymorphicRoutes
    include ::ActionDispatch::Routing::UrlFor
    include ::GeneratedUrlHelpersModule
    include ::GeneratedPathHelpersModule
    include ::ApiHowtoHelper
    include ::AtdisHelper
    include ::AuthoritiesHelper
    include ::CommentsHelper
    include ::SignupHelper
    include ::StaticHelper
    include ::DeviseHelper

    sig { returns(T.untyped) }
    def current_theme; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
