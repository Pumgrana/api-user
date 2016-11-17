require 'elasticsearch'

# http://172.17.0.2:9200/historic/pg_format/_search?q=allolemonde

class HistoryController < ActionController::API
  def list
    # client = Elasticsearch::Client.new log: true
    # client.search q: 'allolemonde'
  end
end
