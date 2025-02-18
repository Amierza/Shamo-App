import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toko_sepatu/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  ChatBubble({
    // super.key,
    this.text = '',
    this.isSender = false,
    this.hasProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 12,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        width: 231,
        decoration: BoxDecoration(
          color: isSender ? backgroundColor5 : backgroundColor4,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isSender ? 12 : 0),
            topRight: Radius.circular(isSender ? 0 : 12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION 2.0 SHOES',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: reguler,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '\$57,15',
                        style: priceTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: primaryColor,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: prupleTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: reguler,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.poppins(
                      color: backgroundColor5,
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: isSender ? backgroundColor5 : backgroundColor4,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      topRight: Radius.circular(isSender ? 0 : 12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    text,
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: reguler,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
