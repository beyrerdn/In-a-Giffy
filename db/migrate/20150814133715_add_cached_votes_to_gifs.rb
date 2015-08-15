class AddCachedVotesToGifs < ActiveRecord::Migration
  def self.up
    add_column :gifs, :cached_votes_total, :integer, :default => 0
    add_column :gifs, :cached_votes_score, :integer, :default => 0
    add_column :gifs, :cached_votes_up, :integer, :default => 0
    add_column :gifs, :cached_votes_down, :integer, :default => 0
    add_column :gifs, :cached_weighted_score, :integer, :default => 0
    add_column :gifs, :cached_weighted_total, :integer, :default => 0
    add_column :gifs, :cached_weighted_average, :float, :default => 0.0
    add_index  :gifs, :cached_votes_total
    add_index  :gifs, :cached_votes_score
    add_index  :gifs, :cached_votes_up
    add_index  :gifs, :cached_votes_down
    add_index  :gifs, :cached_weighted_score
    add_index  :gifs, :cached_weighted_total
    add_index  :gifs, :cached_weighted_average
  end

  def self.down
    remove_column :gifs, :cached_votes_total
    remove_column :gifs, :cached_votes_score
    remove_column :gifs, :cached_votes_up
    remove_column :gifs, :cached_votes_down
    remove_column :gifs, :cached_weighted_score
    remove_column :gifs, :cached_weighted_total
    remove_column :gifs, :cached_weighted_average
  end
end
