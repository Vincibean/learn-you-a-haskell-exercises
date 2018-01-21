-- Write a function which appends one list on to another
combineLists:: List a -> List a -> List a
combineLists Empty other = other
combineLists other Empty = other
combineLists (Value v rest) other = Value v (combineLists rest other)
