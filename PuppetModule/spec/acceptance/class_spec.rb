require 'spec_helper_acceptance'

describe '${project_name} class' do

  context 'default parameters' do
    it 'should work with no errors' do
      pp = <<-EOS
      class { '${project_name}': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      expect(apply_manifest(pp, :catch_failures => true).exit_code).to be_zero
    end
  end

end
