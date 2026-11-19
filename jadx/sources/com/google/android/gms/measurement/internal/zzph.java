package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzph {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f31989a;

    public zzph(Context context) {
        Preconditions.h(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.h(applicationContext);
        this.f31989a = applicationContext;
    }
}
