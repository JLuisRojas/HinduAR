import 'package:hindu_ar/stories/story.dart';

class Ganesha implements Story {
  String title;
  String image;
  String ar;

  List<Section> sections;

  Ganesha() {
    title = "Ganesha";
    image = "assets/ganesha2.png";
    ar = "ganesha";

    sections = [];

    sections.add(
      Section(
        title: "",
        body: "En el panteón hinduista se encuentran una serie de deidades un poco más conocidas que otras y Ganesha quien es el dios de la sabiduría y la prudencia indudablemente hace parte de esta categoría. Se trata entonces de aquella divinidad que actúa tal y como si se tratara de una consciencia suprema, por lo tanto sus esfuerzos se encuentran dirigidos a mantener el orden del universo."
      ),
    );

    sections.add(
      Section(
        title: "",
        body: "Ahora bien, en cuanto a su forma visible, Ganesha dios hindú, dispone de un cuerpo humano con la particularidad de una cabeza de elefante acompañada como es de esperarse por una trompa curvada, orejas de gran tamaño y en este caso un colmillo partido, esto es precisamente lo que logrado que muchos lo identifiquen simplemente como el Dios con cabeza de elefante."
      ),
    );

    sections.add(
      Section(
        title: "Origen",
        body: "De acuerdo a la historia los primeros datos de Ganesha se ubican en el Imperio Gupta, algunos a manera de mito señalan que Parvati su madre decidió crearlo con sus propias manos con el objetivo de que cuidara la entrada de sus habitaciones y la protegiera cuando no estaba su consorte. Por lo tanto el chico se hizo extremadamente obediente hasta que cierta vez le impidió la entrada a Shiva quien era esposo de Parvati y puesto que este no sabia que era su hijo le cortó la cabeza; para evitar una guerra Shiva le devolvió la vida otorgándole la cabeza del primer ser vivo que se encontró."
      ),
    );

    sections.add(
      Section(
        title: "Simbolismo",
        body: "La popularidad de Ganesha se ha extendido tanto que las personas tienen imágenes y figuras de este en sus casas con la idea de impedir que ingresen energías negativas, asimismo se le considera el punto de encuentro para todas las creencias puesto que se le adjudica ser el destructor de los males y obstáculos gracias al gran conocimiento que posee.",
      ),
    );
  }
}
