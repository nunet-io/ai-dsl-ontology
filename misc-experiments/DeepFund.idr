module DeepFund

tranche: Double -> Double
tranche t =  init * pow (1-incr) t where
  init : Double; init = 15000000
  incr: Double;  incr = 1.5/100

deepAGI: Double -> Double
deepAGI t = tranche t * frac where
  frac: Double; frac = 0.30

deepLockAGI: Double -> Double
deepSNetAGI t = deepAGI t * frac where
  frac: Double; frac = 0.25

deepUSD: (t: Double) -> (p: Double) -> Double
deepUSD t p = deepAGI t * p
