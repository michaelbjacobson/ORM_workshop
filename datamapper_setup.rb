# frozen_string_literal: true

# Require gems
require 'data_mapper'
require 'dm-postgres-adapter'

# Require models
require_relative './user.rb'

# Setup DB connection
DataMapper.setup(:default, 'postgres://localhost:5432/orm_workshop')

# Finalize models (make sure to run this AFTER the models have been loaded)
DataMapper.finalize

# Refresh database schema
DataMapper.auto_upgrade!
