defmodule MiLista do
  def recorre([]), do: IO.puts "Termine"

  def recorre([head | tail]) do
    IO.puts head
    recorre(tail)
  end
end

lista=[1,2,3]

MiLista.recorre(lista)
