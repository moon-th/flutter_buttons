import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('버튼')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('ButtonStyle'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  // Material State
                  //
                  // hovered - 호버랑 성태 (마우스 커서를 올려놓은 상태)
                  // focused - 포커스 됬을때 (텍스트 필드)
                  // pressed - 눌렀을떄(o)
                  // dragged - 드래그 됫을때
                  // selected - 선택됬을떄
                  // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됬을떄
                  // disabled - 비활성화 됬을때(o)
                  // error - 에러상태
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.white;
                  }
                  return Colors.red;
                }),
                padding: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return EdgeInsets.all(100.0);
                      }
                      return EdgeInsets.all(20.0);
                    }
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  // 메인컬러
                  primary: Colors.red,
                  // 글자색과 리플이펙트
                  onPrimary: Colors.black,
                  // 그림자 색깔
                  shadowColor: Colors.green,
                  // 입체감
                  elevation: 10,
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0),
                  padding: EdgeInsets.all(32.0),
                  side: BorderSide(color: Colors.black, width: 4.0)),
              child: Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                backgroundColor: Colors.yellow,
              ),
              child: Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('TextButton'),
              style: TextButton.styleFrom(
                  primary: Colors.brown, backgroundColor: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
