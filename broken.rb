in_thread do
  loop do
    use_synth :fm
    play 60, amp: 0.25, release: 0.25
    sleep 1
  end
end

in_thread do
  loop do
    use_synth :dark_ambience
    sleep 0.5
    play 60
    sleep 0.5
  end
end

define :foo do |n, rel|
  play 55
  sleep 1
  3.times do
    play 55, release: 0.5
    sleep 0.5
    play 53, release: 0.5
    sleep 0.5
  end
  play n, release: rel
  sleep 1
end

loop do
  foo 58, 0.25
  foo 60, 0.25
  foo 51, 0.75
  sleep 2
end
