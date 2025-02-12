import 'package:flutter/material.dart';
import 'package:reset_app/core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.start,
        text: TextSpan(children: [
          TextSpan(
            text: 'عند انشاءك حسابا في الشعار ، فأنت توافق على ',
            style: TextStyles.font12BlackRegular,
          ),
          TextSpan(
            
            text: 'سياسة الخصوصية الخاصة بنا و شروط الاستخدام',
            
            style: TextStyles.font12BlackSemiBold,
          ),
          
        ]));
  }
}
