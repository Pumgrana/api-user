require 'elasticsearch/model'

class History < ActiveRecord::Base
  include Elasticsearch::Model
end
