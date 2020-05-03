import { takeEvery } from "redux-saga/effects";
import * as actionTypes from "../actions/actionTypes";
import { SignUpSaga } from "./Auth/signUp";
import { SignInSaga } from "./Auth/signIn";
import { SignOutSaga, signOutCountDownSaga } from "./Auth/signOut";
import { checkAuthStatusSaga } from "./Auth/checkStatus";

export function* watchAuth() {
  yield takeEvery(actionTypes.SIGN_UP, SignUpSaga);
  yield takeEvery(actionTypes.SIGN_IN, SignInSaga);
  yield takeEvery(actionTypes.SIGN_OUT, SignOutSaga);
  yield takeEvery(actionTypes.SIGN_OUT_COUNT_DOWN, signOutCountDownSaga);
  yield takeEvery(actionTypes.CHECK_AUTH_STATUS, checkAuthStatusSaga);
}
