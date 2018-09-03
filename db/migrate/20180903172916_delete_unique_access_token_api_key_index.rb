require 'carto/db/migration_helper'

include Carto::Db::MigrationHelper

migration(
  Proc.new do
    drop_index :oauth_access_tokens, :api_key_id
    add_index :oauth_access_tokens, :api_key_id
  end,
  Proc.new do
    drop_index :oauth_access_tokens, :api_key_id
    add_index :oauth_access_tokens, :api_key_id, unique: true
  end
)
