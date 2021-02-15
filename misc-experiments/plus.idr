plus2 : Nat -> Nat -> Nat
plus2 Z y = y
plus2 (S k) y = S (plus2 k y)


reverse : List a -> List a
reverse xs = revAcc [] xs where
  revAcc : List a -> List a -> List a
  revAcc acc [] = acc
  revAcc acc (x :: xs) = revAcc (x :: acc) xs

-- foo : Int -> Int
-- foo x = case isLT of
--             Yes => x*2
--             No => x*4
--     where
--        data MyLT = Yes | No
--
--        isLT : MyLT
--        isLT = if x < 20 then Yes else No

mutual
  even : Nat -> Bool
  even Z = True
  even (S k) = odd k

  odd : Nat -> Bool
  odd Z = False
  odd (S k) = even k

-- test : List Nat
-- test = [c (S 1), c Z, d (S Z)]
--   where c : Nat -> Nat
--     c x = 42 + x
--
--     d : Nat -> Nat
--     d y = c (y + 1 + z y)
--       where z : Nat -> Nat
--         z w = y + w

partial fromMaybe : Maybe a -> a
fromMaybe (Just x) = x
