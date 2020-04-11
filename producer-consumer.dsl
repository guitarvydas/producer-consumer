

machine producer [] [out]
  intially
    send out {t}
  end initially
end machine

machine consumer [in] []
  state idle: on in: emit($in)
end machine

schematic
  [  p : producer   c : consumer ]
  p.out -> c.in
end schematic
