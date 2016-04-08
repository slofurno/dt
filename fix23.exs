defmodule N do
  def fix23(xxs), do: fix23(xxs, []) |> Enum.reverse

  def fix23([], acc), do: acc

  def fix23([x|[y|ys]], acc) when x == 2 and y == 3 do
    fix23([0|ys], [x|acc])
  end

  def fix23([x|xs], acc) do
    fix23(xs, [x|acc])
  end

  def unlucky([a,b,_,c,d]) when [a,b] == [1,3] or [c,d] == [1,3], do: true

  def unlucky(_), do: false

  def make2(xs, ys) do
    [a,b|_] = xs ++ ys
    [a,b]
  end
end

N.unlucky([1,3,3,4,5,3,2,3,1]) |> IO.inspect

N.make2([1],[3,4]) |> IO.inspect
