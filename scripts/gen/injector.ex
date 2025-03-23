defmodule SciEx.Gen.Injector do
  def inject_between(path, marker1, marker2, code_to_inject) do
    text = File.read!(path)

    [head, rest] = String.split(text, marker1)
    [_middle, tail] = String.split(rest, marker2)

    new_text = [
      head,
      marker1,
      code_to_inject,
      marker2,
      tail
    ]

    File.write(path, new_text)
  end
end
