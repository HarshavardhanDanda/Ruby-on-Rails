
require 'elasticsearch/model'
class Page < ApplicationRecord
  #searchkick
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  # Page.__elasticsearch__.create_index!
  # Page.import
  
  # @pages = Page.search('first').records
  # settings index: { number_of_shards: 1 } do
  #   mapping dynamic: false do
  #     indexes :title, analyzer: 'english'
  #     indexes :body, analyzer: 'english'
  #   end
  # end
  def self.search(query)
    __elasticsearch__.search(
    {
      query: {
         multi_match: {
           query: query,
           fields: [:description,:content]
         }
       }
       # more blocks will go IN HERE. Keep reading!
    })
  end

end
