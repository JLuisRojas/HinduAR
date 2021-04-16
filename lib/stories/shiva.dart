import 'package:hindu_ar/stories/story.dart';

class Shiva implements Story {
  String title;
  String image;
  String ar;

  List<Section> sections;

  Shiva() {
    title = "Shiva";
    image = "assets/shiva.png";
    ar = "shiva";

    sections = [];

    sections.add(
      Section(
        title: "",
        body: "El poderoso dios domina los elementos y los controla de manera benéfica o maléfica según convenga; este es a su vez, considerado el dios del misterio, pues controla todas las fuerzas sobrenaturales y desconocidas en el universo, en cuanto al aspecto de meditación, Shiva es llamado el padre del Tantra y del Yoga."
      ),
    );

    sections.add(
      Section(
        title: "Características",
        body: "Conforme a las características de los dioses de la India, tenemos el particular de que Shiva posee, tres ojos, uno de ellos en medio de su frente; en relación a eso, se dice que sus ojos tienen la capacidad de ver el pasado, presente y futuro.\n\nAunado a esto, posee la piel de color azul grisáceo, se dice que es porque consumió veneno generado para crear un néctar de inmortalidad; en su frente lleva la luna en cuarto creciente representando la división del tiempo en meses, asi como también en el cuello lleva una serpiente que representa la partición del tiempo en años.\n\nAdemás, tiene un collar de calaveras que simbolizan el ciclo de extinción y generación de las razas en la humanidad, cabello enredado representando su dominio sobre el viento, el río Ganges, que fluye desde el cabello de Shiva que simboliza la purificación de los pecados y de los humanos, las tres líneas en la frente representan los ciclos de la vida."
      ),
    );

    sections.add(
      Section(
        title: "Poderes",
        body: "En cuanto a su poder, se dice que Shiva es considerado el dios del caos, ya que es, peligroso, inesperado, impredecible, se dice que este dios destruye para que se pueda volver a crear y da muerte para que exista regeneración.\n\nProtege a los animales, las bestias y la naturaleza, así como también, tiene el poder de ver más allá de lo evidente, simbolizando la sabiduría y trascendencia del dios Shiva.",
      ),
    );
  }
}
