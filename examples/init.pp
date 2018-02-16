$string = local_rand_string('puppet', 64)
notify { "Generated string is: ${string}": }
