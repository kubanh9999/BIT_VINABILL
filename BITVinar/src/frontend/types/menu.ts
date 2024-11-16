import { ReactNode } from "react";
import { News } from 'types/news';

export interface MenuItem {
  label: string;
  icon: ReactNode;
  activeIcon?: ReactNode;
  notify?: number;
}
