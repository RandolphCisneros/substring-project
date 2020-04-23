require 'rspec'
require 'rspec/autorun'
require './lib/substring'

describe Substring do
    before(:each) do
        @s = Substring.new
    end

    it 'returns substrings' do
        expect(@s.substrings("Hello World", ["Hello", "World"])).to eq({"Hello" => 1, "World" => 1})
    end

    it 'returns substrings' do
        expect(@s.substrings("Hello World, World", ["Hello", "World"])).to eq({"Hello" => 1, "World" => 2})
    end

    it 'gets count for dictionary' do
        dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
        expect(@s.substrings("below", dictionary)).to eq({"below" => 1, "low" => 1})
    end

    it 'works for multiple words' do
        dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
        expect(@s.substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq({"down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1})
    end
end