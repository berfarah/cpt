require "spec_helper"
require "cpt/resources/story/parser"

fixture = File.expand_path("../../../fixtures/story.md", __FILE__)

describe CPT::Story::Parser do
  describe ".parse" do
    subject { described_class.parse(fixture) }

    it "has a title" do
      expect(subject.title).to eq("Create a cached pivotal client")
    end

    it "has points" do
      expect(subject.points).to eq(3)
    end

    it "has a requester" do
      expect(subject.requester).to eq("berfarah")
    end

    it "has owners" do
      expect(subject.owners).to eq(%w(berfarah))
    end

    it "has labels" do
      expect(subject.labels).to eq(%w(blocked))
    end

    it "has a body" do
      expect(subject.body).to eq("## Implement stories\n\nDescription is in here\n")
    end
  end
end
