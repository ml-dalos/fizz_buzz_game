require_relative "../../lib/fizz_buzz.rb"

describe FizzBuzz do
  describe "#run" do
    context "invalid input" do
      context "returns nil if non-digit symbols present" do
        it "aswdawd" do
          expect(described_class.new.perform("aswdawd")).to be_nil
        end

        it "1212a21" do
          expect(described_class.new.perform("1212a21")).to be_nil
        end

        it "121221a" do
          expect(described_class.new.perform("121221a")).to be_nil
        end

        it "a121221" do
          expect(described_class.new.perform("a121221")).to be_nil
        end
      end

      context "returns nil if spaces inside input" do
        it "1 210" do
          expect(described_class.new.perform("1 210")).to be_nil
        end
      end

      context "returns nil if incorrect minus" do
        it "--1210" do
          expect(described_class.new.perform("--1210")).to be_nil
        end

        it "1210-" do
          expect(described_class.new.perform("1210-")).to be_nil
        end

        it "12-10" do
          expect(described_class.new.perform("12-10")).to be_nil
        end

      end

      context "returns nil if decimal number" do
        it "12,34" do
          expect(described_class.new.perform("12,34")).to be_nil
        end

        it "12.34" do
          expect(described_class.new.perform("12.34")).to be_nil
        end
      end

      it "returns nil if empty string" do
        expect(described_class.new.perform("")).to be_nil
      end
    end

    context "valid input" do
      context "returns result if input has spaces at the beginning or at the end" do
        it "__1234" do
          expect(described_class.new.perform("  1234")).not_to be_nil
        end

        it "__1234__" do
          expect(described_class.new.perform("  1234  ")).not_to be_nil
        end

        it "1234__" do
          expect(described_class.new.perform("1234  ")).not_to be_nil
        end
      end

      it "returns FizzBuzz! if 0" do
        expect(described_class.new.perform("0")).to eq "FizzBuzz!"
      end

      it "returns 1! if 1" do
        expect(described_class.new.perform("1")).to eq "1!"
      end

      it "returns Fizz! if 3" do
        expect(described_class.new.perform("3")).to eq "Fizz!"
      end

      it "returns Buzz! if 5" do
        expect(described_class.new.perform("5")).to eq "Buzz!"
      end

      it "returns FizzBuzz! if 15" do
        expect(described_class.new.perform("15")).to eq "FizzBuzz!"
      end

      it "returns Fizz! if 4611686018427387903" do
        expect(described_class.new.perform("4611686018427387903")).to eq "Fizz!"
      end

      it "returns Buzz! if 4611686018427387905" do
        expect(described_class.new.perform("4611686018427387905")).to eq "Buzz!"
      end

      it "returns FizzBuzz! if 461168601842738805" do
        expect(described_class.new.perform("461168601842738805")).to eq "FizzBuzz!"
      end

      it "returns -1! if -1" do
        expect(described_class.new.perform("-1")).to eq "-1!"
      end

      it "returns Fizz! if -3" do
        expect(described_class.new.perform("-3")).to eq "Fizz!"
      end

      it "returns Buzz! if -5" do
        expect(described_class.new.perform("-5")).to eq "Buzz!"
      end

      it "returns FizzBuzz! if -15" do
        expect(described_class.new.perform("-15")).to eq "FizzBuzz!"
      end

      it "returns Fizz! if -4611686018427387903" do
        expect(described_class.new.perform("-4611686018427387903")).to eq "Fizz!"
      end

      it "returns Buzz! if -4611686018427387905" do
        expect(described_class.new.perform("-4611686018427387905")).to eq "Buzz!"
      end

      it "returns FizzBuzz! if -461168601842738805" do
        expect(described_class.new.perform("-461168601842738805")).to eq "FizzBuzz!"
      end
    end
  end
end
