"use client";
import { store } from "@/store/store";
import { Provider } from "react-redux";

export default function Providers({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <Provider store={store}>
      <div>
        <main>
          <div>{children}</div>
        </main>
      </div>
    </Provider>
  );
}
