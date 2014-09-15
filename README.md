rm-loop-speed
=============

Testing loop speeds in RubyMotion

You must run with `mode=release` for real results.

i.e. `bundle exec rake mode=release`

### Example output

```shell
****************************************************************************************************
 Testing Loop Speeds in RubyMotion
    Benchmark 1 uses `for i in 1..n`
    Benchmark 2 uses `n.times`
    Benchmark 3 uses `1.upto(n)`
****************************************************************************************************

Testing with n = 5000

      user     system      total        real
  0.000000   0.000000   0.000000 (  0.001958)
  0.000000   0.000000   0.000000 (  0.001119)
  0.000000   0.000000   0.000000 (  0.001049)
----------------------------------------------------------------------------------------------------
Testing with n = 50000

      user     system      total        real
  0.020000   0.000000   0.020000 (  0.017307)
  0.010000   0.000000   0.010000 (  0.009240)
  0.010000   0.010000   0.020000 (  0.013502)
----------------------------------------------------------------------------------------------------
Testing with n = 500000

      user     system      total        real
  0.200000   0.010000   0.210000 (  0.222348)
  0.120000   0.020000   0.140000 (  0.141565)
  0.110000   0.010000   0.120000 (  0.126274)
----------------------------------------------------------------------------------------------------
Testing with n = 5000000

      user     system      total        real
  1.940000   0.140000   2.079999 (  2.120207)
  0.940000   0.120000   1.059999 (  1.294015)
  1.040000   0.150000   1.190000 (  1.740542)
----------------------------------------------------------------------------------------------------
```
