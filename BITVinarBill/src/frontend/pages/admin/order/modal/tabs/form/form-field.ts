import { FormField } from "components/csform/types";

export const formFields: FormField[] = [
  {
    title: "Khách hàng",
    field: "customer.name",
    type: "txt",
    disable:true, // Thay readOnly bằng disabled
  },
  {
    title: "Tổng tiền",
    field: "total_amount",
    type: "txt",
    disable:true,
  },
  {
    title: "Ngày tạo",
    field: "order_date",
    type: "txt",
    disable:true,
  },
  {
    title: "Địa chỉ",
    field: "shipping_address",
    type: "txtar",
    disable:true,
  },
  {
    title: "Ghi chú",
    field: "note",
    type: "txtar",
    disable:true,
  },
];
