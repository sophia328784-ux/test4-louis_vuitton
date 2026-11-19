package com.sightcall.universal.util;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Parcelable;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.UtilsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.tr;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;
import net.rtccloud.sdk.BuildConfig;
import net.rtccloud.sdk.util.FlipTable;

/* JADX INFO: loaded from: classes3.dex */
public class Utils {
    public static void applySecureFlag(Activity activity) {
        if (Boolean.TRUE.equals(Universal.settings().secureScreen().get())) {
            activity.getWindow().addFlags(8192);
        } else {
            activity.getWindow().clearFlags(8192);
        }
    }

    public static String bundleToString(Bundle bundle) {
        StringBuilder sb = new StringBuilder("Bundle[");
        if (bundle == null) {
            sb.append("null");
        } else {
            boolean z = true;
            for (String str : bundle.keySet()) {
                if (!z) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append('=');
                Object obj = bundle.get(str);
                if (obj instanceof int[]) {
                    sb.append(Arrays.toString((int[]) obj));
                } else if (obj instanceof byte[]) {
                    sb.append(Arrays.toString((byte[]) obj));
                } else if (obj instanceof boolean[]) {
                    sb.append(Arrays.toString((boolean[]) obj));
                } else if (obj instanceof short[]) {
                    sb.append(Arrays.toString((short[]) obj));
                } else if (obj instanceof long[]) {
                    sb.append(Arrays.toString((long[]) obj));
                } else if (obj instanceof float[]) {
                    sb.append(Arrays.toString((float[]) obj));
                } else if (obj instanceof double[]) {
                    sb.append(Arrays.toString((double[]) obj));
                } else if (obj instanceof String[]) {
                    sb.append(Arrays.toString((String[]) obj));
                } else if (obj instanceof CharSequence[]) {
                    sb.append(Arrays.toString((CharSequence[]) obj));
                } else if (obj instanceof Parcelable[]) {
                    sb.append(Arrays.toString((Parcelable[]) obj));
                } else if (obj instanceof Bundle) {
                    sb.append(bundleToString((Bundle) obj));
                } else {
                    sb.append(obj);
                }
                z = false;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String bytes2size(long j2) {
        if (j2 <= 0) {
            return ContentTree.ROOT_ID;
        }
        String[] strArr = {NBSSpanMetricUnit.Byte, NBSSpanMetricUnit.Kilobytes, NBSSpanMetricUnit.Megabytes, "GB", "TB", "PB", "EB"};
        double d = j2;
        int iLog10 = (int) (Math.log10(d) / Math.log10(1024.0d));
        return new DecimalFormat("#,##0.#").format(d / Math.pow(1024.0d, iLog10)) + " " + strArr[iLog10];
    }

    public static boolean copyToClipboard(Context context, String str) {
        ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("extra", str));
        return true;
    }

    public static Class<? extends Activity> extractActivityClassFromMetaData(Context context, String str) {
        Class<?> clsFindClassWithFallbacks;
        String packageName = context.getPackageName();
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(packageName, 128).metaData;
            if (bundle.containsKey(str) && (clsFindClassWithFallbacks = findClassWithFallbacks(bundle.getString(str), packageName)) != null && Activity.class.isAssignableFrom(clsFindClassWithFallbacks)) {
                return clsFindClassWithFallbacks.asSubclass(Activity.class);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Class<?> findClassWithFallbacks(String str, String str2) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            try {
                return Class.forName(d21.j(str2, str));
            } catch (ClassNotFoundException unused2) {
                try {
                    return Class.forName(tr.h(str2, FileUtils.HIDDEN_PREFIX, str));
                } catch (ClassNotFoundException unused3) {
                    return null;
                }
            }
        }
    }

    public static String getSimOrLocaleCountryCode(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return (telephonyManager != null ? telephonyManager.getSimState() : 0) == 5 ? telephonyManager.getSimCountryIso() : UtilsKt.getUserLocale(context).getCountry();
    }

    public static boolean isLaunchedFromRecents(Activity activity) {
        return (activity.getIntent().getFlags() & 1048576) != 0;
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    public static void printFeatures(Context context) {
        Feature[] featureArrValues = Feature.values();
        String[][] strArr = (String[][]) Array.newInstance((Class<?>) String.class, featureArrValues.length, 2);
        for (int i2 = 0; i2 < featureArrValues.length; i2++) {
            strArr[i2][0] = featureArrValues[i2].id();
            strArr[i2][1] = String.valueOf(featureArrValues[i2].isEnabled(context));
        }
    }

    public static void printVersion() {
        String[][] strArr = {new String[]{"Type", "release"}, new String[]{"Version", "7.10.2 Build 800120953 (120952)"}, new String[]{"Code", String.valueOf(BuildConfig.VERSION_CODE)}, new String[]{"Date", "2026-09-07 08:49:28 UTC"}, new String[]{"Git", "#84e19ba2"}};
        Logger.INSTANCE.i("Universal\n" + FlipTable.of(new String[]{"Universal", " © 2017 SightCall "}, strArr), null);
    }

    public static void promptHangup(Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.f(R.string.universal_call_hangup_confirm);
        builder.f810a.f798c = R.drawable.universal_icon_call_hangup;
        builder.setPositiveButton(R.string.universal_call_hangup_yes, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.util.Utils.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                Universal.scenario().interrupt();
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
            }
        }).setNegativeButton(R.string.universal_call_hangup_no, null).g();
    }

    public static void safeToast(Context context, int i2, CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        Toast.makeText(context, charSequence, i2).show();
    }

    public static void startLaunchIntent(Context context) {
        PackageManager packageManager = context.getPackageManager();
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage != null) {
            launchIntentForPackage.addFlags(268435456);
            if (launchIntentForPackage.resolveActivity(packageManager) != null) {
                context.startActivity(launchIntentForPackage);
            }
        }
    }

    public static Intent validateIntent(Context context, Intent intent) {
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            return intent;
        }
        Universal.logger().e("No Activity to resolve Intent " + intent.getAction());
        return null;
    }

    public static void safeToast(Context context, int i2, int i3, Object... objArr) {
        try {
            safeToast(context, i2, context.getString(i3, objArr));
        } catch (Exception unused) {
        }
    }

    public static void safeToast(Context context, int i2, int i3) {
        try {
            safeToast(context, i2, context.getText(i3));
        } catch (Exception unused) {
        }
    }
}
