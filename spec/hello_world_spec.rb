class HelloWorld
    def say_hello
        "Hello World!"
    end
end

describe HelloWorld do
    context "When testing the HelloWorld class" do
        it "Should say 'Hello World!' when we call the say_hello method" do
            hw = HelloWorld.new
            msg = hw.say_hello
            expect(msg).to eq "Hello World!"
        end
    end
end