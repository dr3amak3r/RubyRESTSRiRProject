require "spec_helper"

module CoverageSpecs
  class DoubleBranch
    def m
      a = 1
      if a == 2
        3
      else
        2
      end

      4
    end
  end
end

describe Rubinius::Coverage do
  context "with a single branch" do
    let(:obj) { CoverageSpecs::DoubleBranch.new }
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

        it "creates a basic block at IP 0-13" do
          bb = cfg.basic_blocks[0]

          expect(bb.enter_ip).to eql(0)
          expect(bb.exit_ip).to eql(13)
        end

        it "creates a basic block at IP 14-17" do
          bb = cfg.basic_blocks[14]

          expect(bb.enter_ip).to eql(14)
          expect(bb.exit_ip).to eql(17)
        end

        it "creates a basic block at IP 18-19" do
          bb = cfg.basic_blocks[18]

          expect(bb.enter_ip).to eql(18)
          expect(bb.exit_ip).to eql(19)
        end

        it "creates a basic block at IP 20-23" do
          bb = cfg.basic_blocks[20]

          expect(bb.enter_ip).to eql(20)
          expect(bb.exit_ip).to eql(23)
        end

        it "set the count of the times the basic block was executed" do
          obj.m
          cfg.graph

          bb = cfg.basic_blocks[0]

          expect(bb.count).to eql(1)
        end

        it "sets the lines covered by the basic block" do
          lines = cfg.basic_blocks[0].lines

          expect(lines.size).to eql(3)
          expect(lines[0]).to eql(5)
          expect(lines[1]).to eql(6)
          expect(lines[2]).to eql(7)
        end
      end
    end

    describe "#coverage" do
      it "returns a map of source code lines to execution counts" do
        coverage = Rubinius::Coverage.new.coverage code

        expect(coverage.size).to eql(7)
        expect(coverage[5]).to eql(1)
        expect(coverage[6]).to eql(1)
        expect(coverage[7]).to eql(1)
        expect(coverage[8]).to eql(1)
        # TODO: fix bug generating line info for lines 9, 11, 12 in the code
        # above.
        expect(coverage[10]).to eql(1)
        expect(coverage[13]).to eql(1)
      end
    end
  end
end
