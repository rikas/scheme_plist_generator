require 'scheme_plist_generator/version'
require 'scheme_plist_generator/scheme_plist'

module SchemePlistGenerator
  def self.generate(schemes)
    SchemePlist.new(schemes).to_s
  end
end
