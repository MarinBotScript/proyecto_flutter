import 'package:clase_2108/src/views/access_page.dart';
import 'package:clase_2108/src/views/projects_page.dart';
import 'package:clase_2108/src/views/project_details_3.dart';
import 'package:clase_2108/src/views/samples_3_1.dart';
import 'package:clase_2108/src/views/sampling_point_3_1.dart';
import 'package:clase_2108/src/views/sampling_points_3.dart';
import 'package:clase_2108/src/views/species_3_1.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => AccessPage(),
    'access_page': (BuildContext context) => AccessPage(),
    'projects_page': (BuildContext context) => ProjectsPage(),
    'project_details_3': (BuildContext context) => ProjectDetails3(),
    'sampling_points_3': (BuildContext context) => SamplingPoints3(),
    'sampling_point_3_1': (BuildContext context) => SamplingPoint31(),
    'samples_3_1': (BuildContext context) => Samples31(),
    'species_3_1': (BuildContext context) => Species31()
  };
}