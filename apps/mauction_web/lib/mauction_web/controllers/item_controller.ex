defmodule MauctionWeb.ItemController do
  use MauctionWeb, :controller

  def index(conn, _params) do
    items = Mauction.list_items()
    render(conn, "index.html", items: items)
  end
end
