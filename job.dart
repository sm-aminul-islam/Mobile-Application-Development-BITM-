class Job{
  String logoUrl;
  String company;
  String title;
  String location;
  List<String> req;
  Job(this.logoUrl,this.company,this.title,this.location,this.req);
  static List<Job> genaratedJobList(){
    return[
      Job("assets/images/airbnb_logo.png", "Airbnb inc" ,"VP Business Intelegence" , "50 Herminia strvennue,Canada", ['The online travel platform, originating in San Francisco in 2008','which allows property owners to list their home on the site for others to book and stay in','nce a sharing-economy platform becomes a widely recognized']),
      Job("assets/images/google_logo.png", "Google LLC", "Product Designs", "417 Marian Plaza texas \n United States", [
        'Creative with an Eye shape and color','Understand different materials and production methods'
        
      ]),
      Job("assets/images/linkedin_logo.png", 'Linkedin', 'Job platfrom','605 W Maude Ave, Sunnyvale\n USA',[
        'Create economic opportunity for every member of the global workforce',
        'connect the world professionals to make them more productive and successful'
      ])
    ];
  }
}