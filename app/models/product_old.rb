class Product < ApplicationRecord
    after_create :insert_row
    require "elasticsearch"
    validates :name, presence: true
    validates :description, presence: true
    validates :sku, presence: true
    validates :supplier_name, presence: true
    validates :color, presence: true
    validates :size, presence: true
    validates :unit, presence: true

    def insert_row
        query = {
            "id": self.id,
            "name": self.name,
            "description": self.description,
            "supplier_name": self.supplier_name,
            "sku": self.sku,
            "color": self.color,
            "size": self.size,
            "unit": self.unit.to_s
        }
        client.index index: 'products', body: query
    end

    def product_search(search_params)
        { "query": 
            { "match": 
                {"name": search_params[:name]} 
            }
        }
        client.search(query)
    end

    def create_index
        query = {
        "mappings": {
            "properties": {
                "id": { "type": "integer" },
                "name": { "type": "keyword" },
                "description": { "type": "keyword" },
                "supplier_name": { "type": "keyword" },
                "sku": { "type": "keyword" },
                "color": { "type": "keyword" },
                "size": { "type": "keyword" },
                "unit": { "type": "keyword" },
            }
        }
        }
        client.indices.create index: 'products', body: query
    end
    private
        def client
            @client ||= Elasticsearch::Client.new hosts: [ 'http://localhost:9200']
        end
end
