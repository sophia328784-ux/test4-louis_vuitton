package com.batch.android.e;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f23146a = 9000000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f23147b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Integer f23148c;

    public static String a(Integer num) {
        if (num == null) {
            return "GOOGLE_PLAY_LIBRARY_MISSING";
        }
        int iIntValue = num.intValue();
        if (iIntValue == 18) {
            return "SERVICE_UPDATING";
        }
        if (iIntValue == 19) {
            return "SERVICE_MISSING_PERMISSION";
        }
        if (iIntValue == 0) {
            return "SUCCESS";
        }
        if (iIntValue == 1) {
            return "SERVICE_MISSING";
        }
        if (iIntValue == 2) {
            return "SERVICE_VERSION_UPDATE_REQUIRED";
        }
        if (iIntValue == 3) {
            return "SERVICE_DISABLED";
        }
        return "UNKNOWN - Code: " + num;
    }

    public static Integer b(Context context) {
        Integer numA = a();
        if (numA == null || numA.intValue() < f23146a) {
            return null;
        }
        return a(context);
    }

    public static Integer a(Context context) {
        try {
            int i2 = GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE;
            return (Integer) GooglePlayServicesUtil.class.getMethod("isGooglePlayServicesAvailable", Context.class).invoke(null, context);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Exception e2) {
            t.a(com.batch.android.v0.j.m, "Error while retrieving Google Play Services lib availability", e2);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0022 A[ExcHandler: Exception -> 0x0022] */
    public static Integer a() {
        if (f23147b) {
            return f23148c;
        }
        try {
            Object obj = GoogleApiAvailability.d;
            Integer numValueOf = Integer.valueOf(GoogleApiAvailability.class.getField("GOOGLE_PLAY_SERVICES_VERSION_CODE").getInt(null));
            f23148c = numValueOf;
            return numValueOf;
        } catch (Exception e2) {
            t.a(com.batch.android.v0.j.m, "Error while retrieving Google Play Services lib version", e2);
            return null;
        } catch (ClassNotFoundException unused) {
            return null;
        } finally {
            f23147b = true;
        }
    }
}
