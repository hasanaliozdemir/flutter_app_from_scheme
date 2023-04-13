import 'package:flutter/material.dart';

final Map mainData = {
  "appid": "",
  "appGuid": "",
  "menu": ["home", "account"],
  "pages": [
    {
      "pagename": "home",
      "icon": "",
      "rows": [
        {
          "columncount": 1,
          "widget": ["heading", "text"],
        },
        {
          "columncount": 1,
          "widget": ["map"],
        }
      ]
    },
    {}
  ],
  "footer": "",
  "background_image": "",
  "background_color": Colors.black,
};

final Map textItemDAta = {
  "TypeID": "TEXT",
  "content": "blalbalba",
  "rowflex": 1,
  "color": Colors.red
};

final Map buttonItemData = {
  "TypeID": "BUTTON",
  "content": "blalbalba",
  "rowflex": 1,
  "ActionType": "UYGULAMA İÇİ VEYA HREF",
  "actionContent": "",
  "color": ""
};

final Map imageItemData = {
  "TypeID": "IMAGE",
  "link": "blalbalba",
  "rowflex": 1,
};

final Map imageSliderItemData = {
  "TypeID": "IMAGESLIDER",
  "link": ["AASFAS", "SAFASFAF", "ASFASFAS"],
  "rowflex": 1,
};

final Map mapItem = {
  "TypeID": "MAP",
  "rowflex": 2,
};

final Map socialMediaItemsData = {
  "TypeID": "SOCIALMEDIA",
  "SocialMedias": [
    {"PlatformID": "1", "Link": "blabla"},
    {"PlatformId": "2", "Link": "blabla"}
  ],
  "rowflex": 1,
};

final Map cardItem = {
  "TypeID": "CARD",
  "icon": "blabla",
  "header": "asfasdf",
  "text": "blabla",
  "rowflex": 21,
  "background-color": "",
  "text-color": ""
};

final Map headerItemData = {
  "TypeID": "HEADER",
  "icon": "blabla",
  "header": "asfasdf",
  "text": "blabla",
  "rowflex": 3,
  "text-color"
      "background_image": "",
  "background_color": "",
};

final breakItemData = {
  "TypeID": "Break",
  "color": "",
  "size": 12,
};

final Map cardSliderItemData = {
  "TypeID": "CardSlider",
  "slider": [
    {
      "image": "blabla",
      "header": "asfasdf",
      "text": "blabla",
      "background-color": "",
      "text-color": ""
    },
    {
      "image": "blabla",
      "header": "asfasdf",
      "text": "blabla",
      "background-color": "",
      "text-color": ""
    }
  ],
  "rowflex": 21,
};
