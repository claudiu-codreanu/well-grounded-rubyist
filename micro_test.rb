module MicroTest
    class Test
        def self.inherited(c)
            def c.method_added(m)
                if m  =~ /test_/
                    obj = self.new
                    obj.setup if obj.respond_to? :setup
                    obj.send(m)
                end
            end
        end

        def assert_equal(expected, actual)
            if expected == actual
                puts "assertion passed"
            else
                puts "assertion failed: #{expected} != #{actual}"
            end
        end
    end
end