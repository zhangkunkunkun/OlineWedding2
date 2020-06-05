<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="googleMap.aspx.cs" Inherits="WEbApplication1.googleMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>


</head>

<body>
        <div id="map"></div><!-- 地図を表示する div 要素（id="map"）-->
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: -34.397, lng: 150.644 },
                zoom: 8
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpWfO5MnbCpJEFcSEWHeB4UyxLjs6t3ME&callback=initMap" ></script>

    <form id="form1" runat="server">

    </form>
</body>
</html>
