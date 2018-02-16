Facter.add('local_rand_string_secret') do

  setcode do

    secretFile = Facter.value(:puppet_vardir) + '/local_rand_string.secret'
    if ! File.exists?(secretFile)
      File.open(secretFile, 'w') { |file|
        string = (0...64).map { (65 + rand(26)).chr }.join
        file.write(string)
      }
      FileUtils.chmod(0600, secretFile)
    end

    File.read(secretFile)
  end

end
