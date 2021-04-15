import 'package:flutter/material.dart';
import 'package:web_portfolio/Widgets/barchart.dart';
import 'package:web_portfolio/utils/size_config.dart';

class SideWidget extends StatelessWidget {
  const SideWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: SizeConfig.widthProportionate(context, 20),
      height: SizeConfig.heightProportionate(context, 90),
      /*decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.yellow, //                   <--- border color
          width: 5.0,
        ),
      ),*/

      child: Column(
        children: [
          BarChartSample1(),
        ],
      ),
    );
  }
}
