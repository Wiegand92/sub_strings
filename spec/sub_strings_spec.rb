require './lib/sub_strings.rb'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

describe "#sub_strings" do
  it "returns a hash listing each substring (case insensitive), and how many times it was found" do
    result = sub_strings("below", dictionary)
    expected = { "below" => 1, "low" => 1 }

    expect(result).to eql(expected)
  end

  it "is case insensitve" do
    result = sub_strings("Below", dictionary)
    expected = { "below" => 1, "low" => 1 }

    expect(result).to eql(expected)
  end

  it "only returns the proper hash" do
    other_dictionary = ["do", "on"]
    expected = { "do" => 1, "on" => 1}
    result = sub_strings("dont", other_dictionary)

    expect(result).to eql(expected)
  end

  it "handles multiple words" do
    result = sub_strings("Howdy partner, sit down! How's it going?", dictionary)
    expected = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

    expect(result).to eql(expected)
  end
end