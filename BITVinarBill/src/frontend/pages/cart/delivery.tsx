import { ElasticTextarea } from "components/elastic-textarea";
import { ListRenderer } from "components/list-renderer";
import React, { FC, Suspense } from "react";
import { Box, Icon, Input, Text } from "zmp-ui";
import { PersonPicker, RequestPersonPickerPhone } from "./person-picker";
import { RequestStorePickerLocation } from "./store-picker";
import { TimePicker } from "./time-picker";
import { useRecoilState } from "recoil";
import { orderNoteState } from "state";
import { DiscountPicker } from "./discount-picker";
import { HiGift } from "react-icons/hi";
//import icon
import { FaLocationDot, FaClock  } from "react-icons/fa6";
import { FaUser, FaChevronCircleRight, FaChevronCircleDown } from "react-icons/fa";
import { MdNoteAdd } from "react-icons/md";

export const Delivery: FC = () => {
  const [note, setNote] = useRecoilState(orderNoteState);
  const primaryColor = 'black'; // Màu chính

  return (
    <Box className="space-y-3 px-4">
      <Text.Header>Hình thức nhận hàng</Text.Header>
      <ListRenderer
        items={[
          {
            left: <FaLocationDot style={{ color: "black" }} className="my-auto" size={20}/>,
            right: (<RequestStorePickerLocation />),
          },
          {
            left: <FaClock style={{ color: "black" }} className="my-auto" size={20}/>,
            right: (
              <Box flex className="space-x-2">
                <Box className="flex-1 space-y-[2px]">
                  <TimePicker />
                  <Text size="xSmall" className="text-gray">
                    Thời gian nhận hàng
                  </Text>
                </Box>
                <FaChevronCircleRight style={{ color: "black" }} size={20}/>
              </Box>
            ),
          },

          {
            left: <FaUser style={{ color: "black" }} className="my-auto" size={20}/>,
            right: (
              <Suspense fallback={<RequestPersonPickerPhone />}>
                <PersonPicker/>
              </Suspense>
            ),
          },
          {
            left: <HiGift style={{ color: "black" }} size={24} className="my-auto" />,
            right: <DiscountPicker />,
          },
          {
            left: <MdNoteAdd style={{ color: "black" }} size={20} className="my-auto" />,
            right: (
              <Box flex>
                <ElasticTextarea
                  placeholder="Nhập ghi chú..."
                  className="border-none px-0 w-full focus:outline-none"
                  maxRows={4}
                  value={note}
                  onChange={(e) => setNote(e.currentTarget.value)}
                />
              </Box>
            ),
          },
        ]}
        limit={4}
        
        renderLeft={(item) => item.left}
        renderRight={(item) => item.right}
      />
    </Box>
  );
};