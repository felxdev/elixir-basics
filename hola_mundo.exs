defmodule IntroElixir do

  #saludar/0
  def saludar, do: "Hola Mundo!"

  #Guard. saludar/1
  def saludar(valor) when is_number(valor) and valor < 0 do
    "Que negativo eres #{valor}"
  end

  #Guard. saludar/1
  def saludar(valor) when is_number(valor) do
    "Tu nombre es un numero? #{valor}"
  end

  #Pattern machine. saludar/1
  def saludar("Ana") do
    "Hola de nuevo Ana"
  end

  #saludar/1
  def saludar(nombre) do
    "Encantado de conocerte #{nombre}"
  end

  defp despedir do
    "Adios"
  end
end

IO.puts(IntroElixir.saludar)
IO.puts(IntroElixir.saludar("Ana"))
IO.puts(IntroElixir.saludar("Felix"))
IntroElixir.saludar("Felix") |> IO.puts
IO.puts(IntroElixir.saludar(3))

#PIPES
-100
|>IntroElixir.saludar()
|>IO.puts()
