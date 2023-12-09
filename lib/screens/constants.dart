import 'package:flutter/material.dart';

class Constants {
  static Container customContainer(final screenHeight, final screenWidth,
          final _textcontroller, final _hintText, final _labelText, final _Icon) =>
      Container(
        height: screenHeight * 0.1,
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey),
        ),
        child: TextField(
          textInputAction: TextInputAction.next,
          onChanged: (value) {
            _textcontroller.text = value;
          },
          decoration: InputDecoration(
              hintText: _hintText,
              labelText: _labelText,
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 9.0, horizontal: 10.0),
              prefixIcon: Icon(
                _Icon,
                color: Color(0xFF519C6D),
              )),
        ),
      );

  // button
  static Container button(
    final screenWidth,
    final screenHeight,
      final _buttonText,
      final Function
  ) =>
      Container(
        width: screenWidth * 0.8,
        height: screenHeight * 0.1,
        child: ElevatedButton(
          onPressed: Function,
          style: ElevatedButton.styleFrom(
            backgroundColor:
            Color(0xFF519C6D),
          ),
          child: Text(_buttonText, style: TextStyle(fontSize: 18, color: Colors.white),),
        ),
      );
}
