#tag facts
flagdir = "/etc/tags"
ignore = ['..','.']
if File.exists?(flagdir)
    Dir.foreach(flagdir) do |flag|
        if not ignore.include? flag
            if File.size?("#{flagdir}/#{flag}")
                File.open("#{flagdir}/#{flag}") do |fd|
                    contents = fd.gets
                    Facter.add("#{flag}") do
                        setcode do
                            contents
                        end
                    end
                end
            else
                Facter.add("#{flag}") do
                    setcode do
                        true
                    end
                end
            end
        end
    end
end
