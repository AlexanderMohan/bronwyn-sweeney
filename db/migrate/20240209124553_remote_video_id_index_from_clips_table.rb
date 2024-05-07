class RemoteVideoIdIndexFromClipsTable < ActiveRecord::Migration[7.0]
  def change
    remove_index :clips, :video_id
  end
end
