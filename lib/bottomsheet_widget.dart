import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Hello World"),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: Material(
                elevation: 5,
                shadowColor: Colors.transparent,
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20.r),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  maxLines: 1,
                  maxLength: 30,
                  autocorrect: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Name is required";
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
