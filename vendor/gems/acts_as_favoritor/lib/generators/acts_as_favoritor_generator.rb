# frozen_string_literal: true

require 'rails/generators'
require 'rails/generators/migration'

class ActsAsFavoritorGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  source_root(File.join(File.dirname(__FILE__), 'templates'))
  desc 'Install acts_as_favoritor'

  def self.next_migration_number(dirname)
    Time.now.utc.strftime('%Y%m%d%H%M%S')
  end

  def create_initializer
    template 'initializer.rb', 'config/initializers/acts_as_favoritor.rb'
  end

  def create_migration_file
    migration_template(
      'migration.rb.erb',
      'db/migrate/acts_as_favoritor_migration.rb',
      migration_version: migration_version
    )
  end

  def create_model
    template 'model.rb', 'app/models/favorite.rb'
  end

  private

  def migration_version
    return unless Rails.version >= '5.0.0'

    "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
  end
end