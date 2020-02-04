require 'spec_helper'
require 'yaml'

describe 'rsyslog::component::input', include_rsyslog: true do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:title) { 'myinput' }

      context 'string input' do
        let(:params) do
          {
            type: 'imudp',
            priority: 40,
            target: '50_rsyslog.conf',
            confdir: '/etc/rsyslog.d',
            config: {
              'port' => '514'
            }
          }
        end

        it do
          is_expected.to contain_concat__fragment('rsyslog::component::input::myinput').with_content(
            %r{(?x)# myinput\n
            \s*input\(type="imudp"\s*\n
            \s*port="514"\s*\n
            \s*\)\s*}
          )
        end

        it { is_expected.to contain_class('rsyslog') }
        it { is_expected.to contain_concat('/etc/rsyslog.d/50_rsyslog.conf') }
        it { is_expected.to contain_rsyslog__generate_concat('rsyslog::concat::input::myinput') }
      end
    end
  end
end
