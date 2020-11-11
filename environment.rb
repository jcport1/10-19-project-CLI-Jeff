#require all of our files so they can to each other
#code here must run before any of our lib files run
#where do we call our environment file? - the bin file that's going to start everything

require 'bundler' #allows to require every gem in our gemfile & install anything missing
Bundler.require

require_relative "./lib/api"
require_relative "./lib/cli"
require_relative "./lib/model"



#means that we are requiring files in the same repo folder
#if someone else cloned your project, this means that file would still live in the same place relative to this environment file
#use whenever requiring other files inside the same repository "they have relative location to the file we're in"