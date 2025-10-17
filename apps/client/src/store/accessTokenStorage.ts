const KEY = "access_token";
export const accessTokenStorage = {
  get: () => (typeof window === "undefined" ? null : localStorage.getItem(KEY)),
  set: (v: string) => localStorage.setItem(KEY, v),
  remove: () => localStorage.removeItem(KEY),
};
