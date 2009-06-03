module Macmap
  def self.map_iface_to_ip(str)
    regexes = {
      :new_iface => /^\S+([a-zA-Z]+[0-9]*)[:]?/,
      :new_ip => /(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})/
    }

    out = {}
    str.split("\n").each do |line|
      if m = line.match(regexes[:new_iface])
        @current_interface = m.to_s.gsub(/:/, "")
      end
      if @current_interface
        if i = line.match(regexes[:new_ip])
          out[@current_interface] = i.to_s
        end
      end
    end
    out
  end
  
end