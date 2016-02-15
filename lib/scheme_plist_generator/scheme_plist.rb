require 'rexml/document'

module SchemePlistGenerator
  class SchemePlist
    def initialize(schemes)
      @schemes = schemes
    end

    # Returns the XML to include in the iOS plist file.
    #
    # === Example:
    #
    #  plist = SchemePlistGenerator::SchemePlist.new(%w(gmaps fbapi fbauth fbauth2))
    #  plist.to_s
    #  => "<key>LSApplicationQueriesSchemes</key>
    #     <array>
    #       <string>gmaps</string>
    #       <string>fbapi</string>
    #       <string>fbauth</string>
    #       <string>fbauth2</string>
    #     </array>"
    def to_s
      "#{key}#{array}"
    end

    private

    def key
      key = REXML::Element.new('key')
      key.text = 'LSApplicationQueriesSchemes'
      key
    end

    def array
      array = REXML::Element.new('array')

      @schemes.each do |scheme|
        string = REXML::Element.new('string')
        string.text = scheme.to_s

        array << string
      end

      array
    end
  end
end
