require 'digest'

module Puppet::Parser::Functions

  newfunction(:local_rand_string, :type => :rvalue) do |args|
    # Get a seed
    raise(Puppet::ParseError, 'local_rand_string(): seed argument must be a string') unless args[0].is_a?(String)
    seed = args[0]

    # Get string length
    length = 16
    if args[1] != nil
        length = args[1]
        raise(ArgumentError, 'local_rand_string(): length argument should be an integer in range of 1 to 64') unless length.is_a?(Integer) && length > 0 && length < 65
    end

    string = Facter.value(:local_rand_string_secret) + '/' + seed
    return Digest::SHA256.hexdigest(string)[0, length]
  end

end
