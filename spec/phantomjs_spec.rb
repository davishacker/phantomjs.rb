require 'phantomjs'

describe Phantomjs do
  describe ".run" do
    it "runs phantomjs binary with the correct arguments" do
      script = File.expand_path('./spec/runner.js')
      result = Phantomjs.run(script, 'foo1', 'foo2')
      result.should eq("bar foo1 foo2\n")
    end
  end
end
