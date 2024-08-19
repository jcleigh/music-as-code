# Trance beat
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