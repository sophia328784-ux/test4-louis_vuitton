package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f31803c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhh f31804e;

    public /* synthetic */ zzhf(zzhh zzhhVar, long j2) {
        this.f31804e = zzhhVar;
        Preconditions.e("health_monitor");
        Preconditions.a(j2 > 0);
        this.f31801a = "health_monitor:start";
        this.f31802b = "health_monitor:count";
        this.f31803c = "health_monitor:value";
        this.d = j2;
    }

    public final void a() {
        zzhh zzhhVar = this.f31804e;
        zzhhVar.g();
        zzhhVar.f31850a.f31846k.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = zzhhVar.k().edit();
        editorEdit.remove(this.f31802b);
        editorEdit.remove(this.f31803c);
        editorEdit.putLong(this.f31801a, jCurrentTimeMillis);
        editorEdit.apply();
    }
}
