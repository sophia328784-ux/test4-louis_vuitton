package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes2.dex */
final class zzog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Clock f31941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f31942b;

    public zzog(Clock clock) {
        Preconditions.h(clock);
        this.f31941a = clock;
    }
}
