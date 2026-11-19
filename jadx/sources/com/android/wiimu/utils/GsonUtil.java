package com.android.wiimu.utils;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class GsonUtil {
    private static String TAG = "GsonUtil";

    public static String getFieldValue(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.contains(str2)) {
            return "";
        }
        try {
            return new JSONObject(str).getString(str2);
        } catch (JSONException e2) {
            e2.getMessage();
            return "";
        }
    }

    public static String parseBeanToJson(Object obj) {
        return new Gson().toJson(obj);
    }

    public static <T> T parseJsonToBean(String str, Class<T> cls) {
        try {
            return (T) new Gson().fromJson(str, (Class) cls);
        } catch (Exception e2) {
            e2.getMessage();
            return null;
        }
    }

    public static <T> List<T> parseJsonToList(String str, Class<T[]> cls) {
        try {
            return Arrays.asList((Object[]) new Gson().fromJson(str, (Class) cls));
        } catch (Exception e2) {
            e2.getMessage();
            return null;
        }
    }

    public static HashMap<String, Object> parseJsonToMap(String str) {
        try {
            return (HashMap) new Gson().fromJson(str, new TypeToken<HashMap<String, Object>>() { // from class: com.android.wiimu.utils.GsonUtil.1
            }.getType());
        } catch (Exception e2) {
            e2.getMessage();
            return null;
        }
    }

    public static <T> List<T> parseJsonToList(String str, Type type) {
        try {
            return (List) new Gson().fromJson(str, type);
        } catch (Exception e2) {
            e2.getMessage();
            return null;
        }
    }
}
