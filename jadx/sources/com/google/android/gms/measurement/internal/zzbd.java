package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
final class zzbd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f31594c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f31595e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f31596f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Long f31597h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Long f31598i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Long f31599j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Boolean f31600k;

    public zzbd(String str, String str2, long j2, long j3, long j4, long j5, long j6, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.e(str);
        Preconditions.e(str2);
        Preconditions.a(j2 >= 0);
        Preconditions.a(j3 >= 0);
        Preconditions.a(j4 >= 0);
        Preconditions.a(j6 >= 0);
        this.f31592a = str;
        this.f31593b = str2;
        this.f31594c = j2;
        this.d = j3;
        this.f31595e = j4;
        this.f31596f = j5;
        this.g = j6;
        this.f31597h = l;
        this.f31598i = l2;
        this.f31599j = l3;
        this.f31600k = bool;
    }

    public final zzbd a(long j2) {
        return new zzbd(this.f31592a, this.f31593b, this.f31594c, this.d, this.f31595e, j2, this.g, this.f31597h, this.f31598i, this.f31599j, this.f31600k);
    }

    public final zzbd b(Long l, Long l2, Boolean bool) {
        return new zzbd(this.f31592a, this.f31593b, this.f31594c, this.d, this.f31595e, this.f31596f, this.g, this.f31597h, l, l2, bool);
    }
}
