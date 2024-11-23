import React, { FC } from "react";
import { Box, Header, Icon, Page, Text } from "zmp-ui";
import { Divider } from "components/divider";
import { useRecoilValueLoadable } from "recoil";
import { newsState } from "state";
import { useNavigate } from "react-router-dom";

// Format date function
const formatDate = (date: string) => {
  return new Date(date).toLocaleDateString("vi-VN");
};

// Truncate HTML function
const truncateHTML = (html: string, maxLength: number) => {
  const div = document.createElement("div");
  div.innerHTML = html;

  const text = div.innerText || div.textContent;

  // Kiểm tra xem text có phải là null hay không
  if (text && text.length > maxLength) {
    // Cắt bớt text nếu quá dài
    return div.innerHTML.substring(0, maxLength) + "...";
  }
  
  return div.innerHTML;
};

const NewsList: FC = () => {
  const navigate = useNavigate();
  const newsData = useRecoilValueLoadable(newsState);

  if (newsData.state === "loading") {
    return (
      <Page className="bg-background flex flex-col justify-center items-center">
        <span className="loading loading-ring text-primary loading-lg"></span>
      </Page>
    );
  }

  if (newsData.state === "hasError") {
    return <Text className="text-center">Lỗi khi tải dữ liệu.</Text>;
  }

  const contents = newsData.contents;

  return (
    
    <Box className="bg-background flex flex-col justify-center items-center">
      {contents.map((news: any) => (
        <div
          key={news.id}
          className="card card-compact bg-base-100 w-96 shadow-xl mb-2"
        >
          <figure>
            <img src={news.image} alt={news.name} style={{ height: '260px', width: '600px' }} />
          </figure>
          <div className="card-body">
            <h2 className="card-title text-sm">{news.name}</h2>
            <h2 className="card-compact text-sm text-justify"
              dangerouslySetInnerHTML={{ __html: truncateHTML(news.content, 100) }} // Sử dụng hàm truncateHTML
            />
            <div className="card-actions justify-between">
              <div className="flex flex-col w-[60%]">
                <Text className="text-xs italic text-gray">
                  <Icon icon="zi-calendar-solid" className="mb-1" size={18}/> Ngày đăng: {formatDate(news.createdAt)}
                </Text>
                <Text className="text-xs italic text-gray mt-1">
                <Icon icon="zi-user-solid" className="mb-1" size={18}/>Tác giả: {news.author}
                </Text>
              </div>
              <button
                className="btn text-white bg-textPrimary" 
                onClick={() => navigate(`/news/${news.id}`)}
              >
                Xem Thêm
              </button>
            </div>
          </div>
        </div>
      ))}
    </Box>
  );
};

const NewsListPage: FC = () => {
  return (
    <Page>
      <Header title="Tin tức và sự kiện" showBackIcon={false} className="text-white bg-textPrimary"  />
      <Divider />
      <NewsList />
    </Page>
  );
};

export default NewsListPage;
