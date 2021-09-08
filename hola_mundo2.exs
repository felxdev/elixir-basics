defmodule IntroElixir2 do

  def saludar, do: "Hola " <> "mundo!"

  def saludar(valor) when is_number(valor) do
    "Tu nombre es un numero? #{valor}"
  end

  def saludar("Ana") do
    "Hola de nuevo Ana"
  end

  def saludar(nombre) do
    "Encantado de conocerte #{nombre}"
  end

  def saludar(valor) when is_number(valor) and valor < 0 do
    "Qué negativo eres #{valor}"
  end

  defp lista do
    lista = [1, 2, 3]
    lista2 = [1 | [2 | [3 | []]]]
  end
end

#Pipes
-100
|>IntroElixir2.saludar()
|>IO.puts()
