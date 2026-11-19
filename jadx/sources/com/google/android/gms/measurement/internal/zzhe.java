package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f31799c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhh f31800e;

    public zzhe(zzhh zzhhVar, String str, long j2) {
        Objects.requireNonNull(zzhhVar);
        this.f31800e = zzhhVar;
        Preconditions.e(str);
        this.f31797a = str;
        this.f31798b = j2;
    }

    public final long a() {
        if (!this.f31799c) {
            this.f31799c = true;
            this.d = this.f31800e.k().getLong(this.f31797a, this.f31798b);
        }
        return this.d;
    }

    public final void b(long j2) {
        SharedPreferences.Editor editorEdit = this.f31800e.k().edit();
        editorEdit.putLong(this.f31797a, j2);
        editorEdit.apply();
        this.d = j2;
    }
}
