require_relative '../string-analyzer'

describe StringAnalyzer do
    context "With valid input" do
        it "should detect when a string contains vowels" do
            sa = StringAnalyzer.new
            test_string = "Hi, how are you?"
            expect(sa.has_vowels?(test_string)).to be true
        end

        it "should detect when a string doesn't contain vowels" do
            sa = StringAnalyzer.new
            test_string = "brrr..."
            expect(sa.has_vowels?(test_string)).to be false
        end
    end
end