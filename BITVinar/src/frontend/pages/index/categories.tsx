import React from "react";
import { FC } from "react";
import { Box, Text } from "zmp-ui";
import { useRecoilValue, useSetRecoilState } from "recoil";
import { categoriesState, selectedCategoryIdState } from "state";
import { useNavigate } from "react-router";

export const Categories: FC = () => {
  const categories = useRecoilValue(categoriesState);

  const navigate = useNavigate();
  const setSelectedCategoryId = useSetRecoilState(selectedCategoryIdState);

  const gotoCategory = (categoryId: string) => {
    setSelectedCategoryId(categoryId);
    navigate("/category");
  };

  const sortedCategories = [...categories].sort((a, b) => {
    if (a.name === "Đậu") return -1;
    if (b.name === "Đậu") return 1;
    return 0;
  })
  
  return (
    <Box className="w-screen overflow-auto bg-transparent">
    <div className="flex flex-wrap justify-center p-5">
      {sortedCategories
       ?.filter((category) => category.name !== "CHAOBAO")
      .slice(0,8)
      .map((category, i) => (
        <div
          key={i}
          onClick={() => gotoCategory(category.id)}
          className="flex py-2 flex-col items-center space-y-2 w-1/3 max-w-[150px] cursor-pointer"
        >
          
          <img className="w-12 h-12" src={category.icon} />
          <Text size="xxSmall" className="text-gray text-center">
            {category.name}
          </Text>
        </div>
      ))}
      <div
          onClick={() => navigate('/category')}
          className="flex flex-col items-center space-y-2 w-1/3 max-w-[150px] cursor-pointer"
        >
          
          <img className="w-13  h-12  mt-2" 
          src="https://cdn2.iconfinder.com/data/icons/e-commerce-534/64/Category-256.png "
          alt={"Xem thêm"} />
          <Text size="small" className="text-gray text-center">
            Xem thêm
          </Text>
        </div>
       <div className="flex justify-center p-5">
    {/* <button 
      onClick={() => navigate('/category')}
      
      className="bg-[#700808]  text-white px-4 py-2 rounded hover:bg-blue-600"
    >
      Xem thêm
    </button> */}
  </div>
    </div>
   
  </Box>
  );
};
