package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import defpackage.cj;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f31776c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bundle f31777e;

    public zzgv(String str, String str2, Bundle bundle, long j2, long j3) {
        this.f31774a = str;
        this.f31775b = str2;
        this.f31777e = bundle;
        this.f31776c = j2;
        this.d = j3;
    }

    public static zzgv a(zzbh zzbhVar) {
        return new zzgv(zzbhVar.f31603b, zzbhVar.d, zzbhVar.f31604c.Z1(), zzbhVar.f31605e, zzbhVar.f31606f);
    }

    public final zzbh b() {
        zzbf zzbfVar = new zzbf(new Bundle(this.f31777e));
        return new zzbh(this.f31774a, zzbfVar, this.f31775b, this.f31776c, this.d);
    }

    public final String toString() {
        String string = this.f31777e.toString();
        String str = this.f31775b;
        int length = String.valueOf(str).length();
        String str2 = this.f31774a;
        StringBuilder sb = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + string.length());
        cj.C(sb, "origin=", str, ",name=", str2);
        return n00.r(",params=", string, sb);
    }
}
