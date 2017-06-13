require "spec_helper"

module CoverageSpecs
  class LoopBranch
    def m
      i = 1
      while i < 10
        2
        i += 1
      end

      4
    end
  end
end

describe Rubinius::Coverage do
  context "with a loop branch" do
    let(:obj) { CoverageSpecs::LoopBranch.new }
    let(:code) { obj.method(:m).executable }

    describe Rubinius::Coverage::CFG do
      let(:cfg) { Rubinius::Coverage::CFG.new code, code.call_sites }

      before do
        cfg.graph
      end

      describe "#graph" do
        it "creates five BasicBlock instances" do
          expect(cfg.basic_blocks.size).to eql(5)
        end

        it "creates a basic block at IP 0-4" do
          bb = cfg.basic_blocks[0]

          expect(bb.enter_ip).to eql(0)
          expect(bb.exit_ip).to eql(4)
        end

        it "creates a basic block at IP 5-13" do
          bb = cfg.basic_blocks[5]

          expect(bb.enter_ip).to eql(5)
          expect(bb.exit_ip).to eql(13)
        end

        it "creates a basic block at IP 14-29" do
          bb = cfg.basic_blocks[14]

          expect(bb.enter_ip).to eql(14)
          expect(bb.exit_ip).to eql(29)
        end

        it "creates a basic block at IP 30-34" do
          bb = cfg.basic_blocks[30]

          expect(bb.enter_ip).to eql(30)
          expect(bb.exit_ip).to eql(34)
        end

        it "set the count of the times the basic block was executed" do
          obj.m
          cfg.graph

          bb = cfg.basic_blocks[0]

          expect(bb.count).to eql(1)
        end

        it "sets the lines covered by the basic block" do
          lines = cfg.basic_blocks[0].lines

          expect(lines.size).to eql(2)
          expect(lines[0]).to eql(5)
          expect(lines[1]).to eql(6)
        end
      end
    end

    describe "#coverage" do
      it "returns a map of source code lines to execution counts" do
        coverage = Rubinius::Coverage.new.coverage code

        expect(coverage.size).to eql(7)
        expect(coverage[5]).to eql(1)
        expect(coverage[6]).to eql(1)
        expect(coverage[7]).to eql(10)
        expect(coverage[8]).to eql(9)
        expect(coverage[9]).to eql(9)
        # TODO: fix bug generating line info for lines 10, 11, 12 in the code
        # above.
      end
    end
  end
end
