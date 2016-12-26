require 'elasticsearch/model'

class History < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end

History.__elasticsearch__.client = Elasticsearch::Client.new host: 'http://172.17.0.2:9200/'
History.import force: true
