package com.google.android.gms.auth.api.signin;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.dynamite.DynamiteModule;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class GoogleSignInClient extends GoogleApi<GoogleSignInOptions> {
    public static int l = 1;

    public final synchronized int j() {
        int i2;
        try {
            i2 = l;
            if (i2 == 1) {
                Context context = this.f28985a;
                GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f28961e;
                int iB = googleApiAvailability.b(context, 12451000);
                if (iB == 0) {
                    i2 = 4;
                    l = 4;
                } else if (googleApiAvailability.a(context, iB, null) != null || DynamiteModule.a(context, "com.google.android.gms.auth.api.fallback") == 0) {
                    i2 = 2;
                    l = 2;
                } else {
                    i2 = 3;
                    l = 3;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return i2;
    }
}
