import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Yuk cari',
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset('assets/icons/search (1).svg'),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: SizedBox(
              height: 48,
              width: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF5CD8FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(13),
                    ),
                  ),
                ),
                child: SvgPicture.asset('assets/icons/filter.svg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
  borderSide: BorderSide.none,
);
