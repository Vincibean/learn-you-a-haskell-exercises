import DistanceConversions

-- create a higher-order function for converting an area between two dimensions
-- this will take the function for converting a distance, and an area to convert
-- using the functions defined in the DistanceConversions module
-- Example areaConv inchesToCentimetres 9 = 58.0644

areaConv :: (Float -> Float) -> Float -> Float
areaConv linearConversion area = conversion * conversion
				where conversion = linearConversion (sqrt area)
