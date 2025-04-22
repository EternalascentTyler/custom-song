#Firstsong 



use_bpm 90

live_loop :chrods do
  8.times do
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
  end
  stop
end

sleep 16

BASs = [:a2, :f2, :c3, :g2]
b = 0
live_loop :bass do
  24.times do
    use_synth :fm
    with_fx :distortion, mix: 0.4 do
      play BASs[b], release: 1, amp: 3
      sleep 1
      b = b + 1
      play BASs[b], release: 1, amp: 3
      sleep 1
      b = b + 1
      play BASs[b], release: 1, amp: 3
      sleep 1
      b = b + 1
      play BASs[b], release: 1, amp: 3
      sleep 1
      b = 0
    end
  end
  stop
end

sleep 8

live_loop :kick do
  32.times do
    sample :bd_haus, amp: 4
    sleep 1
  end
  stop
end

sleep 8

live_loop :snare do
  48.times do
    sleep 1
    sample :perc_snap, amp: 3
    sleep 1
  end
  stop
end

sleep 8

live_loop :hats do
  128.times do
    sample :drum_cymbal_closed, amp: 2, rate: 1.2
    sleep 0.5
  end
  stop
end

sleep 8

live_loop :melody do
  16.times do
    use_synth :hollow
    with_fx :echo, phase: 0.75, decay: 4 do
      play [:a4, :f4, :c4, :g4].choose, release: 2, amp: 2
      sleep [2, 3].choose
    end
  end
  stop
end


#Second song


define :eachNOTe do |note0, note1, x|
  play note0, amp: 0.5
  play note1, amp: 0.5
  sleep x
end

define :notepaper do |note0, note1, note2, note3, x|
  play note0, amp: 0.5
  play note1, amp: 0.5
  play note2, amp: 0.5
  play note3, amp: 0.5
  sleep x
end

live_loop :bottomNotes do
  use_bpm 151
  use_synth :pretty_bell
  with_fx :reverb, mix: 0.6, room: 0.8 do
    # Page 1 - Top
    eachNOTe :C4, :A3, 1.25
    eachNOTe :C4, :A3, 1.25
    eachNOTe :B3, :G3, 2
    eachNOTe :B3, :G3, 1.25
    eachNOTe :B3, :G3, 1.25
    eachNOTe :C4, :A3, 1.25
    eachNOTe :C4, :A3, 1.25
    eachNOTe :B3, :G3, 2
    eachNOTe :B3, :G3, 1.25
    eachNOTe :B3, :G3, 1.25
    # Page 1 - Bottom
    eachNOTe :C4, :A3, 1.25
    eachNOTe :C4, :A3, 1.25
    eachNOTe :B3, :G3, 2
    eachNOTe :B3, :G3, 1.25
    eachNOTe :B3, :G3, 1.25
    eachNOTe :A3, :F3, 1.25
    eachNOTe :A3, :F3, 1.25
    eachNOTe :A3, :F3, 4
    # Page 2 - Top
    eachNOTe :F3, :E2, 1.25
    notepaper :A5, :A3, :F3, :C3, 1.25
    notepaper :A5, :A3, :F3, :C3, 0.5
    notepaper :A5, :A3, :F3, :C3, 1.25
    notepaper :A5, :A3, :F3, :C3, 1.25
    eachNOTe :B1, :B2, 1.25
    notepaper :B3, :G3, :E3, :G4, 1.25
    notepaper :B3, :G3, :E3, :G4, 0.5
    # Page 2 - Bottom
    eachNOTe :Gs3, :Gs2, 1.25
    notepaper :Gs4, :E4, :B3, :G3, 1.25
    notepaper :G4, :E4, :B3, :G3, 0.5
    eachNOTe :A3, :A2, 1.25
    notepaper :A4, :E4, :C4, :A3, 0.5
    eachNOTe :Gs3, :Gs2, 1.25
    notepaper :Gs4, :E4, :B3, :G3, 1.25
    notepaper :G4, :E4, :B3, :G3, 1.25
    # Page 3 - Top
    eachNOTe :G3, :G2, 1.25
    notepaper :A4, :E4, :C4, :A3, 1.25
    notepaper :A4, :E4, :C4, :A3, 0.5
    eachNOTe :Gs3, :Gs2, 1.25
    notepaper :Gs4, :E4, :B3, :G3, 1.25
    notepaper :G4, :E4, :B3, :G3, 0.5
    eachNOTe :G3, :G2, 1.25
    notepaper :G4, :E4, :B3, :G3, 1.25
    notepaper :G4, :E4, :B3, :G3, 0.5
    notepaper :G4, :E4, :B3, :G3, 1.25
    notepaper :G4, :E4, :B3, :G3, 1.25
    stop
  end
end

sleep 27.5


live_loop :heavenPad do
  use_bpm 60
  use_synth :hollow
  4.times do
    with_fx :reverb, mix: 0.7, room: 0.9 do
      play_chord [:C4, :E4, :G4], release: 4
      sleep 4
      play_chord [:A3, :C4, :E4], release: 4
      sleep 4
      play_chord [:F3, :A3, :C4], release: 4
      sleep 4
      play_chord [:G3, :B3, :D4], release: 4
      sleep 4
    end
  end
  stop
end


live_loop :melody do
  use_synth :pretty_bell
  9.times do
    with_fx :echo, mix: 0.4, phase: 0.5, decay: 6 do
      play :E5, release: 1
      sleep 2
      play :G5, release: 1
      sleep 2
      play :A5, release: 1
      sleep 2
      play :C5, release: 1
      sleep 2
    end
  end
  stop
end


live_loop :heavenBass do
  use_synth :dark_ambience
  with_fx :reverb, mix: 0.6 do
    8.times do
      play :C2, release: 2, amp: 0.5
      sleep 4
      play :A1, release: 2, amp: 0.5
      sleep 4
    end
  end
  stop
end


live_loop :softKick do
  16.times do
    sample :bd_fade, amp: 0.4
    sleep 4
  end
  stop
end


live_loop :softHats do
  8.times do
    sleep 1
    sample :drum_cymbal_soft, amp: 0.2
    sleep 3
  end
  stop
end
