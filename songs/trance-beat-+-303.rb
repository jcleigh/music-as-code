# Trance beat + 303
# Coded by Jordan Cleigh

use_bpm 138

define :kick do
  sample :bd_haus, amp: 0.8
  sleep 1
end

define :snare do
  use_synth :sc808_snare
  play 65
  sleep 2
end

define :hh do
  sleep 0.5
  sample :hat_psych
  sleep 0.5
end

define :clap do
  use_synth :sc808_clap
  play 80, amp: 0.2
  sleep 2
end

live_loop :kick_loop do
  kick
end

live_loop :snare_loop do
  snare
end

live_loop :hh_loop do
  hh
end

live_loop :clap_loop do
  clap
end

use_synth :tb303
live_loop :squelch do
  use_random_seed 3000
  16.times do
    n = (ring :e1, :e2, :e3).tick
    play n, release: 0.225, cutoff: rrand(70, 130), res: 0.9, wave: rrand_i(1,2), amp: 0.5
    sleep 0.25
  end
end