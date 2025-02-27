use_bpm 90

live_loop :chords do
  use_synth :saw
  with_fx :reverb, room: 1, mix: 0.8 do
    with_fx :slicer, phase: 0.5, wave: 1 do
      play chord(:a3, :minor7), release: 4, amp: 2
      sleep 4
      play chord(:f3, :major7), release: 4, amp: 2
      sleep 4
      play chord(:c4, :major7), release: 4, amp: 2
      sleep 4
      play chord(:g3, :major7), release: 4, amp: 2
      sleep 4
    end
  end
  stop if tick >= 8
end

sleep 16

live_loop :bass do
  use_synth :fm
  with_fx :distortion, mix: 0.4 do
    play :a2, release: 1, amp: 3
    sleep 1
    play :f2, release: 1, amp: 3
    sleep 1
    play :c3, release: 1, amp: 3
    sleep 1
    play :g2, release: 1, amp: 3
    sleep 1
  end
  stop if tick >= 24
end

sleep 8

live_loop :kick do
  sample :bd_haus, amp: 4
  sleep 1
  stop if tick >= 32
end

sleep 8

live_loop :snare do
  sleep 1
  sample :perc_snap, amp: 3
  sleep 1
  stop if tick >= 48
end

sleep 8

live_loop :hats do
  sample :drum_cymbal_closed, amp: 2, rate: 1.2
  sleep 0.5
  stop if tick >= 128
end

sleep 8

live_loop :melody do
  use_synth :hollow
  with_fx :echo, phase: 0.75, decay: 4 do
    play [:a4, :f4, :c4, :g4].choose, release: 2, amp: 2
    sleep [2, 3].choose
  end
  stop if tick >= 16
end



sleep 99





sample "C:/Users/dogob/Downloads/fetch me their souls cat meme.wav" ,amp:5
sleep 4
