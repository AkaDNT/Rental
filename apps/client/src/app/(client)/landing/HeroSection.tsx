"use client";

import Image from "next/image";
import React from "react";
import { motion } from "framer-motion";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";

const HeroSection = () => {
  return (
    <div className="relative h-screen">
      <Image
        alt="Retal platform hero section"
        src={"/landing-splash.jpg"}
        fill
        priority
        className="object-cover object-center"
      ></Image>
      <div className="absolute inset-0 bg-black/60">
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.8 }}
          className="absolute top-1/3 left-1/2 transform -translate-x-1/2 -translate-y-1/2 text-center w-full"
        >
          <div className="max-w-4xl mx-auto px-16 sm:px-12">
            <h1 className="text-5xl font-bold text-white mb-4">
              Start your journey to finding the perfect place to call home
            </h1>
            <p className="text-xl text-white mb-8">
              Explore our wide range of rental properties tailored to fit your
              lifestyle and needs!
            </p>
          </div>
          <div className="flex justify-center">
            <Input
              type="text"
              placeholder="Search by city, neighborhood or address"
              onChange={() => {}}
              className="w-full max-w-lg rounded-none rounded-l-xl border-none bg-white h-12"
            ></Input>
            <Button className=" bg-secondary-500 text-white rounded-none rounded-r-xl border-none hover:bg-secondary-600 h-12">
              Search
            </Button>
          </div>
        </motion.div>
      </div>
    </div>
  );
};

export default HeroSection;
