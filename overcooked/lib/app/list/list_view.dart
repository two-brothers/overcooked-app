import 'package:flutter/material.dart';
import 'package:overcooked/app/list/list_bloc.dart';
import 'package:overcooked/app/list/list_state.dart';
import 'package:overcooked/app/list/list_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class List extends StatefulWidget {
  List({Key key}) : super(key: key);

  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  final listBloc = ListBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        builder: (BuildContext context) => listBloc,
        child: Container(
            child: BlocBuilder(
                bloc: listBloc,
                builder: (BuildContext context, ListState state) {
                  if (state.isLoading) {
                    return buildLoading();
                  }
                  return buildContent(state.content);
                }
            )
        )
    );
  }

  Widget buildLoading() {
    return Column(
        children: <Widget>[
          Text("loading..."),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              listBloc.dispatch(ContentLoadedEvent());
            },
            child: Text("load content"),
          )
        ]
    );
  }

  Widget buildContent(String content) {
    return Text(content);
  }
}