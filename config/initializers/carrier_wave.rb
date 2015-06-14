CarrierWave.configure do |config|
  config.fog_credentials = { 
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAIMWOCP3CBWU4KKEA',
      :aws_secret_access_key  => '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',
  }
  config.fog_directory  = 'preparemyexam'
end