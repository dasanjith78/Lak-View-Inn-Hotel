

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

    <h2><b>Room Reservation</b></h2>

<div class="col-sm-5 col-md-4">
    <h3><b>Room Reservation</b></h3>
    <form role="form" class="wowload fadeInRight animated" style="visibility: visible; animation-name: fadeInRight;">       
        <div class="form-group">
            <div class="row">
            <div class="col-xs-6">
            <div class="selector" style="width: 161px;"><span style="width: 139px; user-select: none;">Room Type</span><select class="form-control">
              <option>Luxirious Suites</option>
              <option>Superior Suite</option>
              <option>Premium Room</option>
            </select></div>
            </div>        
            <div class="col-xs-6">
            <div class="selector" style="width: 161px;"><span style="width: 139px; user-select: none;">No. of Rooms</span><select class="form-control">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
              <option>6</option>
            </select></div>
            </div></div>
        </div>
        <div class="form-group">
            <div class="row">
            <div class="col-xs-4">
              <div class="selector" id="uniform-expiry-month" style="width: 96px;"><span style="width: 74px; user-select: none;">Date</span><select class="form-control col-sm-2" name="expiry-month" id="expiry-month">
                <option>Date</option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="12">13</option>
                <option value="12">14</option>
                <option value="12">15</option>
                <option value="12">16</option>
                <option value="12">17</option>
                <option value="12">18</option>
                <option value="12">19</option>
                <option value="12">20</option>
                <option value="12">21</option>
                <option value="12">22</option>
                <option value="12">23</option>
                <option value="12">24</option>
                <option value="12">25</option>
                <option value="12">26</option>
                <option value="12">27</option>
                <option value="12">28</option>
                <option value="12">29</option>
                <option value="12">30</option>
                <option value="12">31</option>
                
                
                
              </select></div>
            </div>
            <div class="col-xs-4">
              <div class="selector" id="uniform-expiry-month" style="width: 96px;"><span style="width: 74px; user-select: none;">Month</span><select class="form-control col-sm-2" name="expiry-month" id="expiry-month">
                <option>Month</option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select></div>
            </div>
            <div class="col-xs-4">
              <div class="selector" style="width: 96px;"><span style="width: 74px; user-select: none;">2021</span><select class="form-control" name="expiry-year">
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select></div>
            </div>
          </div>
        </div>
        
        <div class="form-group">
            <div class="row">
            <div class="col-xs-4">
              <div class="selector" id="uniform-expiry-month" style="width: 96px;"><span style="width: 74px; user-select: none;">Date</span><select class="form-control col-sm-2" name="expiry-month" id="expiry-month">
                <option>Date</option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="12">13</option>
                <option value="12">14</option>
                <option value="12">15</option>
                <option value="12">16</option>
                <option value="12">17</option>
                <option value="12">18</option>
                <option value="12">19</option>
                <option value="12">20</option>
                <option value="12">21</option>
                <option value="12">22</option>
                <option value="12">23</option>
                <option value="12">24</option>
                <option value="12">25</option>
                <option value="12">26</option>
                <option value="12">27</option>
                <option value="12">28</option>
                <option value="12">29</option>
                <option value="12">30</option>
                <option value="12">31</option>
                
                
                
              </select></div>
            </div>
            <div class="col-xs-4">
              <div class="selector" id="uniform-expiry-month" style="width: 96px;"><span style="width: 74px; user-select: none;">Month</span><select class="form-control col-sm-2" name="expiry-month" id="expiry-month">
                <option>Month</option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select></div>
            </div>
            <div class="col-xs-4">
              <div class="selector" style="width: 96px;"><span style="width: 74px; user-select: none;">2021</span><select class="form-control" name="expiry-year">
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select></div>
            </div>
          </div>
        </div>
        <button class="btn btn-default">Check Available</button>
    </form>    
</div>
        
       
    </body>
</html>
