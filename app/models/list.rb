class List
    if (ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
    else
        DB = PG.connect(host: "localhost", port: 5432, dbname: 'wishlist-api_development')
    end

    def self.all
        results = DB.exec('SELECT * FROM wishlists;')

        results.map do |result|
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
                i.name AS items_name,
                i.image AS items_image,
                i.purchased,
                i.purchased_by
            FROM wishlists w
            LEFT JOIN items i
                ON w.id = i.list_id
            WHERE w.id = $1;
        SQL

        return {error: 'No results found'} if !results.first

        items_list = []
        results.each do |result|
            if result['items_id']
                items_list << {
                    'id' => result['items_id'].to_i,
                    'list_id' => result['id'].to_i,
                    'name' => result['items_name'],
                    'image' => result['items_image'],
                    'purchased' => result['purchased'] == 't' ? true : false,
                    'purchased_by' => result['purchased_by']
                }
            end
        end
        {
            'id' => results.first['id'].to_i,
            'name' => results.first['name'],
            'description' => results.first['description'],
            'image' => results.first['image'],
            'items' => items_list
        }
    end

    def self.create opts
        results = DB.exec_params(<<-SQL, [opts['name'], opts['description'], opts['image']])
            INSERT INTO wishlists (name, description, image)
            VALUES ($1, $2, $3)
            RETURNING id, name, description, image;
        SQL

        {
            'id' => results.first['id'].to_i,
            'name' => results.first['name'],
            'description' => results.first['description'],
            'image' => results.first['image']
        }
    end

    def self.update (id, opts)
        results = DB.exec_params(<<-SQL, [id.to_i, opts['name'], opts['description'], opts['image']])
            UPDATE wishlists
            SET name = $2, description = $3, image = $4
            WHERE id = $1
            RETURNING id, name, description, image;
        SQL

        result = results.first
        {
            'id' => result['id'].to_i,
            'name' => result['name'],
            'description' => result['description'],
            'image' => result['image']
        }
    end

    def self.delete id
        results = DB.exec_params('DELETE FROM wishlists WHERE id = $1', [id.to_i])
        {'deleted' => true}
    end

    def self.random
        results = DB.exec(
            <<-SQL
                SELECT id
                FROM wishlists
                ORDER BY RANDOM()
                LIMIT 1;
            SQL
        )

        result = self.find (results.first['id'])
        result['items'].shuffle!
        result
    end
end
