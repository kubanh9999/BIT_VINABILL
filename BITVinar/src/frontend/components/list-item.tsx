import React, { FC, MouseEventHandler, ReactNode } from "react";
import { FaChevronCircleRight } from "react-icons/fa";
import { Box, Icon, Text } from "zmp-ui";

export interface ListItemProps {
  title: ReactNode;
  subtitle: ReactNode;
  onClick?: MouseEventHandler<HTMLDivElement>;
}

// export const ListItem: FC<ListItemProps> = ({ title, subtitle, onClick }) => {
//   return (
//     <Box flex className="space-x-2" onClick={onClick}>
//       <Box className="flex-1 space-y-[2px]">
//         {/* change text color */}
//         <Text size="small" className="font-medium text-sm text-green">
//           {title}
//         </Text>
//         <Text size="xSmall" className="text-gray">
//           {subtitle}
//         </Text>
//       </Box>
//       { <FaChevronCircleRight className="my-auto" size={20}/> }
//     </Box>
//   );
// };
export const ListItem: FC<ListItemProps> = ({ title, subtitle, onClick }) => {
  const primaryColor = '#009e91'; // Màu chính

  return (
    <Box flex className="space-x-2" onClick={onClick}>
      <Box className="flex-1 space-y-[2px]">
        {/* Màu chữ cho tiêu đề */}
        <Text size="small" className="font-medium text-sm text-textPrimary">
          {title}
        </Text>
        {/* Phụ đề có màu xám nhạt */}
        <Text size="xSmall" className="text-gray">
          {subtitle}
        </Text>
      </Box>
      {/* Màu biểu tượng đồng bộ */}
      <FaChevronCircleRight
        style={{ color: primaryColor }}
        className="my-auto"
        size={20}
      />
    </Box>
  );
};

