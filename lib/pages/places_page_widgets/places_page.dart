import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mobile_app/resources/resources.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';

import 'externals_app_widget.dart';

class PlacesPageWidget extends StatefulWidget {
  final Color color;

  PlacesPageWidget(this.color);

  @override
  _PlacesPageWidgetState createState() => _PlacesPageWidgetState();
}

const String BIG_DESCRIPTION =
    'Мы молодой, локальный гриль-бар на площади Мужества с атмосферой домашнего уюта и вниманием к мелочам. Практически всё, что вас окружает в нашем баре, сделано нашими руками - со вкусом и без наедалова!';

class _PlacesPageWidgetState extends State<PlacesPageWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemExtent: 220,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black.withOpacity(0.1)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: Offset(0, 2))
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.place, color: widget.color),
                        Text("пр-кт Просвещения, 35"),
                        Spacer(),
                        Text('Биршоп ● Бар')
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: const Divider(
                        thickness: 3,
                      ),
                    ),
                    Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(45.0),
                        child: Image(
                          image: AssetImage(AppImages.incidentBeerShop),
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text("Incident.beer.shop",
                                    style: new TextStyle(
                                        fontFamily: "Lucida",
                                        fontSize: 20.0,
                                        color: widget.color)),
                              ),
                              Text(
                                BIG_DESCRIPTION,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 1),
                                child: ExternalAppsWidget(
                                  phone: '+7 (931) 398-85-67',
                                  instagram: 'incident.beer.shop',
                                  vk: 'beerbagspb',
                                  web: 'anime.anidub.life/anime',
                                  telegram: 'caramella_astra',
                                ),
                              ),
                              // SizedBox(height: 30)
                            ],
                          ),
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: const Divider(
                        thickness: 3,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.highlight_off, size: 15, color: Colors.red),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text('Закрыто до 10:00'),
                        ),
                        Spacer(),
                        Image(
                          image: AssetImage(AppImages.stars35),
                          height: 15,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
