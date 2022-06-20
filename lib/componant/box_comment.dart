import 'package:b_app/componant/user_profile_image.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({
    Key? key,
     required this.textEditingController,
    required this.focusNode,
    required this.onSubmitted,
    // addComment, showCommentBox,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final Function(String?) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: (Theme.of(context).brightness == Brightness.light)
            ? K.whiteColor
            : K.splashStackColor,
        border: Border(
            top: BorderSide(
              color: (Theme.of(context).brightness == Brightness.light)
                  ? K.mainColor
                  : K.splashStackColor,
            )),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _emojiText('❤️'),
                _emojiText('🙌'),
                _emojiText('🔥'),
                _emojiText('👏🏻'),
                _emojiText('😢'),
                _emojiText('😍'),
                _emojiText('😮'),
                _emojiText('😂'),
              ],
            ),
          ),
          Row(
            children: [
                Padding(
                padding:   EdgeInsets.all(8.0),
                child: UserProfileImage(image: 'assets/images/person.png',),
              ),
              Expanded(
                child: TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onSubmitted: onSubmitted,
                  minLines: 1,
                  maxLines: 10,
                  style:   const TextStyle(fontSize: 14),
                  decoration: const InputDecoration(
                      suffix: InkWell(
                        // textEditorFocusNode: focusNode,
                        // textEditingController: textEditingController,
                        // onSubmitted: onSubmitted,
                      ),
                      hintText: 'Add a comment...',
                      isDense: true,
                      contentPadding:   EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      // focusedBorder:Colors.lightGreen
                      // border: Colors.lightGreen,
                      // enabledBorder: border
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
        ],
      ),
    );


  }

Widget _emojiText(String emoji) {
  return GestureDetector(
    onTap: () {  },
    child: Text(
      emoji,
      style: const TextStyle(fontSize: 24),
    ),
  );
}

}
