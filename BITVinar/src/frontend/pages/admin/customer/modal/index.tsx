import { CSModal } from "components/csmodal";
import React from "react";
import { CSTabs, Tab } from "components/cstabs";
import { DetailFormTab } from "./tabs/form";
import { HiClipboardList, HiDocumentText, HiMenu } from "react-icons/hi";
import { OrderTableTab } from "./tabs/order-table";
import { FeedbackTab } from "./tabs/feedback";

export const tabs: Tab[] = [
  {
    tab: <DetailFormTab />,
    icon: <HiClipboardList size={16} className="inline" />,
    label: "Chi tiết",
  },
  {
    tab: <OrderTableTab />,
    icon: <HiMenu size={16} className="inline" />,
    label: "Đặt hàng",
  },    
  {
    tab: <FeedbackTab />,
    icon: <HiDocumentText size={16} className="inline" />,
    label: "Đánh giá",
  },
];

export const ModalManageCustomer = () => {
  return (
    <CSModal
      zIndex={1200}
      description={(<CSTabs tabs={tabs} />) as unknown as string}
    />
  );
};