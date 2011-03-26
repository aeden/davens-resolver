module Davens
  class Resolver
    # Resolves a name to a URL
    def resolve(name)
      urls = []
      resolver = Resolv::DNS.new(:nameserver => ['184.106.214.131'])
      resolver.each_resource(name, Resolv::DNS::Resource::IN::NAPTR) do |res|
        regex = res.regex
        c = regex[0,1]
        substr = regex[1,regex.length - 2]
        match, replace = substr.split(c)
        urls << name.gsub(/#{match}/, replace)
      end 
      urls
    end
  end
end
