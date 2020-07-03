import 'package:chuuse/custom_widgets/Rounded_Botton_2.dart';
import 'package:flutter/material.dart';

class ExplorePageMenu extends StatelessWidget {
  const ExplorePageMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 0,
        top: 20,
        right:20,
      ),
      child: Container(
        height: 35.0,
        width: 300.0,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 1, bottom: 1),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: RoundedButton2(
                  color: Colors.white,
                  text: 'Catalog',
                ),
              ),
            ),
            
            //second botton on row menu//

            Padding(
              padding: const EdgeInsets.only(left: 5, top: 1, bottom: 1),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: RoundedButton2(
                  text: 'Featured',
                  press: (){},
                ),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}