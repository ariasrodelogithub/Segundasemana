import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  listview({Key? key}) : super(key: key);
  //list por lista, el map porque es lista de diccionarios
  //el string es la llave y el dinamic es el valor del diccioanrio, que puede ser string, int, etc
  void openAlertDialog(BuildContext context, String info) {
    AlertDialog alert =
        AlertDialog(title: Text(info), content: Text(info), actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('OK'),
      )
    ]);
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  final List<Map<String, dynamic>> lugares = [
    
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    },
    {
      'image':
          'https://viajes.nationalgeographic.com.es/medio/2017/04/24/paris_fa5c2ffd.jpg',
      'name': 'París'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/content_image_desktop_filter/uploads/2016/05/20/5fa3b560c7486.jpeg',
      'name': 'Machu Picchu (Perú)'
    },
    {
      'image':
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
      'name': 'Taj Mahal, Agra (India)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/maldivas-1.jpg',
      'name': 'Maldivas'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Dubai-.jpg',
      'name': 'Dubai'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Seychelles.jpg',
      'name': 'islas del paraíso'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Nicaragua.jpg',
      'name': 'Nicaragua'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/sydney.jpg',
      'name': 'Australia'
    },
    {
      'image':
          'https://www.mundoviajes.org/wp-content/uploads/Bali-Indonesia.jpg',
      'name': ' Bali (Indonesia)'
    },
    {
      'image': 'https://www.mundoviajes.org/wp-content/uploads/Sudafrica.jpg',
      'name': 'Sudáfrica'
    },
    {
      'image':
          'https://files.rcnradio.com/public/2018-08/whatsapp_image_2018-08-23_at_7.20.08_am_0.jpeg',
      'name': 'chicas lindas'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lugares en los que ya estuve'),
        ),
        body: ListView.builder(
          itemCount: lugares.length, //tamaño de la lsita
          physics: const BouncingScrollPhysics(),
          itemBuilder:
              (contexto, //el contexto es para saber en el arbol de widgets donde se encuentra ubicado el listview
                  index //el index hace referencia a cada elemento de la lista
                  ) {
            return ListTile(
                //recibe 2 parametros
                leading: CircleAvatar(
                  // primera parte de la lita, recibe cualquier widget
                  backgroundImage:
                      Image.network(lugares[index]['image']!).image,
                ),
                title: Text(//segunda parte de la lista, recibe cualquier widget
                    lugares[index]['name']!),
                onTap: () {
                  openAlertDialog(context, lugares[index]['name']);
                });
          },
        ));
  }
}
