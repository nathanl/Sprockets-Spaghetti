# 0) gem install --remote sprockets
# 1) Start with an empty public/ folder
# 2) Run this script
# 3) Look in public/ again
# 4) Read this source and make_spaghetti.js and http://getsprockets.org/installation_and_usage

require 'rubygems'
require 'sprockets'

secretary = Sprockets::Secretary.new(
  # Where concatenated script and copied assets should go
  :asset_root => 'public',

  # Any "require <something>" will look here
  :load_path => ['cooking_implements', 'groceries'],

  # Script files to process
  :source_files => ['scripts/make_spaghetti.js']
)

concatenation = secretary.concatenation
concatenation.save_to('public/concat.js')

secretary.install_assets
