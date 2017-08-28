function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  var runLocation = document.getElementById('run_location');
  runLocation.blur();
  runLocation.value = components.address;

  //document.getElementById('flat_zip_code').value = components.zip_code;
  //document.getElementById('flat_city').value = components.city;

//   if (components.country_code) {
//     var selector = '#flat_country option[value="' + components.country_code + '"]';
//     document.querySelector(selector).selected = true;
//   }
}

function getAddressComponents(place) {
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  if (window.console && typeof console.log === "function") {
    console.log(place);
  }

  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var country_code = null;
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type === 'street_number') {
        street_number = component.long_name;
      } else if (type === 'route') {
        route = component.long_name;
      } else if (type === 'postal_code') {
        zip_code = component.long_name;
      } else if (type === 'locality') {
        city = component.long_name;
      } else if (type === 'postal_town' && city === null) {
        city = component.long_name;
      } else if (type === 'country') {
        country_code = component.long_name;
      }
    }
  }

  return {
    address: street_number === null ? (route + ', ' + city + ', ' + country_code) : (route + ' ' + street_number + ', ' + city + ', ' + country_code)
  };
}

document.addEventListener("DOMContentLoaded", function() {
  var runLocation = document.getElementById('run_location');

  if (runLocation) {
    var autocomplete = new google.maps.places.Autocomplete(runLocation, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(runLocation, 'keydown', function(e) {
      if (e.key === "Enter") {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});
