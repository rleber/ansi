require 'stringio'
require 'ansi/progressbar'

testcase ANSI::Progressbar do

  unit :initialize do
    stio = StringIO.new
    pbar = ANSI::Progressbar.new("Test Bar", 10, stio) do |b|
      b.style(:title => [:red], :bar=>[:blue])
    end
    10.times do |i|
      sleep 0.1
      pbar.inc
    end
    true
  end

end
