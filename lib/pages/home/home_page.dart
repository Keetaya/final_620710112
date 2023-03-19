import 'package:flutter/material.dart';

import '../../models/poll.dart';
import '../my_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Poll>? _polls;
  var _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    // todo: Load list of polls here
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        children: [
          Image.network('https://cpsu-test-api.herokuapp.com/images/election.jpg'),
          const Padding(
            padding: EdgeInsets.all(12.0),
                 child: Text("1. บุคคลใดที่คุณจะสนับสนุนให้เป็นนายกรัฐมนตรีในการเลือกตั้งครั้งนี้            "),
            //Text("1. บุคคลใดที่คุณจะสนับสนุนให้เป็นนายกรัฐมนตรีในการเลือกตั้งครั้งนี้            "),

          ),









          Padding(

            padding: const EdgeInsets.all(12.0),
            child: Text("3. ในการเลือกตั้ง ส.ส. แบบแบ่งเขต คุณจะเลือกผู้สมัครจากพรรคการเมืองใด"),

          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("2. ในการเลือกตั้ง ส.ส. แบบบัญชีรายชื่อ คุณจะเลือกผู้สมัครจากพรรคการเมืองใด"),

          ),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('พรรคประชาธิปัตย์'))),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('พรรคเพื่อไทย'))),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('พรรคเสรีรวมไทย'))),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('พรรคก้าวไกล'))),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('พรรคภูมิใจไทย'))),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('พรรคไทยสร้างไทย์'))),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('พรรคพลังประชารัฐ'))),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('พรรครวมไทยสร้างชาติ'))),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('อื่นๆ'))),
          Expanded (flex: 1,child: OutlinedButton(onPressed: () {
            //todo:
          }, child: Text('ยังไม่ได้ตัดสินใจ'))),

          Expanded(
            child: Stack(
              children: [
                if (_polls != null) _buildList(),
                if (_isLoading) _buildProgress(),
              ],
            ),
          ),

        ],
      ),
    );
  }

  ListView _buildList() {
    return ListView.builder(
      itemCount: _polls!.length,
      itemBuilder: (BuildContext context, int index) {
        // todo: Create your poll item by replacing this Container()

        return Container();
      },
    );
  }

  Widget _buildProgress() {
    return Container(
      color: Colors.black.withOpacity(0.6),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircularProgressIndicator(color: Colors.white),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('รอสักครู่', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
