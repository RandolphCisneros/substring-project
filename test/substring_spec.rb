require 'rspec'
require 'rspec/autorun'
require './lib/substring'

describe Substring do
    it 'returns substrings' do
        s = Substring.new("Hello World", ["Hello", "World", "Toast"])
        expect(s).to eq({"Hello" => 1, "World" => 1})
    end
end