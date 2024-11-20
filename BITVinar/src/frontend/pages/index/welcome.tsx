import React, { FC } from "react";
import { Box, Header, Text } from "zmp-ui";
import { useRecoilValue, useRecoilValueLoadable } from "recoil";
// import { userState } from "state";
import logo from "static/logog-wweb.webp";
import appConfig from "../../../../app-config.json";
import { getConfig } from "utils/config";
import { userCurrentState } from "state";

export const Welcome: FC = () => {
  const userCurrent = useRecoilValue(userCurrentState);
  const welcomeMessage = "Xin chào";

  const displayName = userCurrent?.name
    ? `${userCurrent.name}`
    : "Người dùng mới";


  return (
    <Header
      className="app-header no-border pl-4 flex-none pb-[6px]  bg-textPrimary"
      showBackIcon={false}
      title={
        (
          <Box flex alignItems="center" className="space-x-2">
            <img
              className="w-8 h-8 rounded-lg border-inset"
              src={getConfig((c) => c.template.headerLogo) || logo}
            />
            <Box>
              <Text.Title size="small" className="text-white">{appConfig.app.title}</Text.Title>
              <Text size="xxSmall" className="text-white">
                {welcomeMessage}, {displayName}!
              </Text>
            </Box>
          </Box>
        ) as unknown as string
      }
    />
  );
};