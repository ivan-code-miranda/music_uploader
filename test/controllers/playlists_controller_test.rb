require "test_helper"

class PlaylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playlist = playlists(:one)
  end

  test "should get index" do
    get playlists_url
    assert_response :success
  end

  test "should get new" do
    get new_playlist_url
    assert_response :success
  end

  test "should create playlist" do
    assert_difference('Playlist.count') do
      post playlists_url, params: { playlist: { attachment: @playlist.attachment, name: @playlist.name, song_id: @playlist.song_id, user_name: @playlist.user_name } }
    end

    assert_redirected_to playlist_url(Playlist.last)
  end

  test "should show playlist" do
    get playlist_url(@playlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_playlist_url(@playlist)
    assert_response :success
  end

  test "should update playlist" do
    patch playlist_url(@playlist), params: { playlist: { attachment: @playlist.attachment, name: @playlist.name, song_id: @playlist.song_id, user_name: @playlist.user_name } }
    assert_redirected_to playlist_url(@playlist)
  end

  test "should destroy playlist" do
    assert_difference('Playlist.count', -1) do
      delete playlist_url(@playlist)
    end

    assert_redirected_to playlists_url
  end
end
