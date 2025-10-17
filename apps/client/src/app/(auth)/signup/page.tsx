"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { motion } from "framer-motion";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { RadioGroup, RadioGroupItem } from "@/components/ui/radio-group";
import { Eye, EyeOff } from "lucide-react";
import { useSignupMutation } from "@/store/api";
export default function SignupPage() {
  const [passwordVisible, setPasswordVisible] = useState(false);
  const [confirmVisible, setConfirmVisible] = useState(false);
  const [errorMsg, setErrorMsg] = useState<string | null>(null);
  const [signup, { isLoading }] = useSignupMutation();
  const router = useRouter();

  async function onSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setErrorMsg(null);
    const form = e.currentTarget;
    const fd = new FormData(form);
    const username = String(fd.get("username") || "").trim();
    const email = String(fd.get("email") || "").trim();
    const password = String(fd.get("password") || "");
    const confirm = String(fd.get("confirm") || "");
    const roleRaw = String(fd.get("role") || "tenant");
    if (!username || !email || !password || !confirm) {
      setErrorMsg("Please fill in all fields.");
      return;
    }
    if (password !== confirm) {
      setErrorMsg("Passwords do not match.");
      return;
    }
    const role = roleRaw === "manager" ? "MANAGER" : "TENANT";
    try {
      await signup({
        email,
        user_name: username,
        password,
        role,
      }).unwrap();
      router.push("/");
    } catch (err: any) {
      const apiMsg =
        err?.data?.message ||
        err?.data?.error ||
        err?.error ||
        "Sign up failed. Please try again.";
      setErrorMsg(typeof apiMsg === "string" ? apiMsg : "Sign up failed.");
    }
  }

  return (
    <div className="relative min-h-[100svh] w-full bg-gradient-to-b from-background via-background to-muted/40">
      <div className="pointer-events-none absolute -top-12 -left-12 h-80 w-80 rounded-full bg-primary/15 blur-3xl" />
      <div className="pointer-events-none absolute -bottom-20 -right-20 h-96 w-96 rounded-full bg-secondary/15 blur-3xl" />

      <div className="mx-auto flex min-h-[100svh] w-full max-w-screen-xl items-center justify-center px-4 sm:px-6 lg:px-10">
        <motion.div
          initial={{ opacity: 0, y: 16 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.35, ease: "easeOut" }}
          className="w-full max-w-lg"
        >
          <Card className="w-full rounded-2xl border border-border/40 bg-background/80 shadow-lg ring-1 ring-black/5 backdrop-blur-xl">
            <CardHeader className="space-y-3 px-6 sm:px-8">
              <div className="flex items-end justify-between">
                <div className="text-2xl font-bold tracking-tight">
                  RENT
                  <span className="font-light text-secondary-500">IFUL</span>
                </div>
                <span className="text-xs text-muted-foreground">
                  Create your account
                </span>
              </div>
              <CardTitle className="text-xl">Welcome</CardTitle>
              <CardDescription className="text-sm">
                Please sign up to continue
              </CardDescription>
            </CardHeader>

            <CardContent className="px-6 sm:px-8">
              <form className="grid gap-6" onSubmit={onSubmit}>
                <div className="grid gap-2">
                  <Label htmlFor="username">Username</Label>
                  <Input
                    id="username"
                    name="username"
                    placeholder="Choose a username"
                    required
                    className="h-12 rounded-lg"
                  />
                </div>

                <div className="grid gap-2">
                  <Label htmlFor="email">Email</Label>
                  <Input
                    id="email"
                    name="email"
                    type="email"
                    placeholder="Enter your email address"
                    required
                    className="h-12 rounded-lg"
                  />
                </div>

                <div className="grid gap-2">
                  <Label htmlFor="password">Password</Label>
                  <div className="relative">
                    <Input
                      id="password"
                      name="password"
                      type={passwordVisible ? "text" : "password"}
                      placeholder="Create a password"
                      required
                      className="h-12 rounded-lg pr-12"
                    />
                    <button
                      type="button"
                      tabIndex={-1}
                      aria-label={
                        passwordVisible ? "Hide password" : "Show password"
                      }
                      onClick={() => setPasswordVisible((v) => !v)}
                      className="absolute right-0 top-1/2 grid h-12 w-12 -translate-y-1/2 place-items-center text-muted-foreground"
                    >
                      {passwordVisible ? (
                        <EyeOff className="h-4 w-4" />
                      ) : (
                        <Eye className="h-4 w-4" />
                      )}
                    </button>
                  </div>
                </div>

                <div className="grid gap-2">
                  <Label htmlFor="confirm">Confirm Password</Label>
                  <div className="relative">
                    <Input
                      id="confirm"
                      name="confirm"
                      type={confirmVisible ? "text" : "password"}
                      placeholder="Confirm your password"
                      required
                      className="h-12 rounded-lg pr-12"
                    />
                    <button
                      type="button"
                      tabIndex={-1}
                      aria-label={
                        confirmVisible ? "Hide password" : "Show password"
                      }
                      onClick={() => setConfirmVisible((v) => !v)}
                      className="absolute right-0 top-1/2 grid h-12 w-12 -translate-y-1/2 place-items-center text-muted-foreground"
                    >
                      {confirmVisible ? (
                        <EyeOff className="h-4 w-4" />
                      ) : (
                        <Eye className="h-4 w-4" />
                      )}
                    </button>
                  </div>
                </div>

                <div className="grid gap-3">
                  <Label>Role</Label>
                  <RadioGroup
                    defaultValue="tenant"
                    name="role"
                    className="grid gap-3 sm:grid-cols-2"
                  >
                    <label
                      htmlFor="tenant"
                      className="flex items-center gap-2 rounded-lg border bg-background px-4 py-3 hover:bg-accent hover:text-accent-foreground cursor-pointer"
                    >
                      <RadioGroupItem value="tenant" id="tenant" />
                      <span className="text-sm">Tenant</span>
                    </label>
                    <label
                      htmlFor="manager"
                      className="flex items-center gap-2 rounded-lg border bg-background px-4 py-3 hover:bg-accent hover:text-accent-foreground cursor-pointer"
                    >
                      <RadioGroupItem value="manager" id="manager" />
                      <span className="text-sm">Manager</span>
                    </label>
                  </RadioGroup>
                </div>

                {errorMsg ? (
                  <p className="text-sm text-red-600">{errorMsg}</p>
                ) : null}

                <Button
                  type="submit"
                  disabled={isLoading}
                  className="h-12 w-full rounded-lg bg-gradient-to-r from-primary to-primary/70 hover:from-primary/90 hover:to-primary/60"
                >
                  {isLoading ? "Creating..." : "Create Account"}
                </Button>

                <p className="text-center text-sm text-muted-foreground">
                  Already have an account?{" "}
                  <Link
                    href="/signin"
                    className="font-medium text-primary underline-offset-4 hover:underline"
                  >
                    Sign in
                  </Link>
                </p>
              </form>
            </CardContent>
          </Card>
        </motion.div>
      </div>
    </div>
  );
}
