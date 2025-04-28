# my-dotnet8-webapi

This is a .NET 8 Web API project that provides weather forecast information.

## Project Structure

- **Controllers**: Contains the API controllers.
  - `WeatherForecastController.cs`: Handles HTTP requests related to weather forecasts.
  
- **Models**: Contains the data models.
  - `WeatherForecast.cs`: Represents a weather forecast with properties such as Date, TemperatureC, TemperatureF, Summary, and Location.

- **Program.cs**: The entry point of the application. Sets up the web host and configures services.

- **appsettings.json**: Contains configuration settings for the application.

- **appsettings.Development.json**: Contains development-specific configuration settings.

- **my-dotnet8-webapi.csproj**: The project file that defines dependencies and build settings.

## Getting Started

To run the application, follow these steps:

1. Clone the repository:
   ```
   git clone <repository-url>
   ```

2. Navigate to the project directory:
   ```
   cd my-dotnet8-webapi
   ```

3. Restore the dependencies:
   ```
   dotnet restore
   ```

4. Run the application:
   ```
   dotnet run
   ```

The API will be available at `http://localhost:5000` (or `https://localhost:5001` for HTTPS).

## API Endpoints

- `GET /weatherforecast`: Returns a list of weather forecasts.

## Contributing

Feel free to submit issues or pull requests for improvements or bug fixes.