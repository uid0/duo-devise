class DuoDeviseAddTo<%= table_name.camelize %> < ActiveRecord::Migration
  def self.up
    change_table :<%= table_name %> do |t|
    t.string    :duo_id
    t.datetime  :last_sign_in_with_duo
    t.boolean   :duo_enabled, :default => false
    end

  add_index :<%= table_name %>, :duo_id
  end
  def self.down
    change_table :<%= table_name %> do |t|
    t.remove :duo_id, :last_sign_in_with_duo, :duo``_enabled
    end
  end
end