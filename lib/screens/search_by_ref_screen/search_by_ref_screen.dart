import 'package:europharm_flutter/screens/my_partners/bloc/partners_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchByRef extends StatefulWidget {
  const SearchByRef({Key? key}) : super(key: key);

  @override
  State<SearchByRef> createState() => _SearchByRefState();
}

class _SearchByRefState extends State<SearchByRef> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    BlocProvider.of<PartnersBloc>(context).add(PartnersEventInitial());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Поиск партнёров'),
      ),
      body: BlocBuilder<PartnersBloc, PartnersState>(
        builder: (context, state) {
          if (state is PartnersStateLoading && _searchController.text.isEmpty) {
            return Center(
              child: Text('Для начала поиска введите запрос'),
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: 'Введите текст для поиска',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          String searchText = _searchController.text;
                          if (searchText.isNotEmpty) {
                            BlocProvider.of<PartnersBloc>(context).add(PartnersEventGetEmployeeByRef(searchText));
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: _buildBody(context, state),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, PartnersState state) {
    if (state is PartnersStateLoading) {
      return Center(child: CircularProgressIndicator());
    } else if (state is PartnersStateError) {
      // Отображение ошибок с помощью AlertDialog
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Ошибка'),
              content: Text(state.error.message),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('ОК'),
                ),
              ],
            );
          },
        );
      });
      return Container();
    } else if (state is PartnersStateSearchResult) {
      if (state.employee != null) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: InkWell(
                  onTap: () {
                    final bloc = BlocProvider.of<PartnersBloc>(context);
                    bloc.add(PartnersEventMakeEmployeePartner(state.employee!.id!));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Имя: ${state.employee!.name ?? ''}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Фамилия: ${state.employee!.surname ?? ''}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        if (state.employee!.phone != null)
                          Text('Телефон: ${state.employee!.phone}'),
                        SizedBox(height: 8),
                        if (state.employee!.email != null)
                          Text('Email: ${state.employee!.email}'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      } else {
        return Center(child: Text('Сотрудник с таким кодом не найден'));
      }
    } else {
      return Center(child: Text('Начните поиск, чтобы увидеть результаты'));
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
