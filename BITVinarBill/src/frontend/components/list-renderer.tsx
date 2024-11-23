import React, { ReactNode, useMemo, useState } from "react";
import { Box, Button, Icon, Text } from "zmp-ui";
import { FaChevronCircleDown } from "react-icons/fa";

interface ListRendererProps<T> {
  title?: string;
  limit?: number;
  items: T[];
  renderLeft: (item: T) => ReactNode;
  renderRight: (item: T) => ReactNode;
  renderKey?: (item: T) => string;
  onClick?: (item: T) => void;
  noDivider?: boolean;
}

export function ListRenderer<T>({
  title,
  items,
  limit,
  renderLeft,
  renderRight,
  renderKey,
  onClick,
  noDivider,
}: ListRendererProps<T>) {
  const [isCollapsed, setIsCollapsed] = useState(true);
  const primaryColor = '#009e91'; // Màu chính

  const collapsedItems = useMemo(() => {
    return items?.slice(0, limit);
  }, [items]);
  return (
    <Box className="bg-background rounded-xl">
      {title && <Text.Title className="p-4 pb-0 "  >{title}</Text.Title>}
      <Box>
        {(isCollapsed ? collapsedItems : items).map((item, i, list) => (
          <div
            key={renderKey ? renderKey(item) : i}
            onClick={() => onClick?.(item)}
            className="flex space-x-4 p-4 last:pb-0"
          >
            {renderLeft(item)}
            <Box className="flex-1 min-w-0 relative">
              {renderRight(item)}
              {!noDivider && i < list.length - 1 && (
                <hr className="absolute left-0 -right-4 -bottom-4 border-divider border-t-[0.5px]"></hr>
              )}
            </Box>
          </div>
        ))}
      </Box>
      {isCollapsed && collapsedItems.length < items.length ? (
        <Box className="p-2">
          <Button
            style={{ color: 'black' }}
            onClick={() => setIsCollapsed(false)}
            fullWidth
            suffixIcon={<FaChevronCircleDown style={{ color: 'black' }} className="my-1" size={20}/>}
            variant="tertiary"
            type="neutral"
          >
            Xem thêm
          </Button>
        </Box>
      ) : (
        <Box className="w-full h-4 "></Box>
      )}
    </Box>
  );
}
