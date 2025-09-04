import React from "react";
import HeroSection from "./HeroSection";
import FeaturesSection from "./FeaturesSection";
import DiscoverSection from "./DiscoverSection";
import CallToActionSection from "./CallToActionSection";
import FooterSection from "./FooterSection";

const page = () => {
  return (
    <div>
      <HeroSection></HeroSection>
      <FeaturesSection></FeaturesSection>
      <DiscoverSection></DiscoverSection>
      <CallToActionSection></CallToActionSection>
      <FooterSection></FooterSection>
    </div>
  );
};

export default page;
