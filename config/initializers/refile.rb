require "refile/s3"

aws = {
  access_key_id: "amazon_access_key",
  secret_access_key: "amazon_secret_key",
  region: "amazon_region",
  bucket: "amazon_bucket"
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
