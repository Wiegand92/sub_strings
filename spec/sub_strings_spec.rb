require './lib/sub_strings.rb'

describe "#sub_strings" do
  it "returns a hash listing each substring (case insensitive), and how many times it was found" do
    dictionary = ["or", "for", "get"]
    string = "forget"
    result = sub_strings(string, dictionary)
    expected = {"or" => 1, "for" => 1, "get" => 1}

    expect(result).to eql(expected)
  end

  it "only returns the proper hash" do
    dictionary = ["do", "on"]
    string = "dont"
    expected = { "do" => 1, "on" => 1}
    result = sub_strings(string, dictionary)

    expect(result).to eql(expected)
  end
end