"use client";

import React from "react";
import { motion } from "framer-motion";
import Image from "next/image";

const containerVariants = {
  hidden: { opacity: 0, y: 50 },
  visible: {
    opacity: 1,
    y: 0,
    transition: {
      duration: 0.5,
      staggerChildren: 0.2,
    },
  },
};

const itemVariants = {
  hidden: { opacity: 0, y: 20 },
  visible: { opacity: 1, y: 0 },
};

const FeatureCard = ({
  imageSrc,
  title,
  description,
}: {
  imageSrc: string;
  title: string;
  description: string;
}) => (
  <div className="px-4 py-12 shadow-lg rounded-lg bg-black/10 md:h-72 text-center">
    <div className="bg-primary-700 p-[0.6rem] rounded-full mb-4 h-10 w-10 mx-auto">
      <Image
        src={imageSrc}
        width={50}
        height={50}
        className="w-full h-full"
        alt={title}
      />
    </div>
    <h3 className="text-xl font-semibold mb-4">{title}</h3>
    <p className="">{description}</p>
  </div>
);

const DiscoverSection = () => {
  return (
    <motion.div
      initial="hidden"
      whileInView="visible"
      viewport={{ once: true }}
      variants={containerVariants}
      className="py-12 px-6 sm:px-8 lg:px-12 xl:px-16 bg-white"
    >
      <div className="max-w-4xl xl:max-w-6xl mx-auto">
        <motion.h2
          variants={itemVariants}
          className="text-3xl font-bold text-center mb-6 w-full sm:w-2/3 mx-auto"
        >
          Discover
        </motion.h2>
        <motion.p
          variants={itemVariants}
          className="text-2xl text-center mb-3 w-full sm:w-2/3 mx-auto"
        >
          Find Your Dream Rental Property Today
        </motion.p>
        <motion.p
          variants={itemVariants}
          className="text-[0.9rem] text-center w-full sm:w-2/3 mx-auto mb-8"
        >
          Searching for your dream rental property has never been easier. With
          our user-friendly search feature, you can quickly find the perfect
          home that meets all your needs. Start your search today and discover
          your dream rental property!
        </motion.p>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 lg:gap-12 xl:gap-16">
          {[
            {
              title: "Search for Properties",
              imageSrc: "/landing-icon-wand.png",
              description:
                "Brow through our extensive collection of rental properties in your desired location.",
            },
            {
              imageSrc: "/landing-icon-calendar.png",
              title: "Book Your Rental",
              description:
                "Once you've found the perfect rental property, easily book it online with just a few clicks.",
            },
            {
              imageSrc: "/landing-icon-heart.png",
              title: "Enjoy your New Home",
              description:
                "Move into your new rental property and start enjoying your dream home.",
            },
          ].map((card, index) => (
            <motion.div key={index} variants={itemVariants}>
              <FeatureCard {...card} />
            </motion.div>
          ))}
        </div>
      </div>
    </motion.div>
  );
};

export default DiscoverSection;
