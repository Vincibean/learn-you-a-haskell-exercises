import System.Environment
import Data.List

{-
 - Lets implement the UNIX echo command
 - The program arguments are simply printed to the standard output.
 - If the first argument is -n, this argument is not printed, and no trailing newline is printed
 -}
main = do
   first:args <- getArgs
   let noNewLineSwitch = first == "-n"
   let termination = if noNewLineSwitch then putStr else putStrLn
   let argsToPrint = if noNewLineSwitch then args else first:args
   mapM putStr $ intersperse " " argsToPrint
   termination ""
