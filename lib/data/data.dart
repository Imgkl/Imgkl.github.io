import 'package:flutter/material.dart';
import 'package:imgkl/data/apps/communitv.dart';
import 'package:imgkl/data/apps/flikipedia.dart';
import 'package:imgkl/data/apps/moofies.dart';
import 'package:imgkl/data/apps/pixie.dart';
import 'package:imgkl/data/apps/quotes.dart';
import 'package:imgkl/data/apps/rude.dart';
import 'package:imgkl/data/apps/yep-nope.dart';

List<String> images = [
  'https://i.imgur.com/zwsSGWj.jpg',
  'https://i.imgur.com/gSFHV65.jpg',
  "https://i.imgur.com/T155kEy.jpg",
  "https://i.imgur.com/665Fat1.jpg",
  "https://i.imgur.com/Ud5XO0q.jpg",
  'https://i.imgur.com/fy07HZb.jpg',
  'https://i.imgur.com/09uFwAd.jpg',
  'https://i.imgur.com/1u4m4pE.jpg',
];

List<String> hashes = [
  "KKN,;__N4nS|%29FM_4nxu",
  "L23[xT%M004nj[fQayj[00Rj~q%M",
  "LRG8==%MtUIU?wa{t8WAWqxvWAWB",
  "LHF~gV-;tRslG^t7tRoLT0RPoKRj",
  "LDN0*g~Uvz00?aWYRkt6~p9ZD%~p",
  "LHAU1[o~W=kCy?XTj[bHEmWXn%fk",
  "L4AAaa0000-;00?b~qD%-;xu4n%M",
  "L26uU~8w00%%00.9.SI801W,.7xI"
];

List<String> titles = [
  'Sai Gokula Krishnan',
  'RUDE',
  "Flikipedia",
  "Moofies",
  "Quotes.",
  "Yep/Nope",
  "Pixie",
  "CommuniTV"
];

List<String> subtitles = [
  'I Code Stuff.',
  'Light-hearted mean notifications in hour intrevals.',
  "Minimalistic app for searching Wikipedia",
  "Movie searching never been easier",
  'Everyone needs motivation sometimes.\n Around 60K+ Quotes',
  'Too confused to take desicions?\nA Fun little app to nudge you in the right direction',
  'When you photograph people in color, you photograph their clothes.\nBut when you photograph people in Black and white, \nyou photograph their souls!',
  'Hand curated top rated TV shows and details of where to watch '
];

List<String> descriptions = [
  'I Code Stuff.',
  'Light-hearted mean notifications in hour intrevals. In this application, the user will get rude yet funny notifications based on his preference \n\n\nWhat I\'ve done \n\n• Animated login/sign-up page \n• Used Provider for state management. \n• Used WireDash for Feedback collection. \n• Used Rive animation to get the rating of the app',
  "A Minimalistic flutter application which uses Wiki Search API. \n\n\nWhat I\'ve done  \n\n• State management (Provider) \n• Caching API responses \n• Adaptive icons on Android\n• Long press to share a result to other apps.\n• Clear caches in a single click\n• Toast messages to denote the user if he is seeing the cached data or from API\n• Native Splash screen\n• Dynamic Theme support (Presistant)\n• Haptic feedback in some places to improve UX",
  "Movie searching never been easier",
  'Everyone needs motivation sometimes.\nAround 60K+ Quotes \n\n\nWhat I\'ve done \n\n• Shuffle Button\n• Share Function\n• Native Splash Screen\n• Hourly Quotes Notification',
  'Too confused to take desicions?\nA Fun little app to nudge you in the right direction',
  'When you photograph people in color, you photograph their clothes.\nBut when you photograph people in Black and white, \nyou photograph their souls!',
  'Hand curated top rated TV shows and details of where to watch '
];

List<String> githubLinks = [
  '',
  'https://github.com/Imgkl/R.U.D.E-v2',
  "https://github.com/Imgkl/FlikiPedia",
  "https://github.com/Imgkl/Moofies",
  'https://github.com/Imgkl/Quote',
  'https://github.com/Imgkl/yep-nope',
  'https://github.com/Imgkl/Pixie',
  'https://github.com/Imgkl/CommuniTV'
];
List<Widget> apps = [
  Container(),
  Rude(),
  Flikipedia(),
  Moofies(),
  Quotes(),
  YepNope(),
  Pixie(),
  CommuniTV()
];

List<Color> fabColors = [
  Colors.cyan,
  Colors.red,
  Colors.purple,
  Colors.orangeAccent,
  Colors.black,
  Colors.teal,
  Colors.white,
  Colors.greenAccent
];
