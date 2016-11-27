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

page "projects/oodlize/index.html", :layout => "project-layouts/oodlize"

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
activate :livereload
configure :development do
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

Time.zone = "Eastern Time (US & Canada)"

activate :blog do |blog|
    blog.prefix = "thoughts"
    blog.layout = "blog"
    blog.sources= "{year}/{month}/{title}.html"
    blog.permalink = "{year}/{month}/{title}.html"
end

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
    # Activate :minify_html
    # puts "minified html!"

    activate :autoprefixer
    activate :minify_css
    puts "Minified css!"

    # activate :minify_javascript
    # puts "Minified js!"

    # Optimize Images with middleman-imageoptim
    # activate :imageoptim
    # activate :gzip
    # puts "All zipped up!"

    # Enable cache buster
    activate :asset_hash

    # Use relative URLs
    # activate :relative_assets

    # Or use a different image path
    # set :http_prefix, "/Content/images/"
end

# Deploy configuration
activate :deploy do |deploy|
    # Rsync Deploy Method
    deploy.method = :rsync
    deploy.host = "cwervo.com"
    deploy.path = "/home/tinycarr/public_html"
    deploy.user = "tinycarr"

    # Git Deploy Method
    # deploy.method = :git
    # # Optional Settings
    # deploy.remote   = 'origin' # remote name or git url, default: origin
    # deploy.branch   = 'deploy' # default: gh-pages
    # deploy.strategy = :force_push # commit strategy: can be :force_push or :submodule, default: :force_push
    #
    # commit_message = `git log --pretty=oneline --abbrev-commit -n1`.strip
    #
    # deploy.commit_message = commit_message
end
