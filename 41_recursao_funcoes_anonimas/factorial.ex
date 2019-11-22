fact_gen = fn me ->
   fn
     0 -> 1
     x when x > 0 -> x * me.(me).(x - 1)
   end
end

factorial = fact_gen.(fact_gen)
factorial.(5) |> IO.inspect

factorial.(10) |> IO.inspect
