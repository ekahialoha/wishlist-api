class Item
    if (ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
    else
        DB = PG.connect(host: "localhost", port: 5432, dbname: 'wishlist-api_development')
    end

    def self.create(input)
        { create: true }
    end

    def self.update(id, input)
        { update: true }
    end

    def self.delete(id)
        { delete: true }
    end
end
