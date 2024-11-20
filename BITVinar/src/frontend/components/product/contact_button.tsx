import React, { useState } from 'react';
import { ChevronDown, Phone, MessageCircle } from 'lucide-react';
import { openChat } from 'zmp-sdk/apis';
import { useRecoilValue } from 'recoil';
import { userCurrentAtom } from 'state';

const ContactButton = ({ product }) => {
  const [isOpen, setIsOpen] = useState(false);

  const handleCall = () => {
    // const phoneMatch = product.short_description.match(/tel:(\d+)/);
    const phoneMatch = "02363659118";
    if (phoneMatch) {
      window.location.href = `tel:${phoneMatch}`;
    }
  };
  const openChatScreen =()=> {
    
    openChat({
      type: 'user',
      id: "7307361165187027870",
      message: '',
      success: () => {console.log("thành công rồi");
      },
      fail: (err) => {console.log("thất bại rồi: ", err);}
    });
    }

  const handleZalo = () => {
    openChatScreen();
    // const phoneMatch = product.short_description.match(/tel:(\d+)/);
    // if (phoneMatch) {
    //   window.location.href = `https://zalo.me/${phoneMatch[1]}`;
    // }
  };

  return (
    <div className="relative">
      <button
        onClick={() => setIsOpen(!isOpen)}
        className="w-full bg-textPrimary text-white p-3 rounded flex items-center justify-center gap-2"
      >
        <Phone className="w-5 h-5" />
        <span>Liên hệ ngay</span>
        <ChevronDown className={`w-4 h-4 transition-transform ${isOpen ? 'rotate-180' : ''}`} />
      </button>

      {isOpen && (
        <div className="absolute w-full mt-1 bg-white border rounded shadow-lg">
          <button
            onClick={handleCall}
            className="w-full p-3 flex items-center gap-2 hover:bg-gray-100"
          >
            <Phone className="w-5 h-5" />
            <span>Gọi điện thoại</span>
          </button>
          <button
            onClick={handleZalo}
            className="w-full p-3 flex items-center gap-2 hover:bg-gray-100 border-t"
          >
            <MessageCircle className="w-5 h-5" />
            <span>Nhắn tin Zalo</span>
          </button>
        </div>
      )}
    </div>
  );
};

export default ContactButton;