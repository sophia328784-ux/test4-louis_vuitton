package com.perfectcorp.perfectlib.ymk.utility;

import android.text.TextUtils;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.HttpRequest;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.CountryCodeNotSetException;
import com.perfectcorp.perfectlib.exceptions.LocaleCodeNotSetException;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import defpackage.fc;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SettingHelper {
    public static void a() {
        Log.g(3, "SettingHelper", "[ensureLocaleAndCountryNotEmpty] start");
        Log.g(3, "SettingHelper", "[ensureLocaleAndCountryNotEmpty] locale=" + QuickLaunchPreferenceHelper.b());
        if (TextUtils.isEmpty(QuickLaunchPreferenceHelper.b())) {
            throw new LocaleCodeNotSetException();
        }
        Log.g(3, "SettingHelper", "[ensureLocaleAndCountryNotEmpty] country=" + QuickLaunchPreferenceHelper.a());
        if (TextUtils.isEmpty(QuickLaunchPreferenceHelper.a())) {
            throw new CountryCodeNotSetException();
        }
        Log.g(3, "SettingHelper", "[ensureLocaleAndCountryNotEmpty] end");
    }

    public static boolean b() {
        a();
        BasicPreferences basicPreferences = QuickLaunchPreferenceHelper.f42021a;
        if (TextUtils.isEmpty(basicPreferences.getString("SETTING_LANGUAGE_LOCALE_CODE_FOR_JEWELRY_LOOK", "")) || TextUtils.isEmpty(basicPreferences.getString("SETTING_COUNTRY_CODE_FOR_JEWELRY_LOOK", ""))) {
            return false;
        }
        return (Objects.equals(QuickLaunchPreferenceHelper.b(), basicPreferences.getString("SETTING_LANGUAGE_LOCALE_CODE_FOR_JEWELRY_LOOK", "")) && Objects.equals(QuickLaunchPreferenceHelper.a(), basicPreferences.getString("SETTING_COUNTRY_CODE_FOR_JEWELRY_LOOK", ""))) ? false : true;
    }

    public static boolean c() {
        a();
        BasicPreferences basicPreferences = QuickLaunchPreferenceHelper.f42021a;
        if (TextUtils.isEmpty(basicPreferences.getString("SETTING_LANGUAGE_LOCALE_CODE_FOR_LOOK", "")) || TextUtils.isEmpty(basicPreferences.getString("SETTING_COUNTRY_CODE_FOR_LOOK", ""))) {
            return false;
        }
        return (Objects.equals(QuickLaunchPreferenceHelper.b(), basicPreferences.getString("SETTING_LANGUAGE_LOCALE_CODE_FOR_LOOK", "")) && Objects.equals(QuickLaunchPreferenceHelper.a(), basicPreferences.getString("SETTING_COUNTRY_CODE_FOR_LOOK", ""))) ? false : true;
    }

    public static boolean d() {
        a();
        BasicPreferences basicPreferences = QuickLaunchPreferenceHelper.f42021a;
        if (TextUtils.isEmpty(basicPreferences.getString("SETTING_LANGUAGE_LOCALE_CODE_FOR_NAIL_LOOK", "")) || TextUtils.isEmpty(basicPreferences.getString("SETTING_COUNTRY_CODE_FOR_NAIL_LOOK", ""))) {
            return false;
        }
        return (Objects.equals(QuickLaunchPreferenceHelper.b(), basicPreferences.getString("SETTING_LANGUAGE_LOCALE_CODE_FOR_NAIL_LOOK", "")) && Objects.equals(QuickLaunchPreferenceHelper.a(), basicPreferences.getString("SETTING_COUNTRY_CODE_FOR_NAIL_LOOK", ""))) ? false : true;
    }

    public static boolean e() {
        String str;
        Log.g(3, "SettingHelper", "[isSkuLanguageChanged] start");
        a();
        Log.g(3, "SettingHelper", "[isSkuLanguageChanged] checking isSkuLanguageEmpty");
        BasicPreferences basicPreferences = QuickLaunchPreferenceHelper.f42021a;
        String string = basicPreferences.getString("SETTING_LANGUAGE_LOCALE_CODE_FOR_SKU", "");
        String string2 = basicPreferences.getString("SETTING_COUNTRY_CODE_FOR_SKU", "");
        Log.g(3, "SettingHelper", fc.i("[isSkuLanguageEmpty] locale=", string, ", country=", string2));
        boolean z = false;
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            str = "[isSkuLanguageChanged] empty setting";
        } else {
            String strB = QuickLaunchPreferenceHelper.b();
            String strA = QuickLaunchPreferenceHelper.a();
            Log.g(3, "SettingHelper", fc.i("[isSkuLanguageChanged] locale=", strB, ", country=", strA));
            String string3 = basicPreferences.getString("SETTING_LANGUAGE_LOCALE_CODE_FOR_SKU", "");
            String string4 = basicPreferences.getString("SETTING_COUNTRY_CODE_FOR_SKU", "");
            Log.g(3, "SettingHelper", fc.i("[isSkuLanguageChanged] localeForSku=", string3, ", countryForSku=", string4));
            z = (Objects.equals(strB, string3) && Objects.equals(strA, string4)) ? false : true;
            str = "[isSkuLanguageChanged] end. result=" + z;
        }
        Log.g(3, "SettingHelper", str);
        return z;
    }

    public static void f(HttpRequest httpRequest) {
        String strA = QuickLaunchPreferenceHelper.a();
        if (TextUtils.isEmpty(strA)) {
            throw new CountryCodeNotSetException();
        }
        httpRequest.a(strA, "country");
    }
}
