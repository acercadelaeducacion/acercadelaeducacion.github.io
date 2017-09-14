ruby -rubygems -e 'require "jekyll-import";
    JekyllImport::Importers::WordPress.run({
      "dbname"   => "acercadelaeduc",
      "user"     => "acercadelaeduc",
      "password" => "evolucion",
      "host"     => "acercadelaeducacion.com.ar",
      "port"     => "3306",
      "socket"   => "",
      "table_prefix"   => "ADLE_",
      "site_prefix"    => "",
      "clean_entities" => true,
      "comments"       => true,
      "categories"     => true,
      "tags"           => true,
      "more_excerpt"   => true,
      "more_anchor"    => true,
      "extension"      => "html",
      "status"         => ["publish"]
    })'
