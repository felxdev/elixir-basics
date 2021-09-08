defmodule MiLista do
  def recorre([]), do: IO.puts("Termine.")

  def recorre([head | tail]) do
    IO.puts head
    recorre(tail)
    #Función anónima
    mi_funcion = fn(x) -> IO.puts("El valor es #{x}")
    #Función anónima corta
    mi_funcion = &(IO.puts("El valor es #{&1}"))
    #Modulo Enum función each
    Enum.each(lista, fn(n) -> IO.puts(n) end)
  end


end

lista = [1,2,3]

MiLista.recorre(lista)
