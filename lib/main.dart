/// Animation Example
// reference : https://beomseok95.tistory.com/320
// reference : https://velog.io/@broccolism/Flutter-%ED%94%8C%EB%9F%AC%ED%84%B0-%EC%95%A0%EB%8B%88%EB%A9%94%EC%9D%B4%EC%85%98-%EC%A0%84%EC%B2%B4%EB%B3%B4%EA%B8%B0
// reference : https://fre2-dom.tistory.com/386

import 'package:animation_practice/screens/implicit/animated_align_screen.dart';
import 'package:animation_practice/screens/explicit/animated_builder_screen.dart';
import 'package:animation_practice/screens/implicit/animated_container_screen.dart';
import 'package:animation_practice/screens/explicit/transition_animation_screen.dart';
import 'package:animation_practice/screens/home_screen.dart';
import 'package:animation_practice/screens/implicit/animated_crossfade_screen.dart';
import 'package:animation_practice/screens/implicit/animated_default_textstyle_screen.dart';
import 'package:animation_practice/screens/implicit/animated_opacity_screen.dart';
import 'package:animation_practice/screens/implicit/animated_padding_screen.dart';
import 'package:animation_practice/screens/implicit/animated_physical_model_screen.dart';
import 'package:animation_practice/screens/implicit/animated_positioned_screen.dart';
import 'package:animation_practice/screens/implicit/animated_size_screen.dart';
import 'package:animation_practice/screens/implicit/animated_switcher_screen.dart';
import 'package:animation_practice/screens/implicit/animated_theme_screen.dart';
import 'package:flutter/material.dart';

const HOME_ROUTE = '/';
const ANIMATED_ALIGN_ROUTE = '/align';
const ANIMATED_CONTAINER_ROUTE = '/container';
const ANIMATED_DEFAULT_TEXTSTYLE_ROUTE = '/textstyle';
const ANIMATED_OPACITY_ROUTE = '/opacity';
const ANIMATED_PADDING_ROUTE = '/padding';
const ANIMATED_PHYSICAL_MODEL_ROUTE = '/physicalmodel';
const ANIMATED_POSITIONED_ROUTE = '/positioned';
const ANIMATED_THEME_ROUTE = '/theme';
const ANIMATED_SIZE_ROUTE = '/size';
const ANIMATED_CROSSFADE_ROUTE = '/crossfade';
const ANIMATED_SWITCHER_ROUTE = '/switcher';
const TRANSITION_ANIMATION_ROUTE = '/transition';
const ANIMATED_BUILDER_ROUTE = '/builder';

var routes = {
  HOME_ROUTE: (context) => HomeScreen(),
  ANIMATED_ALIGN_ROUTE: (context) => AnimatedAlignScreen(),
  ANIMATED_CONTAINER_ROUTE: (context) => AnimatedContainerScreen(),
  ANIMATED_DEFAULT_TEXTSTYLE_ROUTE: (context) => AnimatedDefaultTextStyleScreen(),
  ANIMATED_OPACITY_ROUTE: (context) => AnimatedOpacityScreen(),
  ANIMATED_PADDING_ROUTE: (context) => AnimatedPaddingScreen(),
  ANIMATED_PHYSICAL_MODEL_ROUTE: (context) => AnimatedPhysicalModelScreen(),
  ANIMATED_POSITIONED_ROUTE: (context) => AnimatedPositionedScreen(),
  ANIMATED_THEME_ROUTE: (context) => AnimatedThemeScreen(),
  ANIMATED_SIZE_ROUTE: (context) => AnimatedSizeScreen(),
  ANIMATED_CROSSFADE_ROUTE: (context) => AnimatedCrossFadeScreen(),
  ANIMATED_SWITCHER_ROUTE: (context) => AnimatedSwitcherScreen(),
  TRANSITION_ANIMATION_ROUTE: (context) => TransitionAnimationScreen(),
  ANIMATED_BUILDER_ROUTE: (context) => AnimatedBuilderScreen(),
};

void main() {
  runApp(
    MaterialApp(
      routes: routes,
      initialRoute: HOME_ROUTE,
    ),
  );
}
