package com.linkplay.lpmdpkit.utils;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes2.dex */
public class SharedPreferencesUtils {
    public static String getParam(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences == null ? "" : sharedPreferences.getString(str, "");
    }

    public static boolean getParamBoolean(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.getBoolean(str, false);
    }

    public static int getParamInt(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences == null) {
            return -1;
        }
        return sharedPreferences.getInt(str, -1);
    }

    public static long getParamLong(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences == null) {
            return -1L;
        }
        return sharedPreferences.getLong(str, -1L);
    }

    public static void removeParam(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().remove(str).apply();
    }

    public static void setParam(SharedPreferences sharedPreferences, String str, String str2) {
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public static void setParamBoolean(SharedPreferences sharedPreferences, String str, boolean z) {
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean(str, z);
        editorEdit.apply();
    }

    public static void setParamInt(SharedPreferences sharedPreferences, String str, int i2) {
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putInt(str, i2);
        editorEdit.apply();
    }

    public static void setParamJson(SharedPreferences sharedPreferences, String str, Object obj) {
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(str, GsonCore.toJson(obj));
        editorEdit.apply();
    }

    public static void setParamLong(SharedPreferences sharedPreferences, String str, long j2) {
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong(str, j2);
        editorEdit.apply();
    }
}
