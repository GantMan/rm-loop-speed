class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    if ENV['mode'] == "release"
      puts "*" * 100
      puts " Testing Loop Speeds in RubyMotion"
      puts "    Benchmark 1 uses `for i in 1..n`"
      puts "    Benchmark 2 uses `n.times`"
      puts "    Benchmark 3 uses `1.upto(n)`"
      puts "*" * 100
      puts ""

      n = 5000
      puts "Testing with n = #{n}"
      Benchmark.bm do |x|
        x.report { for i in 1..n; a = "1"; end }
        x.report { n.times do   ; a = "1"; end }
        x.report { 1.upto(n) do ; a = "1"; end }
      end
      puts "-" * 100

      n = 50000
      puts "Testing with n = #{n}"
      Benchmark.bm do |x|
        x.report { for i in 1..n; a = "1"; end }
        x.report { n.times do   ; a = "1"; end }
        x.report { 1.upto(n) do ; a = "1"; end }
      end
      puts "-" * 100

      n = 500000
      puts "Testing with n = #{n}"
      Benchmark.bm do |x|
        x.report { for i in 1..n; a = "1"; end }
        x.report { n.times do   ; a = "1"; end }
        x.report { 1.upto(n) do ; a = "1"; end }
      end
      puts "-" * 100

      n = 5000000
      puts "Testing with n = #{n}"
      Benchmark.bm do |x|
        x.report { for i in 1..n; a = "1"; end }
        x.report { n.times do   ; a = "1"; end }
        x.report { 1.upto(n) do ; a = "1"; end }
      end
      puts "-" * 100


    else
      puts "You must run with mode=release"
      puts "i.e. `bundle exec rake mode=release`"
    end

    true
  end
end
