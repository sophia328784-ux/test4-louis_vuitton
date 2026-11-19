package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public final class zzam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Random f29954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29955c;

    public zzam(Context context, String str) {
        Random random = new Random();
        Preconditions.h(context);
        this.f29953a = context;
        Preconditions.h(str);
        this.f29955c = str;
        this.f29954b = random;
    }

    public final long a(long j2, long j3) {
        SharedPreferences sharedPreferencesB = b();
        long jMax = Math.max(0L, sharedPreferencesB.getLong("FORBIDDEN_COUNT", 0L));
        return (long) (this.f29954b.nextFloat() * (j2 + ((long) ((jMax / ((jMax + Math.max(0L, sharedPreferencesB.getLong("SUCCESSFUL_COUNT", 0L))) + 1)) * (j3 - j2)))));
    }

    public final SharedPreferences b() {
        return this.f29953a.getSharedPreferences("v5_gtmContainerRefreshPolicy_".concat(String.valueOf(this.f29955c)), 0);
    }
}
