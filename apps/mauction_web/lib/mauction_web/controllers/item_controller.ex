defmodule MauctionWeb.ItemController do
  use MauctionWeb, :controller

  def index(conn, _params) do
    items = Mauction.list_items()
    render(conn, "index.html", items: items)
  end

  def show(conn, %{"id" => id}) do
    item = Mauction.get_item(id)
    render(conn, "show.html", item: item)
  end
end
