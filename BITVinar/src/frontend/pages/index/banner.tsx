import React, { FC } from "react";
import { Pagination, Autoplay, Navigation } from "swiper";
import { Swiper, SwiperSlide } from "swiper/react";
import { Box, Button } from "zmp-ui";

export const Banner: FC = () => {
  const banners = [
    {
      image: "https://vinar.vn/wp-content/uploads/slider/cache/d839c1ac8028f02801a1fbb69aa3e645/web-vn2.jpg",
     /*  title: "NÔNG SẢN PHÚ MINH TÂM",
      subtitle: "Chuyên cung cấp các loại mặt hàng nông sản ĐẬU-GẠO-NẾP-MÈ",
      textColor: "#FFFFFF",//#FFFFFF */
    },
    {
      image: "https://vinar.vn/wp-content/uploads/slider/cache/508f06666e6337ff4f5de18ac7522531/sen-voi-american-standard.jpg",
     /*  title: "NÔNG SẢN PHÚ MINH TÂM",
      subtitle: "Chuyên cung cấp các loại mặt hàng nông sản ĐẬU-GẠO-NẾP-MÈ",
      textColor: "#FFFFFF",//#FFFFFF */
    },
   
  ];

  return (
    <Box className="bg-white" pb={4}>
      <Swiper
        modules={[Pagination, Autoplay, Navigation]}
        pagination={{
          clickable: true,
        }}
        autoplay={{ delay: 2500, disableOnInteraction: false }}
        loop
        cssMode
      >
        {banners.map((banner, i) => (
          <SwiperSlide key={i} className="px-4">
            <Box
              className="relative w-full rounded-lg aspect-[2/1] bg-cover bg-center bg-skeleton"
              style={{ backgroundImage: `url('${banner.image}')` }}
            >
              {/* Thêm hai dòng chữ và nút với màu khác nhau */}
              <Box
                className="absolute inset-0 flex flex-col items-center justify-center text-lg font-bold"
                style={{
                  padding: "20px",
                  borderRadius: "8px",
                  overflow: "hidden",
                }}
              >
                {/* Thêm nền sọc chạy */}
                <Box
                  className="absolute inset-0"
                  style={{
                    background: `
                      repeating-linear-gradient(
                        90deg,
                        rgba(255, 255, 255, 0.3),
                        rgba(255, 255, 255, 0.2) 20px,
                        rgba(255, 255, 255, 0 ) 20px
                      )`,
                    backgroundSize: "30px 20px",
                    animation: "stripeAnimation 12s linear infinite", // Thêm hoạt ảnh
                  }}
                />
                {/* Dòng chữ 1 */}
                <span
                  style={{ fontSize: "20px",
                           marginBottom: "1px", 
                        /*    color: banner.textColor , */
                           textAlign: "center",
                           width: "100%",
                           fontFamily: "'Times New Roman', Times, serif",
                          }}
                >
               {/*    {banner.title} */}
                </span>
                {/* Dòng chữ 2 */}
                <span
                  style={{
                    fontSize: "15px",
                    marginBottom: "30px",
                /*     color: banner.textColor, */
                    textAlign: "center",
                    width: "100%",
                  }}
                >
               {/*    {banner.subtitle} */}
                </span>
                {/* Nút số điện thoại */}
              {/*   <Button
                  style={{
                    backgroundColor: "green",
                    color: "white",
                    padding: "1px 11px",
                    borderRadius: "20px",
                    fontSize: "13px",
                    border: "none",
                    cursor: "pointer",
                  }}
                   // Gọi điện khi click
                  onClick={(event) => {
                    // event.preventDefault();
                    // console.log(12);
                    window.location.href = "tel:+84937355143";
                  }}
                >
                  Gọi ngay: 0937 355 143
                </Button> */}
              </Box>
            </Box>
          </SwiperSlide>
        ))}
      </Swiper>

      {/* Thêm CSS cho hoạt ảnh nền sọc */}
      <style>
        {`
          @keyframes stripeAnimation {
            0% {
              background-position: 0 0;
            }
            100% {
              background-position: 100px 0; /* Thay đổi khoảng cách di chuyển của sọc */
            }
          }
        `}
      </style>
    </Box>
  );
};
