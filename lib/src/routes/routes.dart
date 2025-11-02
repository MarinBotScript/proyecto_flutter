import 'package:clase_2108/src/views/access_page.dart';
import 'package:clase_2108/src/views/projects_page.dart';
import 'package:clase_2108/src/views/project_details.dart';
import 'package:clase_2108/src/views/samples_page.dart';
import 'package:clase_2108/src/views/sampling_point_details.dart';
import 'package:clase_2108/src/views/sampling_points.dart';
import 'package:clase_2108/src/views/species_3_1.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => AccessPage(),
    'access_page': (BuildContext context) => AccessPage(),
    'projects_page': (BuildContext context) => ProjectsPage(),
    'project_details': (BuildContext context) => ProjectDetails(),
    'sampling_points': (BuildContext context) => SamplingPoints(),
    'sampling_point_details': (BuildContext context) => SamplingPointDetails(),
    'samples_page': (BuildContext context) => SamplesPage(),
    'species_3_1': (BuildContext context) => Species31()
  };
}