const fetch = require('node-fetch');
fs = require('fs')


let url = "http://caboruivo.tecnico.ulisboa.pt:64104//api/obs?vars=temp,rad&type=hourly&start=2019-07-01&end=2019-07-31";

let settings = { method: "Get" };

fetch(url, settings)
    .then(res => res.json())
    .then((json) => {
      fs.writeFile('temp_data_jul2019.txt', JSON.stringify(json.data.temp), function (err) {
        if (err) return console.log(err);   
        console.log('Radiation data> temp_data_jul2019.txt');
      });
      fs.writeFile('rad_data_jul2019.txt', JSON.stringify(json.data.rad), function (err) {
        if (err) return console.log(err);   
        console.log('Radiation data> rad_data_jul2019.txt');
      });
    }); 