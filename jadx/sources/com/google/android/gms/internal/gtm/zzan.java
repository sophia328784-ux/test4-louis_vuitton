package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzan {
    public static void a(Context context, String str) {
        zzbg.a();
        new RuntimeException(str);
        try {
            Preconditions.h(context);
        } catch (Exception unused) {
        }
        zzao.a(2);
    }

    public static void b(Throwable th, Context context) {
        zzbg.b();
        try {
            Preconditions.h(context);
        } catch (Exception unused) {
        }
        zzao.a(2);
    }

    public static void c(Context context, String str) {
        zzao.a(5);
        new RuntimeException(str);
        try {
            Preconditions.h(context);
        } catch (Exception unused) {
        }
        zzao.a(2);
    }
}
