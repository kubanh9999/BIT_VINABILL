import { CSModal } from "components/csmodal";
import React from "react";
import { ManageFormTab } from "./tabs/form";
import { HiClipboardList, HiMenu } from "react-icons/hi";
import { OrderDetailTableTab } from "./tabs/order-detail-table";
import { CSTabs, Tab } from "components/cstabs";

export const tabs: Tab[] = [
  {
    tab: <ManageFormTab />,
    icon: <HiClipboardList size={16} className="inline" />,
    label: "Quản lý",
  },
  {
    tab: <OrderDetailTableTab />,
    icon: <HiMenu size={16} className="inline" />,
    label: "Chi tiết",
  },
];

export const ModalManageOrder = () => {
  return (
    <CSModal
      zIndex={1200}
      description={(<CSTabs tabs={tabs} />) as unknown as string}
    />
  );
};
