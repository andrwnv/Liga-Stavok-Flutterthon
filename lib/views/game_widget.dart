import 'package:flutter/material.dart';

import 'package:LigaStavok/misc/app_color_scheme.dart';

/*

  DRAFT VERSION!

*/

class GameWidget extends StatefulWidget {
  GameWidget({Key key}) : super(key: key);

  @override
  _GameWidgetState createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  String _dateInfo = 'Сегодня, 18:55';
  String _leagueInfo = 'Чемпоинская лига';

  String _gameStatus = 'Live';
  int _homeScore = 4;
  int _guestScore = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector( //добавить открытие на нажатие
      onTap: (){

      },
      child: FractionallySizedBox(
        widthFactor: 0.9,
        heightFactor: 0.23,
        child: Container(
          decoration: new BoxDecoration(
              color: AppColorSheme.bgWhite,
              borderRadius: new BorderRadius.all(Radius.circular(8))),
          child: Container(
            decoration: BoxDecoration(
                gradient: new LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColorSheme.primary12.withOpacity(0.3),
                      Colors.transparent
                    ]),
                borderRadius: new BorderRadius.all(
                  Radius.circular(8),
                )),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('$_dateInfo',
                              style: TextStyle(
                                fontSize: 15,
                                color: AppColorSheme.primaryDark.withOpacity(0.6),
                              )),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            padding: const EdgeInsets.only(
                                top: 3, bottom: 3, left: 6, right: 6),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: AppColorSheme.primary12,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Row(
                              children: [
                                Text('$_gameStatus'),
                                Container(
                                    margin: const EdgeInsets.only(left: 6),
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColorSheme.primary12)),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('$_leagueInfo',
                            style: TextStyle(
                                fontSize: 18, color: AppColorSheme.primaryDark)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(
                                    width: 1, color: AppColorSheme.primary12)),
                            child: Center(child: Text('A')),
                          ),
                          Text('CHELSEA')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('$_homeScore',
                                  style: TextStyle(
                                      color: AppColorSheme.primary12,
                                      fontSize: 36)),
                              Text(':',
                                  style: TextStyle(
                                      color: AppColorSheme.gray22, fontSize: 36)),
                              Text('$_guestScore',
                                  style: TextStyle(
                                      color: AppColorSheme.primary12
                                          .withOpacity(0.5),
                                      fontSize: 36)),
                            ],
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            onPressed: () {}, //Добавить развёртывание на нажатие
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 1, color: AppColorSheme.primary12),
                            ),
                            child: Center(child: Text('A')),
                          ),
                          Text('CHELSEA')
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
