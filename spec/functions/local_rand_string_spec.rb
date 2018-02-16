require 'spec_helper'

describe 'local_rand_string' do

  context "Invalid parameters" do
    it { should run.with_params().and_raise_error(Puppet::ParseError, /seed argument must be a string/) }
    it { should run.with_params(15).and_raise_error(Puppet::ParseError, /seed argument must be a string/) }
    it { should run.with_params('a', 0).and_raise_error(ArgumentError, /length argument should be an integer in range of 1 to 64/) }
    it { should run.with_params('a', -1).and_raise_error(ArgumentError, /length argument should be an integer in range of 1 to 64/) }
    it { should run.with_params('a', 65).and_raise_error(ArgumentError, /length argument should be an integer in range of 1 to 64/) }
  end

end
