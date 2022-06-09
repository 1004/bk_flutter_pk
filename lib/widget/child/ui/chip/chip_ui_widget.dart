import 'package:flutter/material.dart';

class ChipUiWidget extends StatefulWidget {
  final String title;

  ChipUiWidget({this.title});

  @override
  _ChipUiWidgetState createState() => _ChipUiWidgetState();
}

class _ChipUiWidgetState extends State<ChipUiWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: _buildBody(),
    );
  }

  int _selectIdnex = 0;

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _chipItem(
            'RowChip',
            Row(children: <Widget>[
              RawChip(
                label: Text('xky'),
                // selected: true,
                // showCheckmark: true,
                // checkmarkColor: Colors.blue,
              ),
              RawChip(
                label: Text('孙悟空'),
                avatar: CircleAvatar(
                  child: Text('孙'),
                ),
              ),
              RawChip(
                label: Text('孙悟空'),
                labelStyle: TextStyle(color: Colors.redAccent),
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              RawChip(
                label: Text('唐僧'),
                onDeleted: (){
                  print('delete');
                },
                deleteIcon: Icon(Icons.delete),
                deleteIconColor: Colors.blue,
                deleteButtonTooltipMessage: '删除',
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                shadowColor: Colors.blueGrey,
                elevation: 8,
              )
            ])),
        _chipItem('InputChip', InputChip(label: Text('猪八戒'))),
        Wrap(
          spacing: 15,
          children: List.generate(13, (index){
            return ChoiceChip(
              label: Text('妖精$index'),
              selected: index==_selectIdnex,
              onSelected: (v){
                setState(() {
                  _selectIdnex = index;
                });
              },
            );
          }).toList(),
        ),
        _chipItem('FilterChip', FilterChip(
          label: Text('选择吧'),
          selected: true,
          onSelected: (v){

          },
        )),
        _chipItem('AciontChip', ActionChip(
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Text("孙"),
          ),
          label: Text("孙悟空"),
          onPressed: (){
            print("onPressed");
          },
        ))
      ],
    );
  }

  Widget _chipItem(String text, Widget child) {
    return Row(
      children: <Widget>[
        Text(text ?? ''),
        SizedBox(
          width: 10,
        ),
        child
      ],
    );
  }
}
