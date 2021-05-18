require "shrine"
require "shrine/storage/file_system"
require "shrine/storage/s3"
require "shrine/plugins/presign_endpoint"
require "uppy/s3_multipart"

if Rails.env.development? || Rails.env.test? || ENV['AWS_ACCESS_KEY_ID'].empty?
  Shrine.storages = {
    cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
    store: Shrine::Storage::FileSystem.new("public", prefix: "uploads"),
  }
else
  s3_options = {
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: ENV['S3_REGION'] || "ap-northeast-1",
    bucket: ENV['S3_BUCKET'] || "dummy"
  }

  Shrine.storages = {
    video_file: Shrine::Storage::S3.new(prefix: "video_file", **s3_options),
    cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
    store: Shrine::Storage::S3.new(**s3_options),
  }
end


Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data
Shrine.plugin :restore_cached_data
Shrine.plugin :uppy_s3_multipart
