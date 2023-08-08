import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 180,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          alignment: Alignment.center,
          child: const Text('Nenhuma imagem'),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.camera),
            label: const Text('Tirar foto'),
            style: TextButton.styleFrom(
                textStyle: TextStyle(color: Theme.of(context).primaryColor)),
          ),
        )
      ],
    );
  }
}
