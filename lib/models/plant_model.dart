class Plant {
  final String id;
  final String name;
  final String category;
  final String description;
  final String image;
  final String lightRequirement;
  final String waterRequirement;

  Plant({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.image,
    required this.lightRequirement,
    required this.waterRequirement,
  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      lightRequirement: json['lightRequirement'] as String,
      waterRequirement: json['waterRequirement'] as String,
    );
  }
}

final List<Plant> mockPlants = [
  Plant(
    id: '1',
    name: 'Monstera Deliciosa',
    category: 'Indoor',
    description:
        'Known for its natural leaf-holes, the Monstera Deliciosa is a vibrant and beautiful addition to any space. It prefers bright, indirect sunlight and a humid environment.',
    image:
        'https://images.unsplash.com/photo-1614594975525-e45190c55d0b?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
    lightRequirement: 'Bright, indirect light',
    waterRequirement: 'Water every 1-2 weeks',
  ),
  Plant(
    id: '2',
    name: 'Snake Plant',
    category: 'Indoor',
    description:
        'The Snake Plant is extremely resilient and can survive in low light environments. It is known for its tall, stiff leaves and air-purifying qualities.',
    image:
        'https://th.bing.com/th/id/OIP.8KduqBqn3AGpuujp8AjcpQHaHa?w=192&h=193&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    lightRequirement: 'Low to bright indirect light',
    waterRequirement: 'Water every 2-3 weeks',
  ),
  Plant(
    id: '3',
    name: 'Fiddle Leaf Fig',
    category: 'Indoor',
    description:
        'The Fiddle Leaf Fig is a popular houseplant featuring large, heavily veined, violin-shaped leaves that grow upright. It can be a bit finicky but is a stunning statement plant.',
    image:
        'https://th.bing.com/th/id/OIP.6VGOPwfBiatQVDpUNHnWswHaLH?w=204&h=306&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    lightRequirement: 'Bright, indirect light',
    waterRequirement: 'Water when top soil is dry',
  ),
  Plant(
    id: '4',
    name: 'Aloe Vera',
    category: 'Succulent',
    description:
        'Aloe Vera is a succulent plant species that is well known for its medicinal and soothing properties. It thrives in dry conditions and needs minimal watering.',
    image:
        'https://th.bing.com/th/id/OIP.nqd0lyJOdGNO4PWXmlgXTAHaFf?w=263&h=195&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    lightRequirement: 'Bright, direct light',
    waterRequirement: 'Water every 3 weeks',
  ),
  Plant(
    id: '5',
    name: 'Peace Lily',
    category: 'Indoor',
    description:
        'Peace Lilies are beautiful, easy-to-care-for plants that feature dark green leaves and elegant white flowers. They are excellent at cleaning the air.',
    image:
        'https://th.bing.com/th/id/OIP.TB99NIg00XRq2U5PWVf52AHaHa?w=188&h=188&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    lightRequirement: 'Low to medium indirect light',
    waterRequirement: 'Water weekly, keep soil moist',
  ),
  Plant(
    id: '6',
    name: 'Spider Plant',
    category: 'Indoor',
    description:
        'Spider plants are among the easiest houseplants to grow. They get their name from the new plants, or "spiderettes," that dangle down from the mother plant like spiders on a web.',
    image:
        'https://th.bing.com/th/id/OIP.Fx1frAo0ac5sh3kgDNIXsQAAAA?w=180&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    lightRequirement: 'Bright, indirect light',
    waterRequirement: 'Water when top inch of soil is dry',
  ),
];
