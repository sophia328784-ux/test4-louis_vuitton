package com.batch.android.e;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import defpackage.r81;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class o {
    public static String a(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("md5");
        messageDigest.update(str.getBytes());
        byte[] bArrDigest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArrDigest) {
            sb.append(String.format("%02X", Byte.valueOf(b2)));
        }
        return sb.toString().toLowerCase(Locale.US);
    }

    public static float b(int i2, Context context) {
        if (context != null) {
            return i2 == 0 ? i2 : i2 / (context.getResources().getDisplayMetrics().densityDpi / 160.0f);
        }
        r81.d("Null context");
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static boolean c(Context context) {
        try {
            return a("android.permission.WAKE_LOCK", context);
        } catch (Exception e2) {
            t.a("Error while checking android.permission.WAKE_LOCK permission", e2);
            return false;
        }
    }

    public static boolean b(Context context) {
        try {
            return context.getApplicationContext().getApplicationInfo().targetSdkVersion < 33;
        } catch (Exception e2) {
            t.a("Could not check current target API level", e2);
            return true;
        }
    }

    public static String a(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(bArr);
        StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
        for (byte b2 : bArrDigest) {
            int i2 = b2 & 255;
            if (i2 < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i2));
        }
        return sb.toString();
    }

    public static boolean a(String str, Context context) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static Float a(Context context) {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return Float.valueOf(displayMetrics.density);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int a(int i2, Context context) {
        if (context != null) {
            return i2 == 0 ? i2 : Math.round(i2 * context.getResources().getDisplayMetrics().density);
        }
        r81.d("Null context");
        return 0;
    }
}
