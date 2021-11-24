class DeCommenter
    def self.decomment(fin, fout, regex = /\A\s*#/)
        fin.each do |line|
            fout.print line unless line =~ regex
        end
    end
end