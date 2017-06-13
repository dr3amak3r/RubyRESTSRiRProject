require "spec_helper"

module CoverageSpecs
  class Single
    def m
      a = 1
      b = 2
      c = a + b
      c.to_s
    end
  end
end

describe Rubinius::Coverage do
  context "with a single basic block" do
    let(:obj) { CoverageSpecs::Single.new }
    let(:code) { obj.method(:m).executable }

    describe Rubinius::Coverage::CFG do
      let(:cfg) { Rubinius::Coverage::CFG.new code, code.call_sites }

      before do
        cfg.graph
      end

      describe "#graph" do
        it "creates a single BasicBlock instance" do
          expect(cfg.basic_blocks.size).to eql(2)
        end

        it "sets the enter and exit IP for the basic block" do
          bb = cfg.basic_blocks[0]

          expect(bb.enter_ip).to eql(0)
          expect(bb.exit_ip).to eql(24)
        end

        it "set the count of the times the basic block was executed" do
          obj.m
          cfg.graph

          bb = cfg.basic_blocks[0]

          expect(bb.count).to eql(1)
        end

        it "sets the lines covered by the basic block" do
          lines = cfg.basic_blocks[0].lines

          expect(lines.size).to eql(5)
          expect(lines[0]).to eql(5)
          expect(lines[1]).to eql(6)
          expect(lines[2]).to eql(7)
          expect(lines[3]).to eql(8)
          expect(lines[4]).to eql(9)
        end
      end
    end

    describe "#coverage" do
      it "returns a map of source code lines to execution counts" do
        coverage = Rubinius::Coverage.new.coverage code

        expect(coverage.size).to eql(5)
        expect(coverage[5]).to eql(1)
        expect(coverage[6]).to eql(1)
        expect(coverage[7]).to eql(1)
        expect(coverage[8]).to eql(1)
        expect(coverage[9]).to eql(1)
      end
    end
  end
end
