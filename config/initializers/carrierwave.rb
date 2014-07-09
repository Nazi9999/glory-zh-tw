
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => y.aws_access_key_id,
    :aws_secret_access_key  => y.aws_secret_access_key,
    :region                 => y.aws_region_carrierwave
  }
  config.fog_directory  = y.aws_bucket_carrierwave
  config.fog_host       = y.aws_host_carrierwave
  config.fog_public     = true                                # optional, defaults to true
end



# Fix carrierwave-meta + fog
module CarrierWave
  module Storage
    class Fog
      class File
        def original_filename
          ::File.basename(path)
        end
      end
    end
  end
end
