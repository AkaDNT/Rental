"use client";
import { createApi, fetchBaseQuery } from "@reduxjs/toolkit/query/react";
import type { RootState } from "./store";
import { setTokens } from "./Slices/authSlice";

export interface User {
  id?: number;
  username: string;
  email: string;
}

const rawBaseQuery = fetchBaseQuery({
  baseUrl: process.env.NEXT_PUBLIC_API_BASE_URL,
  prepareHeaders: (headers, { getState }) => {
    const accessToken = (getState() as RootState).auth.accessToken;
    if (accessToken) headers.set("authorization", `Bearer ${accessToken}`);
    return headers;
  },
});

const baseQueryWithReauth: typeof rawBaseQuery = async (args, api, extra) => {
  let result = await rawBaseQuery(args, api, extra);

  if (result.error && (result.error as any).status === 401) {
    const { refreshToken } = (api.getState() as RootState).auth;

    if (refreshToken) {
      const refreshResult = await rawBaseQuery(
        { url: "auth/refresh", method: "POST", body: { refreshToken } },
        api,
        extra
      );

      const data = refreshResult.data as
        | { accessToken: string; refreshToken: string }
        | undefined;

      if (data?.accessToken && data?.refreshToken) {
        api.dispatch(
          setTokens({
            accessToken: data.accessToken,
            refreshToken: data.refreshToken,
          })
        );
        result = await rawBaseQuery(args, api, extra);
      } else {
        api.dispatch(setTokens({ accessToken: null, refreshToken: null }));
      }
    }
  }

  return result;
};

export const api = createApi({
  reducerPath: "api",
  baseQuery: baseQueryWithReauth,
  endpoints: (build) => ({
    getMe: build.query<User, void>({
      query: () => ({ url: "auth/me", method: "GET" }),
    }),
    login: build.mutation<
      { accessToken: string; refreshToken: string },
      { username: string; password: string }
    >({
      query: (body) => ({ url: "auth/login", method: "POST", body }),
      async onQueryStarted(arg, { dispatch, queryFulfilled }) {
        const { data } = await queryFulfilled;
        dispatch(
          setTokens({
            accessToken: data.accessToken,
            refreshToken: data.refreshToken,
          })
        );
      },
    }),
    signup: build.mutation<
      { accessToken: string; refreshToken: string },
      {
        email: string;
        user_name: string;
        password: string;
        role: "MANAGER" | "TENANT";
      }
    >({
      query: (body) => ({ url: "auth/register", method: "POST", body }),
      async onQueryStarted(arg, { dispatch, queryFulfilled }) {
        const { data } = await queryFulfilled;
        dispatch(
          setTokens({
            accessToken: data.accessToken,
            refreshToken: data.refreshToken,
          })
        );
      },
    }),
  }),
});

export const {
  useGetMeQuery,
  useLazyGetMeQuery,
  useLoginMutation,
  useSignupMutation,
} = api;
