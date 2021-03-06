import 'package:flutter/material.dart';
import 'package:nav_router/all_routes.dart';
import 'package:nav_router/src/enum.dart';

Route routerUtil({RouterType type, widget}) {
  Route route;
  switch (type) {
    case RouterType.material:
      route = materialRoute(widget);
      break;
    case RouterType.cupertino:
      route = cupertinoRoute(widget);
      break;
    case RouterType.slide:
      route = slide(widget);
      break;
    case RouterType.scale:
      route = scale(widget);
      break;
    case RouterType.rotation:
      route = rotation(widget);
      break;
    case RouterType.size:
      route = size(widget);
      break;
    case RouterType.fade:
      route = fade(widget);
      break;
    case RouterType.scaleRotate:
      route = scaleRotate(widget);
      break;
  }

  return route;
}

Route advanceUtil({AdvanceType type, exitPage, enterPage}) {
  Route route;
  switch (type) {
    case AdvanceType.slide:
      route = advanceSlide(exitPage: exitPage, enterPage: enterPage);
      break;
  }

  return route;
}
