###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Reload the browser automatically whenever files change
configure :development do
    activate :livereload
end

set :markdown_engine, :kramdown
set :markdown, :smartypants => true
activate :syntax , line_numbers: true

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
    activate :minify_html
    puts "minified html!"
    activate :autoprefixer
    activate :minify_css
    puts "minified css!"
    activate :minify_javascript
    puts "minified js!"
    activate :gzip

    # Enable cache buster
    activate :asset_hash

    # Use relative URLs
    # activate :relative_assets

    # Or use a different image path
    # set :http_prefix, "/Content/images/"
end

# Deploy configuration
activate :deploy do |deploy|
    deploy.method = :git
    # Optional Settings
    deploy.remote   = 'git@github.com:AndresCuervo/andrescuervo.github.io.git' # remote name or git url, default: origin
    deploy.branch   = 'master' # default: gh-pages
    # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push

    commit_message = `git log --pretty=oneline --abbrev-commit -n1`.strip

    deploy.commit_message = commit_message
end
