class Item
    if (ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
    else
        DB = PG.connect(host: "localhost", port: 5432, dbname: 'wishlist-api_development')
    end

    def self.create(opts)
        results = DB.exec_params(<<-SQL, [opts['list_id'].to_i, opts['name'], opts['image'], opts['purchased'], opts['purchased_by']])
            INSERT INTO items (list_id, name, image, purchased, purchased_by)
            VALUES ($1, $2, $3, $4, $5)
            RETURNING id, list_id, name, image, purchased, purchased_by;
        SQL
        result = results.first
        {
            'id' => result['id'].to_i,
            'list_id' => result['list_id'].to_i,
            'name' => result['name'],
            'image' => result['image'],
            'purchased' => result == 't' ? true : false,
            'purchased_by' => result['purchased_by']
        }
    end

    def self.update(id, input)
        { update: true }
    end

    def self.delete(id)
        { delete: true }
    end
end
