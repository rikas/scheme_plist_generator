require 'spec_helper'

describe SchemePlistGenerator do
  it 'has a version number' do
    expect(SchemePlistGenerator::VERSION).not_to be nil
  end

  describe '.generate' do
    it 'generates the xml correctly' do
      list = %w(one two)

      result = described_class.generate(list)

      expected = '<key>LSApplicationQueriesSchemes</key>'
      expected << '<array><string>one</string><string>two</string></array>'

      expect(result).to eq(expected)
    end
  end
end
