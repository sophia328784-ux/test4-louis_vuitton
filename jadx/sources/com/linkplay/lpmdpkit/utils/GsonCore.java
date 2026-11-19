package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import defpackage.fc;
import java.util.Arrays;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes2.dex */
public class GsonCore {
    private static final String TAG = "GsonCore";

    public static <T> T fromJson(String str, Class<T> cls) {
        Gson gsonCreate = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).create();
        try {
            if (!TextUtils.isEmpty(str)) {
                str = str.trim();
            }
            return (T) gsonCreate.fromJson(str, (Class) cls);
        } catch (Exception e2) {
            e2.printStackTrace();
            e2.toString();
            Arrays.toString(e2.getStackTrace()).replace(",", "\n");
            return null;
        }
    }

    public static <T> T fromModelJson(String str, TypeToken<T> typeToken) {
        if (typeToken == null) {
            return null;
        }
        Gson gsonCreate = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).create();
        try {
            if (!TextUtils.isEmpty(str)) {
                str = str.trim();
            }
            return (T) gsonCreate.fromJson(str, typeToken.getType());
        } catch (Exception e2) {
            e2.toString();
            Arrays.toString(e2.getStackTrace()).replace(",", "\n");
            return null;
        }
    }

    public static <T> T fromModelResponse(Response response, TypeToken<T> typeToken) {
        ResponseBody responseBody;
        String strString = (response == null || (responseBody = response.f76988h) == null) ? null : responseBody.string();
        if (!TextUtils.isEmpty(strString)) {
            strString = strString.trim();
        }
        return (T) fromModelJson(strString, typeToken);
    }

    public static <T> T fromResponse(Response response, Class<T> cls) {
        ResponseBody responseBody;
        String strString = (response == null || (responseBody = response.f76988h) == null) ? null : responseBody.string();
        if (!TextUtils.isEmpty(strString)) {
            strString = strString.trim();
        }
        return (T) fromJson(strString, cls);
    }

    public static String toJson(Object obj) {
        try {
            return new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).create().toJson(obj);
        } catch (Exception e2) {
            e2.printStackTrace();
            return fc.g(e2, new StringBuilder("toJson error = "));
        }
    }
}
