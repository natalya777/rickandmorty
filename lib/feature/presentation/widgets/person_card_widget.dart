import 'package:flutter/material.dart';
import 'package:rickandmorty/common/app_colors.dart';
import 'package:rickandmorty/feature/domain/entities/person_entity.dart';
import 'package:rickandmorty/feature/presentation/pages/person_detail_screen.dart';
import 'package:rickandmorty/feature/presentation/widgets/person_cache_image_widget.dart';

class PersonCard extends StatelessWidget {
  final PersonEntity person;

  const PersonCard({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PersonDetailPage(person: person),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cellBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            PersonCacheImage(
              width: 166,
              height: 166,
              imageUrl: person.image,
              key: null,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    person.name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: person.status == 'Alive'
                              ? Colors.green
                              : Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          '${person.status}-${person.species}',
                          style: TextStyle(color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Last known location',
                    style: TextStyle(color: AppColors.grayColor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    person.location.name,
                    style: TextStyle(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Origin',
                    style: TextStyle(color: AppColors.grayColor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    person.origin.name,
                    style: TextStyle(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            )
          ],
        ),
      ),
    );
  }
}
