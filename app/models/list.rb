class List
    if (ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
    else
        DB = PG.connect(host: "localhost", port: 5432, dbname: 'wishlist-api_development')
    end

    def self.all
        results = DB.exec('SELECT w.* FROM wishlists w')

        results.each do |result|
            {
                'id' => result['id'].to_i,
                'name' => result['name'],
                'description' => result['description'],
                'image' => result['image']
            }
        end

    end

    def self.find id
        results = DB.exec_params(<<-SQL, [id.to_i])
            SELECT
                w.*,
                i.id AS items_id,
                i.name,
                i.image,
                i.purchased,
                i.purchased_by
            FROM wishlists w
            LEFT JOIN items i
                ON w.id = i.list_id
            WHERE w.id = $1
        SQL

        return {error: 'No results found'} if !results.first

        result = results.first
        items_list = []
        results.each do |result|
            if result['items_id']
                items_list << {
                    'id' => result['items_id'].to_i,
                    'name' => result['name'],
                    'image' => result['image'],
                    'purchased' => result['purchased'] == 't' ? true : false,
                    'purchased_by' => result['purchased_by']
                }
            end
        end
        {
            'id' => result['id'].to_i,
            'name' => result['name'],
            'description' => result['description'],
            'image' => result['image'],
            'items' => items_list
        }
    end
end
