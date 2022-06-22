import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/app/data/models/agent.dart';
import 'package:flutter_dicoding_submission/app/styles/app_colors.dart';
import 'package:flutter_dicoding_submission/app/widgets/network_image_widget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AgentsItem extends StatelessWidget {
  const AgentsItem({
    Key? key,
    required this.agent,
    this.onPressedCallback,
  }) : super(key: key);

  final VoidCallback? onPressedCallback;
  final Agent agent;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: onPressedCallback,
        child: Container(
          width: size.width,
          padding: EdgeInsetsDirectional.fromSTEB(14, 8, 14, 8),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Color(0xFF757578),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: NetworkImageWidget(imageUrl: agent.image),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 8, 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Text(
                              '${agent.name ?? 'Agent Unknown'}',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: RatingBar.builder(
                              onRatingUpdate: (newValue) {},
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: Color(0xFFD2AE39),
                              ),
                              direction: Axis.horizontal,
                              initialRating: agent.score ?? 3.0,
                              unratedColor: Color(0xFF9E9E9E),
                              itemCount: 5,
                              itemSize: 16,
                              glowColor: Color(0xFFD2AE39),
                            ),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            textAlign: TextAlign.justify,
                            maxLines: 3,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: primaryText,
                              fontSize: 10,
                              fontWeight: FontWeight.w200,
                              height: 1.15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
