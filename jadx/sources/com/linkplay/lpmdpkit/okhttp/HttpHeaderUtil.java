package com.linkplay.lpmdpkit.okhttp;

import com.linkplay.lpmdpkit.utils.UserPhoneInfo;

/* JADX INFO: loaded from: classes2.dex */
public class HttpHeaderUtil {
    public static String makeAcceptLanguage() {
        if (UserPhoneInfo.isLanguageZH()) {
            return "zh-cn";
        }
        if (UserPhoneInfo.isLanguageTW_HK()) {
            return "zh-tw";
        }
        if (UserPhoneInfo.isLanguageDe()) {
            return "de-de";
        }
        if (UserPhoneInfo.isLanguageJapan()) {
            return "ja-jp";
        }
        if (UserPhoneInfo.isLanguageKorea()) {
            return "ko-kr";
        }
        if (UserPhoneInfo.isLanguageItaly()) {
            return "it-it";
        }
        if (UserPhoneInfo.isLanguagePortuguese()) {
            return "pt-pt";
        }
        if (UserPhoneInfo.isLanguageFr()) {
            return "fr-fr";
        }
        if (UserPhoneInfo.isLanguageNl()) {
            return "nl-nl";
        }
        return UserPhoneInfo.isLanguageSpanish() ? "es-es" : "en-us";
    }
}
