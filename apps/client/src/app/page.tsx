import { Button } from "@/components/ui/button";
import Link from "next/link";
export default function Home() {
  return (
    <div className="text-red-900">
      <Link href={"/landing"}>
        <Button>Landing</Button>
      </Link>
    </div>
  );
}
