import React, { FC, useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { useRecoilValue } from "recoil";
import { newsState } from "state";
import { Box, Text, Page, Header, Icon } from "zmp-ui";
import { Divider } from "components/divider";

// Component chi tiết blog
const NewDetailPage: FC = () => {
  const { id } = useParams<{ id: string }>(); // Lấy ID từ URL
  const blogs = useRecoilValue(newsState); // Lấy danh sách blogs từ Recoil
  const [blog, setBlog] = useState<any>(null);
  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    return date.toLocaleDateString("vi-VN"); // Định dạng ngày theo chuẩn Việt Nam
  };

  useEffect(() => {
    if (id && blogs.length > 0) {
      const numericId = parseInt(id, 10); // Chuyển id từ chuỗi thành số
      const foundBlog = blogs.find((b) => b.id === numericId);
      setBlog(foundBlog);
    }
  }, [id, blogs]);

  // Nếu blog không tồn tại, hiển thị thông báo lỗi
  if (!blog) {
    return (
      <Page>
        <Header title="Blog không tìm thấy" />
        <Text className="text-center">Blog bạn tìm kiếm không tồn tại hoặc đã bị xóa.</Text>
      </Page>
    );
  }

  // Add custom inline styles for <ul> and <li>
  // const styledContent = `
  //   <style>
  //     ul {
  //     display: block;
  //       list-style-type: disc;
  //       padding-left: 16px;
  //     }
  //     li {
  //     display: inline-block;
  //       text-align: left;
  //       font-weight: 500;
  //       margin: 0;
  //     text-align: left;

  //     }
  //   </style>
    
  //   ${blog.content}
  // `;
  const styledContent = `
    <style>
      /* Container Styles */
      .wordpress-content {
        font-family: system-ui, -apple-system, sans-serif;
        line-height: 1.6;
        color: #333;
      }

      /* Headings */
      h1, h2, h3 {
        font-weight: 600;
        margin: 1.2em 0 0.5em;
        color: #111;
      }
      h1 {
        font-size: 1.5em; /* Kích thước tương tự template cũ */
      }
      h2 {
        font-size: 1.3em; /* Điều chỉnh nhỏ hơn */
      }
      h3 {
        font-size: 1.2em; /* Điều chỉnh nhỏ hơn */
      }

      /* Paragraphs */
      p {
        margin-bottom: 1em;
        text-align: justify;
      }

      /* Lists */
      ul {
        display: block;
        list-style-type: disc;
        padding-left: 16px;
        margin: 1em 0;
      }
      li {
        margin-bottom: 0.5em;
      }
    </style>

    ${blog.content}
  `;



  return (
    <Page>
      <Header title={"Chi tiết tin tức"} className="mr-10 text-white bg-textPrimary"  />
      <Divider />
      <Box className="p-4">
        {blog ? (
          <>
            {/* Tiêu đề bài viết */}
            <Text.Header className="text-2xl mb-2">{blog.name}</Text.Header>
            <Box className="flex text-gray mt-1 mb-3">
            <Text className="text-xs italic text-gray me-4">
                <Icon icon="zi-calendar-solid" className="mb-1" size={18} /> Ngày đăng: {formatDate(blog.createdAt)}
              </Text>
              <Text className="text-xs italic text-gray">
                <Icon icon="zi-user-solid" className="mb-1" size={18} />Tác giả: {blog.author}
              </Text>
            </Box>
            {/* Hình ảnh bài viết */}
            <figure className="">
              <img src={blog.image} alt={blog.name} className="w-full max-w-4xl mx-auto rounded-md" />
            </figure>

            <Divider />

            {/* Hiển thị nội dung blog với HTML và custom CSS */}
            <div
              className="custom-content"
              dangerouslySetInnerHTML={{ __html: styledContent }}
            />
          </>
        ) : (
          <p className="text-red-500 font-bold">Bài viết không tìm thấy!</p>
        )}
      </Box>
    </Page>
  );

};

export default NewDetailPage;
