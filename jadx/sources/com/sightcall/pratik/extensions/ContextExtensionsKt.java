package com.sightcall.pratik.extensions;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.core.content.ContextCompat;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.pratik.utils.UtilsKt;
import com.sightcall.universal.media.offline.FileUtils;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0002\u001a\f\u0010\u0007\u001a\u00020\u0006*\u00020\u0002H\u0002\u001a\n\u0010\b\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\t\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\n\u001a\u00020\u0004*\u00020\u0002\u001a\u0012\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\f\u001a\u00020\u0004¨\u0006\r"}, d2 = {"appVersionCode", "", "Landroid/content/Context;", "deviceType", "", "networkType", "Lcom/sightcall/pratik/extensions/NetworkType;", "mobileNetworkType", "networkCarrier", "deviceName", "appVersionName", "digitalFlowUserAgent", "digitalFlowVersion", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ContextExtensionsKt {
    public static final long appVersionCode(Context context) throws PackageManager.NameNotFoundException {
        Long lZ;
        Long lZ2;
        Long lZ3;
        context.getClass();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        packageInfo.getClass();
        String str = packageInfo.versionName;
        if (str == null) {
            str = "0.0.0";
        }
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) StringsKt__StringsKt.split$default(str, new String[]{" "}, false, 0, 6, null).get(0), new String[]{FileUtils.HIDDEN_PREFIX}, false, 0, 6, null);
        String str2 = (String) CollectionsKt.G(0, listSplit$default);
        long jLongValue = 0;
        long jLongValue2 = (str2 == null || (lZ3 = StringsKt.Z(str2)) == null) ? 0L : lZ3.longValue();
        String str3 = (String) CollectionsKt.G(1, listSplit$default);
        long jLongValue3 = (str3 == null || (lZ2 = StringsKt.Z(str3)) == null) ? 0L : lZ2.longValue();
        String str4 = (String) CollectionsKt.G(2, listSplit$default);
        if (str4 != null && (lZ = StringsKt.Z(str4)) != null) {
            jLongValue = lZ.longValue();
        }
        return (jLongValue * 10000) + (jLongValue3 * 1000000) + (jLongValue2 * 100000000);
    }

    public static final String appVersionName(Context context) {
        context.getClass();
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName);
        } catch (Exception unused) {
            Logger.INSTANCE.getTag();
            return "?";
        }
    }

    public static final String deviceName(Context context) {
        context.getClass();
        Locale userLocale = UtilsKt.getUserLocale(context);
        String str = Build.MODEL;
        str.getClass();
        String lowerCase = str.toLowerCase(userLocale);
        lowerCase.getClass();
        String str2 = Build.MANUFACTURER;
        str2.getClass();
        String lowerCase2 = str2.toLowerCase(userLocale);
        lowerCase2.getClass();
        if (StringsKt.P(lowerCase, lowerCase2, false)) {
            return str;
        }
        String upperCase = str2.toUpperCase(userLocale);
        upperCase.getClass();
        return upperCase + " " + str;
    }

    public static final String deviceType(Context context) {
        context.getClass();
        Object systemService = context.getSystemService("window");
        systemService.getClass();
        WindowManager windowManager = (WindowManager) systemService;
        if (Build.VERSION.SDK_INT < 30) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            float f2 = displayMetrics.widthPixels;
            float f3 = displayMetrics.density;
            return Math.min(f2 / f3, ((float) displayMetrics.heightPixels) / f3) >= 600.0f ? "tablet" : "phone";
        }
        WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
        currentWindowMetrics.getClass();
        Rect bounds = currentWindowMetrics.getBounds();
        bounds.getClass();
        return Math.min(((float) bounds.width()) / context.getResources().getDisplayMetrics().density, ((float) bounds.height()) / context.getResources().getDisplayMetrics().density) >= 600.0f ? "tablet" : "phone";
    }

    public static final String digitalFlowUserAgent(Context context, String str) throws PackageManager.NameNotFoundException {
        context.getClass();
        str.getClass();
        return context.getPackageName() + "/" + appVersionCode(context) + " SDFAPI/" + str + " Android/" + SdkUtilsKt.sdkVersion();
    }

    private static final NetworkType mobileNetworkType(Context context) {
        if (ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0) {
            return NetworkType.UNKNOWN;
        }
        Object systemService = context.getSystemService("phone");
        systemService.getClass();
        switch (((TelephonyManager) systemService).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return NetworkType.MOBILE_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return NetworkType.MOBILE_3G;
            case 13:
            case 18:
            case 19:
                return NetworkType.MOBILE_4G;
            case 20:
                return NetworkType.MOBILE_5G;
            default:
                return NetworkType.UNKNOWN;
        }
    }

    public static final String networkCarrier(Context context) {
        context.getClass();
        Object systemService = context.getSystemService("phone");
        systemService.getClass();
        String networkOperatorName = ((TelephonyManager) systemService).getNetworkOperatorName();
        networkOperatorName.getClass();
        return networkOperatorName;
    }

    public static final NetworkType networkType(Context context) {
        context.getClass();
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return NetworkType.UNKNOWN;
        }
        Object systemService = context.getSystemService("connectivity");
        systemService.getClass();
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return NetworkType.UNKNOWN;
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            return (type == 1 || type == 6 || type == 9) ? NetworkType.WIFI : NetworkType.UNKNOWN;
        }
        return mobileNetworkType(context);
    }
}
