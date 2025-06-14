import 'package:prueba_tecnica/models/cat_model.dart';
import 'package:prueba_tecnica/services/%20api_service.dart';
import 'package:rxdart/rxdart.dart';

// EN LA DOCUMENTACION MENCIONA Usar un manejador de estado.
class CatBloc {
  final _catController = BehaviorSubject<List<CatModel>>();
  final _loadingController = BehaviorSubject<bool>();

  Stream<List<CatModel>> get catBreedsStream => _catController.stream;
  Stream<bool> get loadingStream => _loadingController.stream;

  final ApiService _apiService = ApiService();

  void fetchCats() async {
    _loadingController.sink.add(true);
    try {
      final cats = await _apiService.fetchCatBreeds();
      _catController.sink.add(cats);
    } catch (e) {
      _catController.sink.addError('Error al cargar datos');
    } finally {
      _loadingController.sink.add(false);
    }
  }

  fetchCatBreeds() {
    return _apiService.fetchCatBreeds();
  }

  void dispose() {
    _catController.close();
    _loadingController.close();
  }
}
