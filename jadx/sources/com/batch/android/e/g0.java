package com.batch.android.e;

import com.batch.android.json.JSONObject;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23098a = "ResponseHelper";

    public static JSONObject a(byte[] bArr) {
        if (bArr == null) {
            r81.d("Null content");
            return null;
        }
        try {
            return new JSONObject(b(bArr));
        } catch (Exception e2) {
            t.c(f23098a, "Error while casting response to json", e2);
            return null;
        }
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            r81.d("Null content");
            return null;
        }
        try {
            return b.c(bArr);
        } catch (Exception e2) {
            t.c(f23098a, "Error while casting response to string", e2);
            return null;
        }
    }
}
