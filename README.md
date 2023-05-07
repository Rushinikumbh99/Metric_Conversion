# Metric_Conversion
Assesment

Software       : Visual Studio 2022 , SQL Server Management Studio (16.0.19056.0), POSTMAN

Framwork 	   : .NET 6.0 

Database Name  : Metric_Conversion 

Table Name     : RateMaster

Nuget Packages : Microsoft.EntityFrameworkCore.SqlServer(7.0.5) & Microsoft.EntityFrameworkCore.Tools (7.0.5)

API  		   : https://localhost:7135/api/Conversion?Conversion_From=Kelvin&Conversion_To=Degree&Value=5

Parameter      : Conversion_From (string) , Conversion_To(string), Value(double)

Conversions    : Centimeters to Inches  & Inches to Centimeters,
		     Squaremeter to SquareFoot & SquareFoot to Squaremeter,	 
		     Degree to Kelvin & Kelvin to Degree
		    
Excluded Files : WeatherForecast.cs & WeatherForecastController 
