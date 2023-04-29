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

var fakeAllData = {
  "footer": "blabla",
  "background": "#000FFF",
  "background_image": "",
  "pages": [
    {
      "name": "mainpage",
      "header": {
        "TypeID": 8,
        "rowFlex": 5,
        "title": "Header başlik",
        "description": "header text",
        "image": "header image url",
        "textcolor": "#000FFF",
        "backgroundcolor": "#FFF000",
        "backgroundimage": "header image"
      },
      "icon": "blabla.com.tr",
      "inMenu": true,
      "rows": [
        {
          "row": 1,
          "rowFlex": 2,
          "components": [
            {
              "TypeID": 0,
              "rowFlex": 3,
              "color": "#FFFFFF",
              "content": "yazı",
              "position": "right"
            },
            {
              "TypeID": 2,
              "rowFlex": 3,
              "content": "Tikla",
              "color": "#0000FF",
              "ActionType": "href veya route",
              "Action": "link veya page",
              "position": "left"
            }
          ]
        },
        {
          "row": 2,
          "rowFlex": 3,
          "components": [
            {"TypeID": 9, "rowFlex": 1, "height": 5}
          ]
        },
        {
          "row": 3,
          "rowFlex": 4,
          "components": [
            {"TypeID": 4, "rowFlex": 1, "position": "center"}
          ]
        },
        {
          "row": 4,
          "rowFlex": 4,
          "components": [
            {
              "TypeID": 7,
              "rowFlex": 6,
              "cards": [
                {
                  "TypeID": 6,
                  "rowFlex": 3,
                  "title": "Card Baslik",
                  "description": "Card Text",
                  "image": "Image varsa url veya icon",
                  "position": "center",
                  "textcolor": "#0000FF",
                  "backgroundcolor": "#FFFF00"
                },
                {
                  "TypeID": 6,
                  "rowFlex": 5,
                  "title": "Baslik",
                  "description": "Description",
                  "image": "icon veya image",
                  "position": "center",
                  "textcolor": "#0000FF",
                  "backgroundcolor": "#0000FF"
                }
              ],
              "position": "center"
            }
          ]
        },
        {
          "row": 5,
          "rowFlex": 1,
          "components": [
            {
              "TypeID": 5,
              "rowFlex": 3,
              "position": "center",
              "media": [
                {"platform": "facebook", "link": "www.facebook.com"},
                {"platform": "twitter", "link": "www.twitter.com"}
              ]
            }
          ]
        },
        {
          "row": 6,
          "rowFlex": 3,
          "components": [
            {
              "TypeID": 6,
              "rowFlex": 3,
              "title": "SoloCardBaslik",
              "description": "SoloCardDescription",
              "image": "SoloCardImage",
              "position": "center",
              "textcolor": "#9000F",
              "backgroundcolor": "#9000F"
            }
          ]
        },
        {
          "row": 7,
          "rowFlex": 4,
          "components": [
            {
              "TypeID": 1,
              "rowFlex": 5,
              "link": "soloimagelink",
              "position": "center"
            }
          ]
        },
        {
          "row": 8,
          "rowFlex": 55,
          "components": [
            {
              "TypeID": 3,
              "rowFlex": 6,
              "imgs": [
                {
                  "TypeID": 1,
                  "rowFlex": 8,
                  "link": "sliderimagelink",
                  "position": "center"
                },
                {
                  "TypeID": 1,
                  "rowFlex": 5,
                  "link": "denemelink",
                  "position": "center"
                }
              ],
              "position": "center"
            }
          ]
        }
      ]
    }
  ]
};
