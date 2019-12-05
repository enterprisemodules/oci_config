# frozen_string_literal: true

module Puppet_X
  module EnterpriseModules
    module Oci
      # Docs
      module Config
        Puppet_X::EnterpriseModules::Settings::SETTINGS_FILE = '/etc/oci_tenant.yaml'

        def tenant_config(tenant = nil)
          OCI.logger = Logger.new(STDOUT) if ENV['OCI_CONFIG_DEBUG']
          tenant = self.tenant if tenant.nil?
          config_for_settings(tenant)
        end

        def retry_config
          OCI::Retry::RetryConfig.new(
            :base_sleep_time_millis => 1000,
            :exponential_growth_factor => 2,
            :sleep_calc_millis_proc => ->(_, _) { 1000 },
            :max_attempts => 20,
            :max_elapsed_time_millis => 300_000,
            :max_sleep_between_attempts_millis => 1000,
            :should_retry_exception_proc => ->(data) do
              return false unless data.last_exception.status_code == 404

              request = data.last_exception.request_made
              Puppet.debug "retrying #{request.method} on #{request.path} for #{data.current_attempt_number + 1} time..."
              true
            end
          )
        end

        def settings_for(tenant)
          configuration.fetch(tenant)
        end

        def config_for_settings(tenant)
          extend(EasyType::Encryption)
          settings = settings_for(tenant)
          config = OCI::Config.new
          config.tenancy      = settings['tenancy_ocid']
          config.user         = settings['user_ocid']
          config.fingerprint  = settings['fingerprint']
          config.key_content  = decrypted_value(settings['private_key'])
          config.pass_phrase  = decrypted_value(settings['private_key_password']) if settings['private_key_password']
          config.region       = settings['region']
          config
        end
      end
    end
  end
end
