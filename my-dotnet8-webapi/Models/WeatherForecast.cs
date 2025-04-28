using System;

namespace my_dotnet8_webapi.Models
{
    public class WeatherForecast
    {
        public DateTime Date { get; set; }
        public int TemperatureC { get; set; }
        public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);
        public string? Summary { get; set; }
        public string? Location { get; set; } // Optional property for the forecast's location
    }
}