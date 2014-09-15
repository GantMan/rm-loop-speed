class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

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

    true

  end
end
