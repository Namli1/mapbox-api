import './src/navigation/directions.dart';
import './src/navigation/isochrome.dart';
import './src/navigation/map_matching.dart';
import './src/navigation/matrix.dart';
import './src/navigation/optimization.dart';

export './src/navigation/globals.dart';
export './src/navigation/directions.dart';
export './src/navigation/isochrome.dart';
export './src/navigation/map_matching.dart';
export './src/navigation/matrix.dart';
export './src/navigation/optimization.dart';

const LATITUDE = 0;
const LONGITUDE = 1;

/// The Mapbox web services APIs allow you to programmatically
/// access Mapbox tools and services.
/// You can use these APIs to retrieve information about your account,
/// upload and change resources, use core Mapbox tools, and more.
///
/// https://docs.mapbox.com/api/
class MapboxApi {
  MapboxApi({
    this.accessToken,
  }) {
    directions = DirectionsApi(this);
    mapMatching = MapMatchingApi(this);
    isochrone = IsochroneApi(this);
    matrix = MatrixApi(this);
    optimization = OptimizationApi(this);
  }

  DirectionsApi directions;
  MapMatchingApi mapMatching;
  IsochroneApi isochrone;
  MatrixApi matrix;
  OptimizationApi optimization;

  String accessToken;
}
