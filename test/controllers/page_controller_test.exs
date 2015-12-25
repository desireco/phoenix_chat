defmodule HelloChannels.PageControllerTest do
  use HelloChannels.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
