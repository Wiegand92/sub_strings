require './lib/sub_strings.rb'

describe "#sub_strings" do
  dictionary = ["or", "for", "get"]
  string = "forget"
  it "returns a hash listing each substring (case insensitive), and how many times it was found" do
    result = sub_strings(string, dictionary)
    expected = {"or" => 1, "for" => 1, "get" => 1}

    expect(result).to eql(expected)
  end
end