require 'support/read_from_file'

describe Support::ReadFromFile do
  before do
    class Wrapper
      include Support::ReadFromFile
    end

    @wrapper = Wrapper.new
  end

  describe '#each_line' do
    it 'outputs to stdout' do
      allow(@wrapper).to receive(:input_file).and_return("g2\na1\nd6")

      expect { @wrapper.each_line { |line| line + "\n" } }.to output("g2\na1\nd6\n").to_stdout
    end
  end
end
