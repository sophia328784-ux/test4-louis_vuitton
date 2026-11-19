package com.linkplay.lpmdpkit.utils;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import defpackage.tr;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class UserPhoneInfo {
    public static final String PhoneName = Build.MANUFACTURER;
    public static final String PhoneModel = Build.MODEL;

    public static String getAcceptLanguage(Context context) {
        Locale locale = (context == null || context.getResources() == null) ? null : context.getResources().getConfiguration().locale;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        String country = locale.getCountry();
        String language = locale.getLanguage();
        return !TextUtils.isEmpty(country) ? tr.h(language, "-", country) : language;
    }

    public static final boolean isDestPhone(String str, String str2) {
        return PhoneName.toLowerCase().contains(str.toLowerCase()) || PhoneModel.toLowerCase().startsWith(str2.toLowerCase());
    }

    public static boolean isHuawei() {
        return isDestPhone("HUAWEI", "HUAWEI");
    }

    public static boolean isLanguageDe() {
        return Locale.getDefault().getLanguage().endsWith("de");
    }

    public static boolean isLanguageEnglish() {
        return Locale.getDefault().getLanguage().endsWith("en");
    }

    public static boolean isLanguageFr() {
        return Locale.getDefault().getLanguage().startsWith("fr");
    }

    public static boolean isLanguageItaly() {
        return Locale.getDefault().getLanguage().endsWith("it");
    }

    public static boolean isLanguageJapan() {
        return Locale.getDefault().getLanguage().endsWith("ja");
    }

    public static boolean isLanguageKorea() {
        return Locale.getDefault().getLanguage().endsWith("ko");
    }

    public static boolean isLanguageNl() {
        return Locale.getDefault().getLanguage().startsWith("nl");
    }

    public static boolean isLanguagePortuguese() {
        return Locale.getDefault().getLanguage().endsWith("pt");
    }

    public static boolean isLanguageSpanish() {
        return Locale.getDefault().getLanguage().toUpperCase().endsWith("ES");
    }

    public static boolean isLanguageTW_HK() {
        if (!Locale.getDefault().getLanguage().endsWith("zh")) {
            return false;
        }
        String lowerCase = Locale.getDefault().getCountry().toLowerCase();
        if (TextUtils.isEmpty(lowerCase)) {
            return false;
        }
        return lowerCase.equals("tw") || lowerCase.equals("hk");
    }

    public static boolean isLanguageZH() {
        if (Locale.getDefault().getLanguage().endsWith("zh")) {
            String lowerCase = Locale.getDefault().getCountry().toLowerCase();
            if (!TextUtils.isEmpty(lowerCase) && lowerCase.equals("cn")) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSamsung() {
        return isDestPhone("samsung", "GT");
    }
}
