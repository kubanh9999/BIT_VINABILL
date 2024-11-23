import AxiosClient from "api/axios-client";
import { News } from "types/news"
export const NewsService = {
    getAll: async (): Promise<any> => {
        try {
            const dataNews = await AxiosClient.get("/news");

            return dataNews;
        } catch (error) {
            console.log("Get all categories error: ", error);
            return [];
        }
    },
    getById: async (id: string): Promise<News> => {
        try {
            return await AxiosClient.get(`/news/${id}`);
        } catch (error) {
            return {} as News;
        }
    },

    create: async (data: News): Promise<News> => {
        throw new Error("");
    },

    update: async (data: News): Promise<News> => {
        throw new Error("");
    },

    delete: async (id: string): Promise<any> => {
        throw new Error("");
    },
};
