import React, { FC, useEffect, useRef } from "react";
import { Box, Header, Page, Text } from "zmp-ui";
import { useNavigate } from "react-router-dom";

const ContactPage: FC = () => {
  const iframeRef = useRef<HTMLIFrameElement>(null);

  useEffect(() => {
    if (iframeRef.current) {
      iframeRef.current.src = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.3262010339877!2d108.17856917465596!3d16.048553739992048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142190db26afee9%3A0x43b26b39dc72c163!2zMzI0IFTDtG4gxJDhuqNuLCBIb8OgIEFuLCBD4bqpbSBM4buHLCDEkMOgIE7hurVuZyA1NTAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1731841351725!5m2!1svi!2s" ;
    }
  }, []);

  return (
    <>
      <Header title="Liên hệ" showBackIcon={true} className="bg-textPrimary text-white" />
      <Page>
        <Box className="m-4 space-y-4">
          <Box className="space-y-2">
          <Text.Title><strong>Thông tin liên hệ</strong></Text.Title>
          <Text><strong>Địa chỉ:</strong> 324 Tôn Đản, Quận Cẩm Lệ, TP Đà Nẵng</Text>
          <Text><strong>Số điện thoại hotline/zalo:</strong> <a href="tel:02363659116" style={{ textDecoration: 'underline' }}>023.6365.9116 </a></Text>
          <Text><strong>Số điện thoại văn phòng:</strong> <a href="tel:02363659118" style={{ textDecoration: 'underline' }}></a>- 023.6365.9118</Text>
          <Text><strong>Email 1:</strong> <a href="mailto:vinar.infor@gmail.com" style={{ textDecoration: 'underline' }}>vinar.infor@gmail.com</a></Text>
         
        </Box>
        <Box className="space-y-2">
          <Text.Title><strong>Bản đồ</strong></Text.Title>
          <iframe
            ref={iframeRef}
            style={{ 
              width: '100%',  
              height: '50vh', 
              border: 0 
            }}
            allowFullScreen
            referrerPolicy="no-referrer-when-downgrade"
          />
        </Box>

      </Box>
    </Page>
    </>
  );
};

export default ContactPage;