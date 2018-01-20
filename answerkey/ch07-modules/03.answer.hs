import DistanceConversions

-- define a function for converting square chains (22 yards) to square metres
sqChainsToSqM :: Float -> Float
sqChainsToSqM = areaConv chainToMetres
		where chainToMetres x = inchesToCentimetres $ feetToInches $ yardsToFeet (22 * x) / 100
