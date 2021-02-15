module Main

main : IO ()
main = putStrLn ?greeting

even : Nat -> Bool
even Z = True
even (S k) = ?even_rhs

isSingleton : Bool -> Type
isSingleton True = Nat
isSingleton False = List Nat

mkSingle : (x : Bool) -> isSingleton x
mkSingle True = 0
mkSingle False = []

sum2 : (single : Bool) -> isSingleton single -> Nat
sum2 True x = x
sum2 False [] = 0
sum2 False (x :: xs) = x + sum2 False xs

data Vect : Nat -> Type -> Type where
  Nil : Vect Z a
  (::) : a -> Vect h a -> Vect (S h) a

(++) : Vect n a -> Vect m a -> Vect (n + m) a
(++) Nil ys = ys
(++) (x :: xs) ys = x :: xs ++ ys

data Fin : Nat -> Type where
  FZ : Fin (S k)
  FS : Fin k -> Fin (S k)
