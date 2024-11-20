import React, { useEffect, useRef, useState } from "react";
import {
  FieldError,
  SubmitHandler,
  useForm,
  UseFormRegisterReturn,
} from "react-hook-form";
import { FormController, selectTypeState } from "./form-controller";
import { isEmpty } from "lodash";
import _ from "lodash";
import { CSFormProps } from "./types";
import { useRecoilState } from "recoil";
import { ErrorBoundary } from "react-error-boundary";
import ProductManagePage from "pages/admin/product";
import { Box } from "zmp-ui";

export const CSForm = ({
  onCSSubmit,
  fields,
  initialValue,
  formDataPattern,
  btnSubmit,
  arrMulCbxs,
  arrSelectBxs,
  children,
}: CSFormProps) => {
  const {
    register,
    handleSubmit,
    reset,
    formState: { errors },
  } = useForm<any>({
    mode: "all",
    defaultValues: {},
  });

  const [typeState, setTypeState] = useRecoilState(selectTypeState);
  const [loading, setLoading] = useState(false);

  const onSubmit: SubmitHandler<any> = (data) => {
    setLoading(true); // Bắt đầu loading
    try {
      if (typeof onCSSubmit === "function") {
        // console.log("Data nè: ",data);
        
        onCSSubmit(data);
        
      }
    } catch (error) {
      console.error('Error saving product:', error);
    } 
  };

  useEffect(() => {
    let formInitialData = formDataPattern
      ? formDataPattern(initialValue)
      : initialValue;

    if (!isEmpty(initialValue)) {
      reset(formInitialData);
    } else {
      document.querySelector<HTMLFormElement>("#CSForm")?.reset();
    }
  }, [initialValue]);

  useEffect(() => {
    const timer = setTimeout(() => {
      setLoading(false);
    }, 3000);

    return () => clearTimeout(timer);
  }, []);

  if(loading){
    return(
      <ErrorBoundary fallback={<ProductManagePage />}>
      <Box
        className="bg-white rounded-lg p-4 justify-center items-center flex w-full h-full"
      >
        <span className="loading loading-lg loading-bars" style={{ color: '#009e91' }}></span>
      </Box>
      </ErrorBoundary>
    )
  }

  return (
    <form onSubmit={handleSubmit(onSubmit)} className="space-y-3" id="CSForm">
      {children}
      {fields.map((val, key) => {
        return (
          <div key={key}>
            <FormController
              title={val.title}
              tInput={val.type}
              register={{
                ...register(
                  val.field,
                  (() => {
                    if (val.validate) {
                      return { required: `${val.validate.message}` };
                    }
                    return;
                  })()
                ),
              }}
              select_register={
                {
                  ...(() => {
                    if (val.select_field) {
                      return {
                        ...register(
                          val.select_field,
                          (() => {
                            if (val.validate) {
                              return { required: `${val.validate.message}` };
                            }
                            return;
                          })()
                        ),
                      };
                    }
                    return;
                  })(),
                } as UseFormRegisterReturn<any>
              }
              selectType={typeState}
              arrMulCbx={arrMulCbxs ? arrMulCbxs[val.field] : undefined}
              arrSelectBx={
                arrSelectBxs && val.select_field
                  ? arrSelectBxs[val.select_field]
                  : undefined
              }
              errors={errors[val.field] as FieldError}
              disable={!!!onCSSubmit}
            />
          </div>
        );
      })}
      {onCSSubmit &&
        (btnSubmit || (
          <button type="submit" className="btn btn-neutral rounded-md bg-textPrimary">
            Lưu
          </button>
        ))}
    </form>
  );
};
