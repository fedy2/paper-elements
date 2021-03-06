/*
 * Copyright (c) 2014 The Polymer Project Authors. All rights reserved.
 * This code may only be used under the BSD style license found at http://polymer.github.io/LICENSE.txt
 * The complete set of authors may be found at http://polymer.github.io/AUTHORS.txt
 * The complete set of contributors may be found at http://polymer.github.io/CONTRIBUTORS.txt
 * Code distributed by Google as part of the polymer project is also
 * subject to an additional IP rights grant found at http://polymer.github.io/PATENTS.txt
 */
library paper_elements.example.paper_menu_button;

import 'dart:html';
import 'package:polymer/polymer.dart';

main () {
  initPolymer().run(() {
    Polymer.onReady.then((_) {
      var template = querySelector('#myTemplate');
      template.model = new MyModel();
    });
  });
}

class Country {
  final String name;
  final String code;
  const Country(this.name, this.code);
}

class MyModel {
  final List<Country> countries = [
    const Country('Afghanistan','AF'),
    const Country('Åland Islands','AX'),
    const Country('Albania','AL'),
    const Country('Algeria','DZ'),
    const Country('American Samoa','AS'),
    const Country('Andorra','AD'),
    const Country('Angola','AO'),
    const Country('Anguilla','AI'),
    const Country('Antarctica','AQ'),
    const Country('Antigua and Barbuda','AG'),
    const Country('Argentina','AR'),
    const Country('Armenia','AM'),
    const Country('Aruba','AW'),
    const Country('Australia','AU'),
    const Country('Austria','AT'),
    const Country('Azerbaijan','AZ'),
    const Country('Bahamas','BS'),
    const Country('Bahrain','BH'),
    const Country('Bangladesh','BD'),
    const Country('Barbados','BB'),
    const Country('Belarus','BY'),
    const Country('Belgium','BE'),
    const Country('Belize','BZ'),
    const Country('Benin','BJ'),
    const Country('Bermuda','BM'),
    const Country('Bhutan','BT'),
    const Country('Bolivia','BO'),
    const Country('Bosnia and Herzegovina','BA'),
    const Country('Botswana','BW'),
    const Country('Bouvet Island','BV'),
    const Country('Brazil','BR'),
    const Country('British Indian Ocean Territory','IO'),
    const Country('Brunei Darussalam','BN'),
    const Country('Bulgaria','BG'),
    const Country('Burkina Faso','BF'),
    const Country('Burundi','BI'),
    const Country('Cambodia','KH'),
    const Country('Cameroon','CM'),
    const Country('Canada','CA'),
    const Country('Cape Verde','CV'),
    const Country('Cayman Islands','KY'),
    const Country('Central African Republic','CF'),
    const Country('Chad','TD'),
    const Country('Chile','CL'),
    const Country('China','CN'),
    const Country('Christmas Island','CX'),
    const Country('Cocos (Keeling) Islands','CC'),
    const Country('Colombia','CO'),
    const Country('Comoros','KM'),
    const Country('Congo','CG'),
    const Country('Congo, The Democratic Republic of the','CD'),
    const Country('Cook Islands','CK'),
    const Country('Costa Rica','CR'),
    const Country('Cote D\'Ivoire','CI'),
    const Country('Croatia','HR'),
    const Country('Cuba','CU'),
    const Country('Cyprus','CY'),
    const Country('Czech Republic','CZ'),
    const Country('Denmark','DK'),
    const Country('Djibouti','DJ'),
    const Country('Dominica','DM'),
    const Country('Dominican Republic','DO'),
    const Country('Ecuador','EC'),
    const Country('Egypt','EG'),
    const Country('El Salvador','SV'),
    const Country('Equatorial Guinea','GQ'),
    const Country('Eritrea','ER'),
    const Country('Estonia','EE'),
    const Country('Ethiopia','ET'),
    const Country('Falkland Islands (Malvinas)','FK'),
    const Country('Faroe Islands','FO'),
    const Country('Fiji','FJ'),
    const Country('Finland','FI'),
    const Country('France','FR'),
    const Country('French Guiana','GF'),
    const Country('French Polynesia','PF'),
    const Country('French Southern Territories','TF'),
    const Country('Gabon','GA'),
    const Country('Gambia','GM'),
    const Country('Georgia','GE'),
    const Country('Germany','DE'),
    const Country('Ghana','GH'),
    const Country('Gibraltar','GI'),
    const Country('Greece','GR'),
    const Country('Greenland','GL'),
    const Country('Grenada','GD'),
    const Country('Guadeloupe','GP'),
    const Country('Guam','GU'),
    const Country('Guatemala','GT'),
    const Country('Guernsey','GG'),
    const Country('Guinea','GN'),
    const Country('Guinea-Bissau','GW'),
    const Country('Guyana','GY'),
    const Country('Haiti','HT'),
    const Country('Heard Island and Mcdonald Islands','HM'),
    const Country('Holy See (Vatican City State)','VA'),
    const Country('Honduras','HN'),
    const Country('Hong Kong','HK'),
    const Country('Hungary','HU'),
    const Country('Iceland','IS'),
    const Country('India','IN'),
    const Country('Indonesia','ID'),
    const Country('Iran, Islamic Republic Of','IR'),
    const Country('Iraq','IQ'),
    const Country('Ireland','IE'),
    const Country('Isle of Man','IM'),
    const Country('Israel','IL'),
    const Country('Italy','IT'),
    const Country('Jamaica','JM'),
    const Country('Japan','JP'),
    const Country('Jersey','JE'),
    const Country('Jordan','JO'),
    const Country('Kazakhstan','KZ'),
    const Country('Kenya','KE'),
    const Country('Kiribati','KI'),
    const Country('Korea, Democratic People\'S Republic of','KP'),
    const Country('Korea, Republic of','KR'),
    const Country('Kuwait','KW'),
    const Country('Kyrgyzstan','KG'),
    const Country('Lao People\'S Democratic Republic','LA'),
    const Country('Latvia','LV'),
    const Country('Lebanon','LB'),
    const Country('Lesotho','LS'),
    const Country('Liberia','LR'),
    const Country('Libyan Arab Jamahiriya','LY'),
    const Country('Liechtenstein','LI'),
    const Country('Lithuania','LT'),
    const Country('Luxembourg','LU'),
    const Country('Macao','MO'),
    const Country('Macedonia, The Former Yugoslav Republic of','MK'),
    const Country('Madagascar','MG'),
    const Country('Malawi','MW'),
    const Country('Malaysia','MY'),
    const Country('Maldives','MV'),
    const Country('Mali','ML'),
    const Country('Malta','MT'),
    const Country('Marshall Islands','MH'),
    const Country('Martinique','MQ'),
    const Country('Mauritania','MR'),
    const Country('Mauritius','MU'),
    const Country('Mayotte','YT'),
    const Country('Mexico','MX'),
    const Country('Micronesia, Federated States of','FM'),
    const Country('Moldova, Republic of','MD'),
    const Country('Monaco','MC'),
    const Country('Mongolia','MN'),
    const Country('Montserrat','MS'),
    const Country('Morocco','MA'),
    const Country('Mozambique','MZ'),
    const Country('Myanmar','MM'),
    const Country('Namibia','NA'),
    const Country('Nauru','NR'),
    const Country('Nepal','NP'),
    const Country('Netherlands','NL'),
    const Country('Netherlands Antilles','AN'),
    const Country('const Caledonia','NC'),
    const Country('const Zealand','NZ'),
    const Country('Nicaragua','NI'),
    const Country('Niger','NE'),
    const Country('Nigeria','NG'),
    const Country('Niue','NU'),
    const Country('Norfolk Island','NF'),
    const Country('Northern Mariana Islands','MP'),
    const Country('Norway','NO'),
    const Country('Oman','OM'),
    const Country('Pakistan','PK'),
    const Country('Palau','PW'),
    const Country('Palestinian Territory, Occupied','PS'),
    const Country('Panama','PA'),
    const Country('Papua const Guinea','PG'),
    const Country('Paraguay','PY'),
    const Country('Peru','PE'),
    const Country('Philippines','PH'),
    const Country('Pitcairn','PN'),
    const Country('Poland','PL'),
    const Country('Portugal','PT'),
    const Country('Puerto Rico','PR'),
    const Country('Qatar','QA'),
    const Country('Reunion','RE'),
    const Country('Romania','RO'),
    const Country('Russian Federation','RU'),
    const Country('RWANDA','RW'),
    const Country('Saint Helena','SH'),
    const Country('Saint Kitts and Nevis','KN'),
    const Country('Saint Lucia','LC'),
    const Country('Saint Pierre and Miquelon','PM'),
    const Country('Saint Vincent and the Grenadines','VC'),
    const Country('Samoa','WS'),
    const Country('San Marino','SM'),
    const Country('Sao Tome and Principe','ST'),
    const Country('Saudi Arabia','SA'),
    const Country('Senegal','SN'),
    const Country('Serbia and Montenegro','CS'),
    const Country('Seychelles','SC'),
    const Country('Sierra Leone','SL'),
    const Country('Singapore','SG'),
    const Country('Slovakia','SK'),
    const Country('Slovenia','SI'),
    const Country('Solomon Islands','SB'),
    const Country('Somalia','SO'),
    const Country('South Africa','ZA'),
    const Country('South Georgia and the South Sandwich Islands','GS'),
    const Country('Spain','ES'),
    const Country('Sri Lanka','LK'),
    const Country('Sudan','SD'),
    const Country('Suriname','SR'),
    const Country('Svalbard and Jan Mayen','SJ'),
    const Country('Swaziland','SZ'),
    const Country('Sweden','SE'),
    const Country('Switzerland','CH'),
    const Country('Syrian Arab Republic','SY'),
    const Country('Taiwan, Province of China','TW'),
    const Country('Tajikistan','TJ'),
    const Country('Tanzania, United Republic of','TZ'),
    const Country('Thailand','TH'),
    const Country('Timor-Leste','TL'),
    const Country('Togo','TG'),
    const Country('Tokelau','TK'),
    const Country('Tonga','TO'),
    const Country('Trinidad and Tobago','TT'),
    const Country('Tunisia','TN'),
    const Country('Turkey','TR'),
    const Country('Turkmenistan','TM'),
    const Country('Turks and Caicos Islands','TC'),
    const Country('Tuvalu','TV'),
    const Country('Uganda','UG'),
    const Country('Ukraine','UA'),
    const Country('United Arab Emirates','AE'),
    const Country('United Kingdom','GB'),
    const Country('United States','US'),
    const Country('United States Minor Outlying Islands','UM'),
    const Country('Uruguay','UY'),
    const Country('Uzbekistan','UZ'),
    const Country('Vanuatu','VU'),
    const Country('Venezuela','VE'),
    const Country('Viet Nam','VN'),
    const Country('Virgin Islands, British','VG'),
    const Country('Virgin Islands, U.S.','VI'),
    const Country('Wallis and Futuna','WF'),
    const Country('Western Sahara','EH'),
    const Country('Yemen','YE'),
    const Country('Zambia','ZM'),
    const Country('Zimbabwe','ZW'),
  ];

  final List<String> pastries = [
    'Apple fritter',
    'Croissant',
    'Donut',
    'Financier',
    'Jello',
    'Madeleine',
    'Pound cake',
    'Pretzel',
    'Sfogliatelle'
  ];
}
