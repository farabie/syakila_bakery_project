part of 'widget.dart';

class CustomTextField extends StatelessWidget {
  final String textInput;
  final TextEditingController controller;
  final void Function(String) onChanged;
  final bool obsecureText;

  CustomTextField(
      {required this.textInput,
      required this.controller,
      required this.obsecureText,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          textInput,
          style: normalFontStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 45,
          padding: EdgeInsets.only(
            top: 5,
            bottom: 5,
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(34, 34, 34, 100),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            cursorColor: mainColor,
            onChanged: onChanged,
            controller: controller,
            obscureText: obsecureText,
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
