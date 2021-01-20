def get_command_line_argument
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end
domain = get_command_line_argument
dns_raw = File.readlines("zone.txt")

def parse_dns(dns_raw)
  records = {}
  dns_raw
  .map {|record| record.strip.split(', ')}
  .each { |record| records[record[1].to_sym] = { :type => record[0], :destination =>record[2] }  }
  return records
end

def resolve(dns_records, lookup_chain, domain)
  if dns_records[domain.to_sym] == nil
      lookup_chain.push("The domain '#{domain}' does not exist in our records." )
  else
      record = dns_records[domain.to_sym]
      if record[:type] == "A"
          lookup_chain.push(record[:destination])
      elsif record[:type] == "CNAME"
          lookup_chain.push(record[:destination])
          resolve(dns_records, lookup_chain, record[:destination])
      else
          lookup_chain.push("Record type not valid. Type should either be 'A' or 'CNAME'")
      end
  end
end

dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")
