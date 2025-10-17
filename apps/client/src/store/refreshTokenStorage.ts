const KEY = "refresh_token";
export const refreshTokenStorage = {
  get: () => (typeof window === "undefined" ? null : localStorage.getItem(KEY)),
  set: (v: string) => localStorage.setItem(KEY, v),
  remove: () => localStorage.removeItem(KEY),
};
