import React from "react";
import {
  useRecoilRefresher_UNSTABLE,
  useRecoilState,
  useRecoilValue,
  useRecoilValueLoadable,
  useSetRecoilState,
} from "recoil";
import { categoriesState, productsState, variantState } from "state";
import { Product } from "types/product";
import { Box } from "zmp-ui";
import _ from "lodash";
import useProducts from "hooks/useProducts";
import { selectedFileState, selectedProductState } from "../../state";
import { formFields } from "./form-field";
import { CSForm } from "components/csform";
import { modalVisibleState } from "components/csmodal";
import { useNavigate } from "react-router-dom";

export const ManageProductForm = () => {
  const variants = useRecoilValueLoadable(variantState);
  const categories = useRecoilValueLoadable(categoriesState);
  const selectedProduct = useRecoilValue(selectedProductState);
  const [selectedFile, setSelectedFile] = useRecoilState(selectedFileState);
  const { addProduct, updateProduct } = useProducts();
  const refresh = useRecoilRefresher_UNSTABLE(productsState);
  const setModalVisible = useSetRecoilState(modalVisibleState);
  const navigate = useNavigate();
  function convertToHTML(text) {
    if (!text) return '';

    // 1. Escaping các ký tự đặc biệt trong HTML
    const escapedText = text
        .replace(/&/g, '&amp;') // Thay thế ký tự &
        .replace(/</g, '&lt;') // Thay thế ký tự <
        .replace(/>/g, '&gt;') // Thay thế ký tự >
        .replace(/"/g, '&quot;') // Thay thế ký tự "

    // 2. Thay thế xuống dòng thành <br>
    return escapedText.replace(/\n/g, '<br>');
}

  const handleSubmitProduct = (val: Product) => {
    let submitProduct = _.merge(val, { image: selectedFile });

    //
    if (!submitProduct.id) {
      submitProduct.description = convertToHTML(submitProduct.description);

      console.log("Sản phẩm cần tạo sau khi chuyển đổi: ", submitProduct);
      
      addProduct(submitProduct, true);
    } else {
      updateProduct(submitProduct, true);
    }
    navigate('/admin/product');
  };

  const handleOnChangeFile = (e) => {
    if (!e.target.files || e.target.files.length === 0) {
      setSelectedFile(undefined);
      return;
    }

    // I've kept this example simple by using the first image instead of multiple
    setSelectedFile(e.target.files?.item(0));
  };

  if (variants.state === "loading" || categories.state === "loading") {
    return;
  }
  return (
    <Box flex flexDirection="column" className="gap-y-4">
      <CSForm
        fields={formFields}
        initialValue={selectedProduct}
        arrMulCbxs={{
          variantId: variants.contents,
          categoryId: categories.contents,
        }}
        onCSSubmit={(data) => handleSubmitProduct(data)}
        formDataPattern={(value: object) => {
          return value;
        }}
      >
        <input
          type="file"
          className="input w-full rounded-xl"
          hidden
          id="uploadProductImage"
          onChange={(e) => handleOnChangeFile(e)}
        />
      </CSForm>
    </Box>
  );
};
