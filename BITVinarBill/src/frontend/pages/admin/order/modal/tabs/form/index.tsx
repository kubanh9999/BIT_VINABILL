import React from "react";
import { Box, Button } from "zmp-ui";
import _ from "lodash";
import { formFields } from "./form-field";
import { useRecoilValue } from "recoil";
import { selectedOrderState } from "../../../state";
import { CSForm } from "components/csform";
import { displayCustomDate } from "utils/date";
import { Order } from "types/order";
import useOrders from "hooks/useOrders";

export const ManageFormTab = () => {
  const selectedOrder = useRecoilValue(selectedOrderState);
  const { updateOrderStatus } = useOrders();

  return (
    <Box flex flexDirection="column" className="gap-y-4">
    <CSForm
  fields={formFields} // Sử dụng các trường đã được cấu hình
  initialValue={selectedOrder}
  formDataPattern={(value: Order) => ({
    ...value,
    order_date: displayCustomDate(new Date(value.order_date)),
  })}
  onCSSubmit
  btnSubmit={(
    <div className="flex gap-x-5">
      {(selectedOrder as any)?.payment?.status !== "SUCCESS" && (
        <button
          type="button"
          onClick={() => updateOrderStatus(selectedOrder.id, "SUCCESS")}
          className="btn btn-neutral bg-textPrimary"
        >
          Xác nhận
        </button>
      )}
      <button
        type="button"
        onClick={() => updateOrderStatus(selectedOrder.id, "REJECT")}
        className="btn btn-error"
      >
        Từ chối
      </button>
    </div>
  )}
/>

    </Box>
  );
};
