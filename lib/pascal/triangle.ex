defmodule Pascal.Triangle do

  def generate(0) do
    []
  end

  def generate(rows) do
    generate([[0,1,0]], rows, 1)
  end

  defp generate(tri, max, current) when current >= max do
    :lists.reverse(tri)
  end

  defp generate(tri, max, current) do
    [ previous | _ ] = tri
    generate([add_row(previous) | tri], max, current + 1)
  end

  defp add_row(previous) do
    add_row(previous, 0, [])
  end

  defp add_row([],0,final) do
    [0 | final]
  end

  defp add_row([h | t], last, current) do
    add_row(t, h, [h + last | current])
  end
end