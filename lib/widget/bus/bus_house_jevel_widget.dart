import 'package:flutter/material.dart';

class BusHouseLevelWidget extends StatefulWidget {
  final String title;

  BusHouseLevelWidget({this.title});

  @override
  _BusHouseLevelWidgetState createState() => _BusHouseLevelWidgetState();
}

class _BusHouseLevelWidgetState extends State<BusHouseLevelWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.white,
      child: _houseZsWidget(),
    );
  }

  Widget _houseZsWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            border: Border.all(width: 0.5, color: Color(0xFFE8E8E8)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFE0BF),
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                ])),
        child: Column(
          children: <Widget>[
            _headerTitleWidget(),
            _tipItemWidgets(),
          ],
        ),
      ),
    );
  }

  Widget _headerTitleWidget() {
    return GestureDetector(
      onTap: () {
        print('flutter-入选楼盘');
      },
      child: Padding(
        padding: EdgeInsets.only(left: 14, top: 15, right: 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '钻石项目',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF222222)),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFFFDFBB),
                      Color(0x11FFF4E6),
                    ]),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 7, right: 7, top: 2, bottom: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/icon_house_tag_check.png",
                      width: 14,
                      height: 14,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '作业安全系数高',
                      style: TextStyle(fontSize: 12, color: Color(0xFF904502)),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Visibility(
              visible: true,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 2),
                    child: Text(
                      '入选楼盘',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/icon_arrow_right_66.png",
                    width: 12,
                    height: 12,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tipItemWidgets() {
    List<String> datas = [];
    datas.add("隐号带看");
    datas.add("隐号报备");
    datas.add("隐号承诺");
    datas.add("开发商阳光承诺");
    List<Widget> items = [];
    datas.forEach((f) {
      items.add(Column(
        children: <Widget>[
          _tipsItemWidget(f),
          SizedBox(
            height: 12,
          )
        ],
      ));
    });

    return Padding(
      padding: EdgeInsets.only(left: 14, right: 14, top: 17, bottom: 5),
      child: Column(
        children: items,
      ),
    );
  }

  Widget _tipsItemWidget(String f) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  print('flutter-隐号报备点击');
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      f ?? '',
                      style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Visibility(
                      visible: true,
                      child: Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: Image.asset(
                          "assets/icon_arrow_right_66.png",
                          width: 12,
                          height: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '客户认购前，贝壳不向开发商提供客户全号信息，置业顾问通过经纪人回访客户认购前，贝壳不向开发商提供客户全号信息，置业顾问通过经纪人回访',
                style: TextStyle(color: Color(0xff999999), fontSize: 12),
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/icon_house_yg.png",
            width: 36,
            height: 36,
          ),
        )
      ],
    );
  }
}
