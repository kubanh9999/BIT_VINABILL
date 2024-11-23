import React, { FC } from "react";
import { getConfig } from "utils/config";

export const DisplayPrice: FC<{ children: number }> = ({ children }) => {
  const symbol = getConfig((config) => config.template.currencySymbol);
  
  if (getConfig((config) => config.template.prefixCurrencySymbol)) {
    return (
      <>
        {(!children || children == 0) && 
          <>
            Liên hệ
          </>
        }
        {(children && children != 0) && 
          <>
          
          {children?.toLocaleString()}
          {symbol}
        </>
        }
      </>      
    );
  } else {
    return (
      <>
        {(!children || children == 0) && 
          <>
            Liên hệ
          </>
        }
        {(children && children != 0) && 
          <>
          
          {children?.toLocaleString()}
          {symbol}
        </>
        }
      </>      
    );
  }
};
