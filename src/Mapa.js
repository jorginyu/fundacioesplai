import React from 'react';
import {
  withScriptjs,
  withGoogleMap,
  GoogleMap,
  Marker
} from 'google-map-react';
import Cursos from './Cursos';

    const APIKEY = 'AIzaSyAjSykSOjdWcC7gwqp1h5sqvDnFkZr1swc';
      

const MiMapa = withScriptjs(
  withGoogleMap(props => (
    <GoogleMap defaultZoom={18} defaultCenter={{ lat: 41.5421104, lng: 2.4445 }}>
      {props.isMarkerShown && (
        <Marker>
          <Cursos position={{ lat: 41.5421104, lng: 2.4445 }} />
        </Marker>
      )}
    </GoogleMap>
  ))
);


class Mapa extends React.Component {
  
  render() {

    return (
      <div>
        <MiMapa
          isMarkerShown
          googleMapURL={`https://maps.googleapis.com/maps/api/js?key=${APIKEY}&v=3.exp&libraries=geometry,drawing,places`}
          loadingElement={<div style={{ height: `100%` }} />}
          containerElement={<div style={{ height: `400px` }} />}
          mapElement={<div style={{ height: `100%` }} />}
          id="map"
        />
      </div>
    );
  }
}


export default  Mapa;