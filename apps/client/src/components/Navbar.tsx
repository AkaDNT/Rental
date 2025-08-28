"use client";

import { NAVBAR_HEIGHT } from "@/lib/constants";
import Image from "next/image";
import Link from "next/link";
import React from "react";
import { Button } from "./ui/button";
// import { useGetAuthUserQuery } from "@/state/api";
import { usePathname, useRouter } from "next/navigation";
import { Bell, MessageCircle, Plus, Search } from "lucide-react";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "./ui/dropdown-menu";
import { Avatar, AvatarFallback, AvatarImage } from "./ui/avatar";
import { SidebarTrigger } from "./ui/sidebar";

const Navbar = () => {
  // const { data: authUser } = useGetAuthUserQuery();
  const authUser = {
    userRole: "manager", // hoặc "tenant"
    userInfo: {
      name: "John Doe",
      image: "https://i.pravatar.cc/150?img=12",
    },
  };
  const router = useRouter();
  const pathname = usePathname();

  const isDashboardPage =
    pathname.includes("/managers") || pathname.includes("/tenants");

  return (
    <div
      className="fixed top-0 left-0 w-full z-50 shadow-xl"
      style={{ height: `${NAVBAR_HEIGHT}px` }}
    >
      {/* NAV-BAR -- primary background + readable foreground */}
      <div className="flex justify-between items-center w-full py-3 px-8 bg-[color:var(--color-primary)] text-[color:var(--color-primary-foreground)]">
        {/* ───────────────────────── Logo + CTAs ───────────────────────── */}
        <div className="flex items-center gap-4 md:gap-6">
          {isDashboardPage && (
            <div className="md:hidden">
              <SidebarTrigger />
            </div>
          )}

          <Link
            href="/"
            className="cursor-pointer hover:!text-[color:var(--color-primary)/0.7]"
            scroll={false}
          >
            <div className="flex items-center gap-3">
              <Image
                src="/logo.svg"
                alt="Rentiful Logo"
                width={24}
                height={24}
                className="w-6 h-6"
              />
              <div className="text-xl font-bold">
                RENT
                <span className="font-light text-[color:var(--color-secondary)] hover:!text-[color:var(--color-primary)/0.7]">
                  IFUL
                </span>
              </div>
            </div>
          </Link>

          {/* Conditional CTA (manager ⇄ tenant) */}
          {isDashboardPage && authUser && (
            <Button
              variant="secondary"
              className="md:ml-4 bg-[color:var(--color-primary)/0.05] text-[color:var(--color-primary)] hover:bg-[color:var(--color-secondary)] hover:text-[color:var(--color-primary)/0.05]"
              onClick={() =>
                router.push(
                  authUser.userRole?.toLowerCase() === "manager"
                    ? "/managers/newproperty"
                    : "/search"
                )
              }
            >
              {authUser.userRole?.toLowerCase() === "manager" ? (
                <>
                  <Plus className="h-4 w-4" />
                  <span className="hidden md:block ml-2">Add New Property</span>
                </>
              ) : (
                <>
                  <Search className="h-4 w-4" />
                  <span className="hidden md:block ml-2">
                    Search Properties
                  </span>
                </>
              )}
            </Button>
          )}
        </div>

        {/* Tag-line khi KHÔNG ở trang dashboard */}
        {!isDashboardPage && (
          <p className="hidden md:block text-[color:var(--color-primary)/0.2]">
            Discover your perfect rental apartment with our advanced search
          </p>
        )}

        {/* ───────────────────────── Auth / Avatar ───────────────────────── */}
        <div className="flex items-center gap-5">
          {authUser ? (
            <>
              {/* Messages + Notifications */}
              <div className="relative hidden md:block">
                <MessageCircle className="w-6 h-6 cursor-pointer text-[color:var(--color-primary)/0.2] hover:text-[color:var(--color-primary)/0.4]" />
                <span className="absolute top-0 right-0 w-2 h-2 rounded-full bg-[color:var(--color-secondary)]" />
              </div>
              <div className="relative hidden md:block">
                <Bell className="w-6 h-6 cursor-pointer text-[color:var(--color-primary)/0.2] hover:text-[color:var(--color-primary)/0.4]" />
                <span className="absolute top-0 right-0 w-2 h-2 rounded-full bg-[color:var(--color-secondary)]" />
              </div>

              {/* Avatar + Dropdown */}
              <DropdownMenu>
                <DropdownMenuTrigger className="flex items-center gap-2 focus:outline-none">
                  <Avatar>
                    <AvatarImage src={authUser.userInfo?.image} />
                    <AvatarFallback className="bg-[color:var(--color-primary)]">
                      {authUser.userRole?.[0].toUpperCase()}
                    </AvatarFallback>
                  </Avatar>
                  <p className="hidden md:block text-[color:var(--color-primary)/0.2]">
                    {authUser.userInfo?.name}
                  </p>
                </DropdownMenuTrigger>

                <DropdownMenuContent className="bg-[color:var(--color-card)] text-[color:var(--color-primary)]">
                  <DropdownMenuItem
                    className="cursor-pointer hover:!bg-[color:var(--color-primary)] hover:!text-[color:var(--color-primary)/0.1] font-bold"
                    onClick={() =>
                      router.push(
                        authUser.userRole?.toLowerCase() === "manager"
                          ? "/managers/properties"
                          : "/tenants/favorites",
                        { scroll: false }
                      )
                    }
                  >
                    Go to Dashboard
                  </DropdownMenuItem>
                  <DropdownMenuSeparator className="bg-[color:var(--color-primary)/0.2]" />
                  <DropdownMenuItem
                    className="cursor-pointer hover:!bg-[color:var(--color-primary)] hover:!text-[color:var(--color-primary)/0.1]"
                    onClick={() =>
                      router.push(
                        `/${authUser.userRole?.toLowerCase()}s/settings`,
                        {
                          scroll: false,
                        }
                      )
                    }
                  >
                    Settings
                  </DropdownMenuItem>
                </DropdownMenuContent>
              </DropdownMenu>
            </>
          ) : (
            <>
              {/* Sign-in / Sign-up */}
              <Link href="/signin">
                <Button
                  variant="outline"
                  className="bg-transparent text-[color:var(--color-primary-foreground)] border-[color:var(--color-primary-foreground)] hover:bg-[color:var(--color-card)] hover:text-[color:var(--color-primary)] rounded-lg"
                >
                  Sign In
                </Button>
              </Link>
              <Link href="/signup">
                <Button
                  variant="secondary"
                  className="bg-[color:var(--color-secondary)] text-[color:var(--color-primary-foreground)] hover:bg-[color:var(--color-card)] hover:text-[color:var(--color-primary)] rounded-lg"
                >
                  Sign Up
                </Button>
              </Link>
            </>
          )}
        </div>
      </div>
    </div>
  );
};

export default Navbar;
