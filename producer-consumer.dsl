machine producer
  intially
    send out {t}
  end initially
end machine

machine consumer
  state idle: on in: emit($in)
end machine

schematic
  [  p : producer   c : consumer ]
  p | c
end schematic
