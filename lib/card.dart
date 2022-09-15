import 'package:flutter/material.dart';

Widget buildDefinitionCard(
  BuildContext context, {
  required String word,
  required String definition,
  required String example,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 16.0),
    child: GestureDetector(
      onTap: () {
        print('tap detected.');
      },
      child: Material(
        elevation: 3.0,
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
        child: Container(
            width: 266,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'word',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    word,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'definition',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    definition,
                    textScaleFactor: 1.1,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'example',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    example,
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            )),
      ),
    ),
  );
}
