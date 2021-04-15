import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/Models/get_data.dart';
import 'package:web_portfolio/Widgets/red_border_button.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/size_config.dart';

class ManuallyControlledSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightProportionate(context, 55),
      width: SizeConfig.widthProportionate(context, 70),
      child: Column(
        children: <Widget>[
          CarouselSlider(
            items: projectCardList,
            options: CarouselOptions(
                enlargeCenterPage: true,
                height: SizeConfig.heightProportionate(context, 50)),
            carouselController: _controller,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: kAlertRedColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: SizedBox(
              width: SizeConfig.widthProportionate(context, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomFlexibleButtom(
                    buttonTitle: '←',
                    textBold: true,
                    onPressFunction: () => _controller.previousPage(),
                  ),
                  ...Iterable<int>.generate(projectCardList.length).map(
                    (int pageIndex) => CustomFlexibleButtom(
                      buttonTitle: "${pageIndex + 1}",
                      onPressFunction: () =>
                          _controller.animateToPage(pageIndex),
                    ),
                  ),
                  CustomFlexibleButtom(
                    buttonTitle: '→',
                    textBold: true,
                    onPressFunction: () => _controller.nextPage(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomFlexibleButtom extends StatelessWidget {
  final Function onPressFunction;
  final String buttonTitle;
  final bool textBold;

  const CustomFlexibleButtom(
      {Key key,
      @required this.onPressFunction,
      @required this.buttonTitle,
      this.textBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RaisedButton(
        focusColor: kThemeBlueColor,
        highlightColor: kThemeBlueColor,
        hoverColor: kThemeBlueColor,
        color: kThemeBlackColor,
        onPressed: onPressFunction,
        child: Text(
          '$buttonTitle',
          style: TextStyle(
              color: Colors.white,
              fontWeight: (textBold) ? FontWeight.bold : FontWeight.normal),
        ),
      ),
    );
  }
}

//'←'
