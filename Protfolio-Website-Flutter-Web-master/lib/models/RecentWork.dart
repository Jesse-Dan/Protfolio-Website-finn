class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "The Reinvention house CMS App",
    category: "Mobile App",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "De-Lois Herbal Cream",
    category: "E-Commerce Website",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "Arewa Community App",
    category: "Website",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 4,
    title: "Epic Kitchen",
    category: "Food Vendor App",
    image: "assets/images/work_4.png",
  ),
];
