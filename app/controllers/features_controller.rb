class FeaturesController < ApplicationController
  add_breadcrumb 'breadcrumble', 'https://github.com/ma2gedev/breadcrumble'
  add_breadcrumb 'top', ->(c) { c.root_path }

  def index
    add_breadcrumb 'index', features_index_path
  end

  def show
  end
end
