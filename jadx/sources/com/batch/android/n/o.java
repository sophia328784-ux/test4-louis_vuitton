package com.batch.android.n;

import android.content.Context;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f23764a = new o();

    private o() {
    }

    @JvmStatic
    public static final com.batch.android.d.a a(Context context) {
        context.getClass();
        com.batch.android.d.a aVar = (com.batch.android.d.a) com.batch.android.m.a.b().a(com.batch.android.d.a.class);
        if (aVar != null) {
            return aVar;
        }
        com.batch.android.d.a aVar2 = new com.batch.android.d.a(context);
        com.batch.android.m.a.b().a(com.batch.android.d.a.class, aVar2);
        return aVar2;
    }

    @JvmStatic
    public static final com.batch.android.d.a a() {
        return (com.batch.android.d.a) com.batch.android.m.a.b().a(com.batch.android.d.a.class);
    }
}
