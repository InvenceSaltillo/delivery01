import 'package:delivery01/src/providers/detail_appbar_provider.dart';
import 'package:delivery01/src/widgets/circular_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class DetailAppbar extends StatelessWidget {
  const DetailAppbar({
    Key key,
    @required List<Widget> list,
    @required PageController controller,
    @required int currentIndex,
  })  : _list = list,
        _controller = controller,
        _currentIndex = currentIndex,
        super(key: key);

  final List<Widget> _list;
  final PageController _controller;
  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    final _appBarProvider = Provider.of<DetailAppbarProvider>(context);
    return Stack(
      children: [
        Container(
          height: 375,
          child: PageView(
            children: _list,
            scrollDirection: Axis.horizontal,
            controller: _controller,
            onPageChanged: (num) {
              _appBarProvider.pageIndex = num;
            },
          ),
        ),
        Positioned(
          bottom: 95,
          left: 50,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                _list.length,
                (index) => Indicator(
                  positionIndex: index,
                  currentIndex: _currentIndex,
                ),
              )),
        ),
        Positioned(
          top: 50,
          left: 40,
          child: CircularButton(
            onTap: () {},
            icon: Icon(
              Icons.clear,
              color: Colors.white,
            ),
            color: kPrimaryColor.withOpacity(.7),
          ),
        ),
        Positioned(
          top: 50,
          right: 40,
          child: CircularButton(
            onTap: () {},
            icon: Icon(
              Icons.share_outlined,
              color: Colors.white,
            ),
            color: kPrimaryColor.withOpacity(.7),
          ),
        ),
        Positioned(
          bottom: 90,
          left: 20,
          child: CircularButton(
            onTap: () {
              _controller.previousPage(
                duration: Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black87,
              size: 12,
            ),
            color: Colors.grey.withOpacity(.8),
            width: 18,
            height: 18,
          ),
        ),
        Positioned(
          bottom: 90,
          right: 20,
          child: CircularButton(
            onTap: () {
              _controller.nextPage(
                duration: Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            },
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black87,
              size: 12,
            ),
            color: Colors.grey.withOpacity(.8),
            width: 18,
            height: 18,
          ),
        ),
      ],
    );
  }
}

class Pages extends StatelessWidget {
  final String image;
  Pages({@required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  const Indicator({this.currentIndex, this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: positionIndex == currentIndex ? kPrimaryColor : Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ],
    );
  }
}
