class FeaturesController < ApplicationController
  add_breadcrumb 'breadcrumble', 'https://github.com/ma2gedev/breadcrumble'
  add_breadcrumb 'top', ->(c) { c.root_path }

  def index
    add_breadcrumb 'index', features_index_path
  end

  def multiple_breadcrumb
    add_breadcrumb_to 'breadcrumble', 'https://github.com/ma2gedev/breadcrumble', 1
    add_breadcrumb_to 'top', root_path, 1
    add_breadcrumb_to 'show', features_multiple_breadcrumb_path, 1
  end
end
