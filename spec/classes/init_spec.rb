require 'spec_helper'

describe 'orlo' do
  context 'with defaults for all parameters' do
    it { should contain_class('orlo') }
    it { should contain_class('orlo::params') }
  end

  context 'with manage_package => true' do
    let(:params) { {:manage_package => true} }
    it { should contain_class('orlo::install') }
  end

  context 'with manage_service => true' do
    let(:params) { {:manage_service => true} }
    it { should contain_class('orlo::service') }
  end

  context 'with defaults for all parameters' do
    it { should contain_class('orlo::config') }
    it { should contain_ini_setting('[db] uri') }
  end

  context 'with an additional config hash' do
    let(:params) { {:config_hash => {'foo' => {'bar' => 'boz'}} } }
    it { should contain_class('orlo::config') }
    it { should contain_ini_setting('[foo] bar') }
    it { should contain_ini_setting('[db] uri') }
  end
end

# vim:sw=2:ts=2:et:
