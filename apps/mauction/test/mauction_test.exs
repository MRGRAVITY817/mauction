defmodule MauctionTest do
  use ExUnit.Case
  doctest Mauction

  alias Mauction.FakeRepo
  alias Mauction.Item

  test "gets all items" do
    assert FakeRepo.all(Item) == [
             %Mauction.Item{
               id: 1,
               title: "My first item",
               description: "A tasty item sure to please",
               ends_at: ~N[2020-01-01 00:00:00]
             },
             %Mauction.Item{
               id: 2,
               title: "WarGames Bluray",
               description: "The best computer movie of all time, now on Bluray!",
               ends_at: ~N[2018-10-15 13:39:35]
             },
             %Mauction.Item{
               id: 3,
               title: "U2 - Achtung Baby on CD",
               description: "The sound of 4 men chopping down The Joshua Tree",
               ends_at: ~N[2018-11-05 03:12:29]
             }
           ]
  end

  test "gets an item by id" do
    assert FakeRepo.get!(Item, 2) == %Mauction.Item{
             id: 2,
             title: "WarGames Bluray",
             description: "The best computer movie of all time, now on Bluray!",
             ends_at: ~N[2018-10-15 13:39:35]
           }
  end

  test "gets items by partial info" do
    assert FakeRepo.get_by(Item, %{id: 2}) == %Mauction.Item{
             id: 2,
             title: "WarGames Bluray",
             description: "The best computer movie of all time, now on Bluray!",
             ends_at: ~N[2018-10-15 13:39:35]
           }
  end
end
