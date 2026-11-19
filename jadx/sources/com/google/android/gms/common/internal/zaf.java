package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.os.LocaleListCompat;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.vuitton.android.R;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zaf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SimpleArrayMap f29224a = new SimpleArrayMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Locale f29225b;

    public static String a(int i2, Context context) {
        Resources resources = context.getResources();
        switch (i2) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                return e(context, "common_google_play_services_invalid_account_title");
            case 7:
                return e(context, "common_google_play_services_network_error_title");
            case 8:
            case 9:
            case 10:
            case 11:
            case 16:
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                new StringBuilder(String.valueOf(i2).length() + 22);
                return null;
            case 17:
                return e(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                return e(context, "common_google_play_services_restricted_profile_title");
        }
    }

    public static String b(int i2, Context context) {
        Resources resources = context.getResources();
        String strC = c(context);
        if (i2 == 1) {
            return resources.getString(R.string.common_google_play_services_install_text, strC);
        }
        if (i2 == 2) {
            return DeviceProperties.a(context) ? resources.getString(R.string.common_google_play_services_wear_update_text) : resources.getString(R.string.common_google_play_services_update_text, strC);
        }
        if (i2 == 3) {
            return resources.getString(R.string.common_google_play_services_enable_text, strC);
        }
        if (i2 == 5) {
            return d(context, "common_google_play_services_invalid_account_text", strC);
        }
        if (i2 == 7) {
            return d(context, "common_google_play_services_network_error_text", strC);
        }
        if (i2 == 9) {
            return resources.getString(R.string.common_google_play_services_unsupported_text, strC);
        }
        if (i2 == 20) {
            return d(context, "common_google_play_services_restricted_profile_text", strC);
        }
        switch (i2) {
            case 16:
                return d(context, "common_google_play_services_api_unavailable_text", strC);
            case 17:
                return d(context, "common_google_play_services_sign_in_failed_text", strC);
            case 18:
                return resources.getString(R.string.common_google_play_services_updating_text, strC);
            default:
                return resources.getString(R.string.common_google_play_services_unknown_issue, strC);
        }
    }

    public static String c(Context context) {
        String packageName = context.getPackageName();
        try {
            Context context2 = Wrappers.a(context).f29356a;
            return context2.getPackageManager().getApplicationLabel(context2.getPackageManager().getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String d(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String strE = e(context, str);
        if (strE == null) {
            strE = resources.getString(R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, strE, str2);
    }

    public static String e(Context context, String str) {
        Resources resourcesForApplication;
        SimpleArrayMap simpleArrayMap = f29224a;
        synchronized (simpleArrayMap) {
            try {
                Locale localeB = LocaleListCompat.f(context.getResources().getConfiguration().getLocales()).b(0);
                if (!localeB.equals(f29225b)) {
                    simpleArrayMap.clear();
                    f29225b = localeB;
                }
                String str2 = (String) simpleArrayMap.get(str);
                if (str2 != null) {
                    return str2;
                }
                int i2 = GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE;
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
                } catch (PackageManager.NameNotFoundException unused) {
                    resourcesForApplication = null;
                }
                if (resourcesForApplication != null) {
                    int identifier = resourcesForApplication.getIdentifier(str, "string", "com.google.android.gms");
                    if (identifier == 0) {
                        new StringBuilder(str.length() + 18);
                    } else {
                        String string = resourcesForApplication.getString(identifier);
                        if (!TextUtils.isEmpty(string)) {
                            simpleArrayMap.put(str, string);
                            return string;
                        }
                        new StringBuilder(str.length() + 20);
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
