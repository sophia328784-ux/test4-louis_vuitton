package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zza f31818a;

    public interface zza {
        void a(Context context, Intent intent);
    }

    public zzhl(zza zzaVar) {
        Preconditions.h(zzaVar);
        this.f31818a = zzaVar;
    }
}
