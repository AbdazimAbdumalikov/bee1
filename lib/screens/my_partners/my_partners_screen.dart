import 'package:europharm_flutter/network/models/employee_by_ref_dto.dart';
import 'package:europharm_flutter/network/models/make_employee_dto.dart';
import 'package:europharm_flutter/network/models/partner_dto.dart';
import 'package:europharm_flutter/screens/my_partners/bloc/partners_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPartnersPage extends StatefulWidget {
  const MyPartnersPage({Key? key}) : super(key: key);

  @override
  State<MyPartnersPage> createState() => _MyPartnersPageState();
}

class _MyPartnersPageState extends State<MyPartnersPage> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<PartnersBloc>(context).add(PartnersEventInitial());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мои партнеры'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _showSearchDialog(context);
              // BlocProvider.of<PartnersBloc>(context).add(PartnersEventGetEmployeeByRef('rerum'));
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: BlocConsumer<PartnersBloc, PartnersState>(
        listener: (context, state) {
          if (state is PartnersStateError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Ошибка загрузки партнеров: ${state.error.message}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is PartnersStateLoaded) {
            return _buildPartnersList(state.partners?.partners);
          } else if (state is PartnersStateLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Text('Ошибка загрузки данных')
            );
          }
        },
      ),
    );
  }

  Widget _buildPartnersList(List<PartnerDTO>? partners) {
    if (partners == null || partners.isEmpty) {
      return Center(
        child: Text('У вас нет партнеров'),
      );
    }

    return ListView.builder(
      itemCount: partners.length,
      itemBuilder: (context, index) {
        final partner = partners[index];
        return ListTile(
          leading: CircleAvatar(
            child: Text(partner.name![0]),
          ),
          title: Text(partner.name!),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(partner.email!),
              Text(partner.phone!),
            ],
          )
        );
      },
    );
  }
}

void _showSearchDialog(BuildContext context) {
  String searchText = '';
  TextEditingController _searchController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BlocConsumer<PartnersBloc, PartnersState>(
        listener: (context, state) {
          if (state is PartnersStateSearchResult) {
            // If there are search results, do nothing to prevent the dialog from closing automatically
          }
        },
        builder: (context, state) {
          return AlertDialog(
            title: Text('Search Employee'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    searchText = value;
                  },
                  decoration: InputDecoration(hintText: 'Enter employee name'),
                ),
                SizedBox(height: 10),
                state is PartnersStateSearchResult
                    ? _buildSearchResult(state.employee)
                    : Container(),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Clear'),
                onPressed: () {
                  _searchController.clear();
                  searchText = '';
                },
              ),
              TextButton(
                child: Text('Search'),
                onPressed: () {BlocProvider.of<PartnersBloc>(context)
                    .add(PartnersEventGetEmployeeByRef(searchText));}
              ),
            ],
          );
        },
      );
    },
  ).then((_) {
    // Handle AlertDialog closing
  }).catchError((error) {
    print('Error opening AlertDialog: $error');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error opening search: $error'),
        backgroundColor: Colors.red,
      ),
    );
  });
}

Widget _buildSearchResult(MakeEmployeePartnerDTO? employee) {
  if (employee == null) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          'Search Result:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          'No results found',
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  } else {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          'Search Result:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ListTile(
          title: Text('${employee.name} ${employee.surname}'),
          // Add other employee details here if needed
        ),
      ],
    );
  }
}
