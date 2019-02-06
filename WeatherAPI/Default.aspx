<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WeatherAPI.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/weather.css" rel="stylesheet" />
    <title>Weather App</title>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
</head> 
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="sideBar">
                <asp:Label ID="lblSelectedLocation" runat="server"></asp:Label>
                <asp:Label ID="lblParentLocation" runat="server"></asp:Label>
                <asp:Label ID="lblLatt_Long" runat="server"></asp:Label>
        </div>

        <div class="weatherDisplay">
            <asp:Table ID="tblWeather" runat="server" Height="96px" Width="135px">
            </asp:Table>
        </div>

        <div class="sideBar">
            <input id="searchInput" type="text" placeholder="search" list="location_names" />
        </div>
        </div>


        <datalist id="location_names">
            <option value="London"></option>
            <option value="San Francisco"></option>
            <option value="New York"></option>
            <option value="Sydney"></option>
            <option value="Philadelphia"></option>
            <option value="Manchester"></option>
            <option value="Houston"></option>
            <option value="Birmingham"></option>
            <option value="Los Angeles"></option>
            <option value="Berlin"></option>
            <option value="Chicago"></option>
            <option value="Tokyo"></option>
            <option value="Beijing"></option>
            <option value="Mexico City"></option>
            <option value="Osaka"></option>
            <option value="Bristol"></option>
            <option value="Mumbai"></option>
            <option value="Glasgow"></option>
            <option value="Amsterdam"></option>
            <option value="Johannesburg"></option>
            <option value="Rio de Janeiro"></option>
            <option value="Shanghai"></option>
            <option value="New Delhi"></option>
            <option value="Jakarta"></option>
            <option value="Seoul"></option>
            <option value="São Paulo"></option>
            <option value="Moscow"></option>
            <option value="Hong Kong"></option>
            <option value="San Diego"></option>
            <option value="San Jose"></option>
            <option value="Dallas"></option>
            <option value="Indianapolis"></option>
            <option value="San Antonio"></option>
            <option value="Montréal"></option>
            <option value="Jacksonville"></option>
            <option value="Austin"></option>
            <option value="Kiev"></option>
            <option value="Phoenix"></option>
            <option value="Madrid"></option>
            <option value="Toronto"></option>
            <option value="Fort Worth"></option>
            <option value="Guangzhou"></option>
            <option value="Columbus"></option>
            <option value="Memphis"></option>
            <option value="Washington DC"></option>
            <option value="Paris"></option>
            <option value="Munich"></option>
            <option value="Brisbane"></option>
            <option value="Rome"></option>
            <option value="Milwaukee"></option>
            <option value="Bradford"></option>
            <option value="Liverpool"></option>
            <option value="Wakefield"></option>
            <option value="Istanbul"></option>
            <option value="El Paso"></option>
            <option value="Seattle"></option>
            <option value="Baltimore"></option>
            <option value="Las Vegas"></option>
            <option value="Melbourne"></option>
            <option value="Buenos Aires"></option>
            <option value="Boston"></option>
            <option value="Nashville"></option>
            <option value="Edinburgh"></option>
            <option value="Perth"></option>
            <option value="Karachi"></option>
            <option value="Hamburg"></option>
            <option value="Dubai"></option>
            <option value="Leeds"></option>
            <option value="Sheffield"></option>
            <option value="Adelaide"></option>
            <option value="Charlotte"></option>
            <option value="Detroit"></option>
            <option value="Louisville"></option>
            <option value="Barcelona"></option>
            <option value="Denver"></option>
            <option value="Portland"></option>
            <option value="Oklahoma City"></option>
            <option value="Cardiff"></option>
            <option value="Kolkata"></option>
            <option value="Cairo"></option>
            <option value="Virginia Beach"></option>
            <option value="Kinshasa"></option>
            <option value="Honolulu"></option>
            <option value="Tehrān"></option>
            <option value="Colorado Springs"></option>
            <option value="Auckland"></option>
            <option value="Dongguan"></option>
            <option value="Sacramento"></option>
            <option value="Kansas City"></option>
            <option value="Fresno"></option>
            <option value="Bangkok"></option>
            <option value="Ho Chi Minh City"></option>
            <option value="Mesa"></option>
            <option value="Atlanta"></option>
            <option value="Bangalore"></option>
            <option value="Lima"></option>
            <option value="Albuquerque"></option>
            <option value="Tucson"></option>
            <option value="Lagos"></option>
            <option value="Long Beach"></option>
            <option value="Shenzhen"></option>
            <option value="Bogotá"></option>
            <option value="Omaha"></option>
            <option value="Raleigh"></option>
            <option value="Miami"></option>
            <option value="Exeter"></option>
            <option value="Hà Nội"></option>
            <option value="Casablanca"></option>
            <option value="Singapore"></option>
            <option value="Yokohama"></option>
            <option value="Nairobi"></option>
            <option value="Tianjin"></option>
            <option value="Dhaka"></option>
            <option value="Pyongyang"></option>
            <option value="Addis Ababa"></option>
            <option value="Hyderabad"></option>
            <option value="Santa Cruz"></option>
            <option value="Dublin"></option>
            <option value="Budapest"></option>
            <option value="Milan"></option>
            <option value="Cambridge"></option>
            <option value="Oxford"></option>
            <option value="Vienna"></option>
            <option value="Brussels"></option>
            <option value="Cologne"></option>
            <option value="Riyadh"></option>
            <option value="Damascus"></option>
            <option value="Ankara"></option>
            <option value="Little Rock"></option>
            <option value="Wilmington"></option>
            <option value="Santiago"></option>
            <option value="Birmingham"></option>
            <option value="Baghdad"></option>
            <option value="Boise"></option>
            <option value="Anchorage"></option>
            <option value="Athens"></option>
            <option value="Santorini"></option>
            <option value="Reykjavík"></option>
            <option value="Sofia"></option>
            <option value="Prague"></option>
            <option value="Zagreb"></option>
            <option value="Oslo"></option>
            <option value="Copenhagen"></option>
            <option value="Bucharest"></option>
            <option value="Torino"></option>
            <option value="Stockholm"></option>
            <option value="Naples"></option>
            <option value="Warsaw"></option>
            <option value="Bridgeport"></option>
            <option value="Wichita"></option>
            <option value="Richmond"></option>
            <option value="New Orleans"></option>
            <option value="Calgary"></option>
            <option value="Edmonton"></option>
            <option value="St Petersburg"></option>
            <option value="Manila"></option>
            <option value="Vancouver"></option>
            <option value="Maracaibo"></option>
            <option value="Caracas"></option>
            <option value="Cheyenne"></option>
            <option value="Charleston"></option>
            <option value="Santander"></option>
            <option value="İzmir"></option>
            <option value="Toulouse"></option>
            <option value="Bordeaux"></option>
            <option value="Wuhan"></option>
            <option value="Marseille"></option>
            <option value="Lille"></option>
            <option value="Ahmedabad"></option>
            <option value="Lyon"></option>
            <option value="Nice"></option>
            <option value="Lahore"></option>
            <option value="Belfast"></option>
            <option value="Bremen"></option>
            <option value="Stoke-on-Trent"></option>
            <option value="Fargo"></option>
            <option value="Sendai"></option>
            <option value="Truro"></option>
            <option value="Preston"></option>
            <option value="Sunderland"></option>
            <option value="Lisbon"></option>
            <option value="Phuket"></option>
            <option value="Palm Springs"></option>
            <option value="Leicester"></option>
            <option value="Stuttgart"></option>
            <option value="Coventry"></option>
            <option value="Gothenburg"></option>
            <option value="Hanover"></option>
            <option value="St. Louis"></option>
            <option value="Salvador"></option>
            <option value="Plymouth"></option>
            <option value="Lake Tahoe"></option>
            <option value="Nuremberg"></option>
            <option value="Mountain View"></option>
            <option value="Kawasaki"></option>
            <option value="Kyoto"></option>
            <option value="Kobe"></option>
            <option value="Hangzhou"></option>
            <option value="Blackpool"></option>
            <option value="Yangon"></option>
            <option value="Bakersfield"></option>
            <option value="Salt Lake City"></option>
            <option value="Geneva"></option>
            <option value="Portland"></option>
            <option value="Reading"></option>
            <option value="Durban"></option>
            <option value="Saitama"></option>
            <option value="Brighton"></option>
            <option value="Dresden"></option>
            <option value="Ajaccio"></option>
            <option value="Pune"></option>
            <option value="Mombasa"></option>
            <option value="Providence"></option>
            <option value="Chennai"></option>
            <option value="Kharkiv"></option>
            <option value="Helsinki"></option>
            <option value="Taipei"></option>
            <option value="Essen"></option>
            <option value="St Ives"></option>
            <option value="Aberdeen"></option>
            <option value="Oakland"></option>
            <option value="Sapporo"></option>
            <option value="Ipswich"></option>
            <option value="Norwich"></option>
            <option value="Christchurch"></option>
            <option value="Surat"></option>
            <option value="Busan"></option>
            <option value="Manchester"></option>
            <option value="Hiroshima"></option>
            <option value="Northampton"></option>
            <option value="Leipzig"></option>
            <option value="Southend-on-Sea"></option>
            <option value="The Hague"></option>
            <option value="Minsk"></option>
            <option value="Salford"></option>
            <option value="Kirkwall"></option>
            <option value="Swansea"></option>
            <option value="Penzance"></option>
            <option value="Ibadan"></option>
            <option value="Billings"></option>
            <option value="Alexandria"></option>
            <option value="Newcastle"></option>
            <option value="Jackson"></option>
            <option value="Sioux Falls"></option>
            <option value="Nagoya"></option>
            <option value="Swindon"></option>
            <option value="Brasília"></option>
            <option value="Dundee"></option>
            <option value="Kano"></option>
            <option value="Kitakyushu"></option>
            <option value="Denpasar"></option>
            <option value="Boulder"></option>
            <option value="Minneapolis"></option>
            <option value="Frankfurt"></option>
            <option value="Falmouth"></option>
            <option value="Middlesbrough"></option>
            <option value="Rhyl"></option>
            <option value="Bournemouth"></option>
            <option value="Fukuoka"></option>
            <option value="Newark"></option>
            <option value="Manukau"></option>
            <option value="Luton"></option>
            <option value="Wellington"></option>
            <option value="Abidjan"></option>
            <option value="Kingston upon Hull"></option>
            <option value="Des Moines"></option>
            <option value="Windhoek"></option>
            <option value="Calvi"></option>
            <option value="Venice"></option>
            <option value="Santa Cruz de Tenerife"></option>
            <option value="Chengdu"></option>
            <option value="York"></option>
            <option value="Kuala Lumpur"></option>
            <option value="Portsmouth"></option>
            <option value="Sidmouth"></option>
            <option value="Burlington"></option>
            <option value="Santa Fe"></option>
            <option value="Zurich"></option>
            <option value="Nottingham"></option>
            <option value="Derby"></option>
            <option value="Huddersfield"></option>
            <option value="Dortmund"></option>
            <option value="Wolverhampton"></option>
            <option value="Cape Town"></option>
            <option value="Düsseldorf"></option>
            <option value="Columbia"></option>
        </datalist>

    </form>
    <script type="text/javascript">

        var default_woeid = 1099805;
        var weekday = new Array(7);
        weekday[0] = "Sunday";
        weekday[1] = "Monday";
        weekday[2] = "Tuesday";
        weekday[3] = "Wednesday";
        weekday[4] = "Thursday";
        weekday[5] = "Friday";
        weekday[6] = "Saturday";

        $("#form1").on("submit", function (event) {
            event.preventDefault();
            var selectedLocation = $('#searchInput').val();
            getWhereOnEarthID(selectedLocation);
        });
        
        function getWhereOnEarthID(selectedLocation) {
            $.getJSON('https://www.metaweather.com/api/location/search/?query=' + selectedLocation, function (data) {
                var woeid = data[0].woeid;
                getWeather(woeid)

            })
        }

        function getWeather(woeid) {
            $.getJSON(' https://www.metaweather.com/api/location/' + woeid + '/',
                function (data) {
                    $('#tblWeather').empty();
                    $("#lblSelectedLocation").text(data.title)
                    $("#lblParentLocation").text(data.parent.title)
                    $("#lblLatt_Long").text(data.latt_long)

                    $.each(data.consolidated_weather, function (key, val) {
                        var compass = '<div class="compass"><div class="direction"><p>' + val.wind_direction_compass + '<span>' + Math.round((val.wind_speed / 1.609).toFixed(2)) + '</span></p></div><div class="arrow ' + val.wind_direction_compass.toLowerCase() + '"></div></div>';
                        var weatherDate = new Date(val.applicable_date);
                        var today = new Date(Date.now());
                        if (weatherDate.toLocaleDateString() == today.toLocaleDateString()) {
                            displayWeather('class="today"');
                        } else {
                            displayWeather('');
                        }

                        function displayWeather(day) {
                            var dayOfWeek = weekday[weatherDate.getDay()];
                            $('#tblWeather').append('<tr><td class="dayOfWeek">' + dayOfWeek + '  ' + weatherDate.toLocaleDateString() + '</td><td ' + day + '>' + val.weather_state_name + '</td><td><img src="./image/' + val.weather_state_abbr + '.svg" alt="' + val.weather_state_name + '"height="40%" /></td><td>' + compass + '</td><td>' + val.min_temp.toFixed(1) + '<span>&#8451;</span>\n Low</td><td>' + val.max_temp.toFixed(1) + '<span>&#8451;</span>\n High</td><td>' + val.humidity + '% \n Humidity</td ></tr')
                        }
                    });
                });
        }
        $(document).ready(getWeather(default_woeid));
    </script>
</body>
</html> 





