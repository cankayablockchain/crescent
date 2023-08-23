import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wc_web3_authentication_client/wc_web3_authentication_client.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const _Initial()) {
    on<AccountEvent>((event, emit) {});
  }
}
