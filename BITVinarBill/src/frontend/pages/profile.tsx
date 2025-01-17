import React, { FC, useState } from "react";
import { Box, Header, Icon, Page, Text, Spinner } from "zmp-ui";
import CustomReview from "../components/custom-review"; 
import subscriptionDecor from "static/subscription-decor.svg";
import { ListRenderer } from "components/list-renderer";
import { useNavigate } from "react-router-dom";
import { useToBeImplemented } from "hooks/hooks";
import { useRecoilValue, useRecoilValueLoadable, useSetRecoilState } from "recoil";
import { authenticationState, accessTokenState, getPhonenumber,
  userCurrentAtom, userCurrentState, sendNotification } from "state";
import { CustomerService } from "api/services/customer.service";
import { Subscription } from "../components/subscription";
// import icon 
import { FaUser, FaChevronCircleRight, FaClock, FaStar } from "react-icons/fa";
import { IoMdSettings } from "react-icons/io";
import { IoCall } from "react-icons/io5";
const listRender = (handle, navigate, isAdmin) => {
  const primaryColor = '#009e91'; // Màu chính
  const items = [
    {
      left: <FaUser style={{ color: 'black' }} size={20} className="inline" />,
      right: (
        <Box flex>
          <Text.Header style={{ color: 'black' }} className="flex-1 items-center font-normal">
            Thông tin tài khoản
          </Text.Header>
          <FaChevronCircleRight style={{ color: 'black' }} size={20} className="inline" />
        </Box>
      ),
      onclick: handle,
    },
    {
      left: <FaClock style={{ color: 'black' }} size={20} className="inline" />,
      right: (
        <Box flex onClick={() => navigate("/order-history")}>
          <Text.Header style={{ color: 'black' }} className="flex-1 items-center font-normal">
            Lịch sử đơn hàng
          </Text.Header>
          <FaChevronCircleRight style={{ color: 'black' }} size={20} className="inline" />
        </Box>
      ),
      onclick: () => {},
    },
  ];

  if (isAdmin) {
    items.push({
      left: <IoMdSettings style={{ color: 'black' }} size={20} className="inline" />,
      right: (
        <Box flex onClick={() => navigate("/admin/dashboard")}>
          <Text.Header style={{ color: 'black' }} className="flex-1 items-center font-normal">
            Quản trị
          </Text.Header>
          <FaChevronCircleRight style={{ color: 'black' }} size={20} className="inline" />
        </Box>
      ),
      onclick: () => {},
    });
  }

  return items;
};

// const Subscription: FC = () => {
//   const onClick = () => {
//     sendNotification(); 
//   };
//   return (
//     <Box className="m-4" onClick={onClick}>
//       <Box
//         className="bg-green text-white rounded-xl p-4 space-y-2"
//         style={{
//           backgroundImage: `url(${subscriptionDecor})`,
//           backgroundPosition: "right 8px center",
//           backgroundRepeat: "no-repeat",
//         }}
//       >
//         <Text.Title className="font-bold">Trở thành thành viên</Text.Title>
//         <Text size="xxSmall">Quan tâm ZaloOA để trở thành thành viên bạn nhé!</Text>
//       </Box>
//     </Box>
//   );
// };

interface PersonalProps {
  setLoading: (loading: boolean) => void; // Thêm prop setLoading
}


const Personal: FC<PersonalProps> = ({ setLoading }) => {
  const navigate = useNavigate();
  const getAuth = useRecoilValue(authenticationState);
  const accessToken = useRecoilValueLoadable(accessTokenState);
  let { contents } = accessToken;
  const userCurrent = useRecoilValue(userCurrentState);
  const setUserCurrent = useSetRecoilState(userCurrentAtom);

  const handleUserInfo = () => {
    setLoading(true); // Trigger loading for the whole page

    let { id, phone_number } = userCurrent;
    if (phone_number) {
      setLoading(false); 
      navigate("/info_user");
    } else {
      getPhonenumber(contents)
        .then((res) => {
          const updatedUser = { ...userCurrent, phone_number: res };
          setUserCurrent(updatedUser);

          (async () => {
            try {
              await CustomerService.update({
                id: id,
                name: updatedUser.name,
                phone_number: res,
              });
              setUserCurrent(updatedUser);
              setLoading(false); // Stop loading after success
              navigate("/info_user");
            } catch (error) {
              setLoading(false); // Stop loading if error
              console.error("Update error:", error);
            }
          })();
        })
        .catch((err) => {
          setLoading(false); 
          console.error("API error:", err);
        });
    }
  };

  return (
    <Box className="m-4 text-black">
      <ListRenderer
        title="Cá nhân"
        items={listRender(handleUserInfo, navigate, getAuth.isAdmin)}
        renderLeft={(item) => item.left}
        renderRight={(item) => item.right}
        onClick={(item) => item.onclick()}
      />
    </Box>
  );
};


const Other: FC = () => {
  const [isSheetVisible, setSheetVisible] = useState(false); 
  const navigate = useNavigate(); 
  const handleContact = () => {   
    navigate('/contact');
  };
  const primaryColor = '#009e91'; // Màu chính

  return (
    <Box className="m-4 text-black">
      <ListRenderer
        title="Khác"
        items={[
          {
            left: <FaStar style={{ color: 'black' }} size={20} className="inline"/>,
            right: (
              <Box flex onClick={() => setSheetVisible(true)}> {/* Show Sheet on click */}
                <Text.Header style={{ color: 'black' }} className="flex-1 items-center font-normal">
                  Đánh giá đơn hàng
                </Text.Header>
                <FaChevronCircleRight style={{ color: 'black' }} size={20} className="inline" />
              </Box>
            ),
            onclick: () => {},
          },
          {
            left: <IoCall style={{ color: 'black' }} size={20} className="inline" />,
            right: (
              <Box flex>
                <Text.Header style={{ color: 'black' }} className="flex-1 items-center font-normal">
                  Liên hệ và góp ý
                </Text.Header>
                <FaChevronCircleRight style={{ color: 'black' }} size={20} className="inline" />
              </Box>
            ),
            onclick: handleContact, 
          },
        ]}
        renderLeft={(item) => item.left}
        renderRight={(item) => item.right}
        onClick={(item) => item.onclick()}
      />
      <CustomReview
        visible={isSheetVisible}
        onClose={() => setSheetVisible(false)}
      />
    </Box>
  );
};

const overlayStyle: React.CSSProperties = {
  position: 'fixed',
  top: 0,
  left: 0,
  width: '100%',
  height: '100%',
  background: 'rgba(255, 255, 255, 0.8)',
  display: 'flex',
  justifyContent: 'center',
  alignItems: 'center',
  zIndex: 9999,
};

const ProfilePage: FC = () => {
  const [loading, setLoading] = useState(false);

  return (
    <Page>
      {loading && (
        <div style={overlayStyle}>
          <Spinner />
        </div>
      )}
      <Header showBackIcon={false} title="&nbsp;" className="bg-textPrimary"/>
      {!loading && (
        <>
          <Subscription></Subscription>
          <Personal setLoading={setLoading} />
          <Other />
        </>
      )}
    </Page>
  );
};

export default ProfilePage;