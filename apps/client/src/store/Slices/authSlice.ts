import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import { accessTokenStorage } from "../accessTokenStorage";
import { refreshTokenStorage } from "../refreshTokenStorage";

export interface User {
  id?: number;
  username: string;
  email: string;
}

interface AuthState {
  accessToken: string | null;
  refreshToken: string | null;
  currentUser: User | null;
}

const initialState: AuthState = {
  accessToken: accessTokenStorage.get(),
  refreshToken: refreshTokenStorage.get(),
  currentUser: null,
};

const authSlice = createSlice({
  name: "auth",
  initialState,
  reducers: {
    setTokens(
      state,
      action: PayloadAction<{
        accessToken: string | null;
        refreshToken: string | null;
      }>
    ) {
      state.accessToken = action.payload.accessToken;
      state.refreshToken = action.payload.refreshToken;
      if (action.payload.accessToken)
        accessTokenStorage.set(action.payload.accessToken);
      else accessTokenStorage.remove();
      if (action.payload.refreshToken)
        refreshTokenStorage.set(action.payload.refreshToken);
      else refreshTokenStorage.remove();
    },
    setCurrentUser(state, action: PayloadAction<User | null>) {
      state.currentUser = action.payload;
    },
    logout(state) {
      state.accessToken = null;
      state.refreshToken = null;
      state.currentUser = null;
      accessTokenStorage.remove();
      refreshTokenStorage.remove();
    },
  },
});

export const { setTokens, setCurrentUser, logout } = authSlice.actions;
export const authReducer = authSlice.reducer;
