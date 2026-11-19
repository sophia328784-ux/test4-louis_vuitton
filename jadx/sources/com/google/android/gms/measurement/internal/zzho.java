package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzho implements com.google.android.gms.internal.measurement.zzo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f31820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzht f31821b;

    public zzho(zzht zzhtVar, String str) {
        this.f31820a = str;
        Objects.requireNonNull(zzhtVar);
        this.f31821b = zzhtVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzo
    public final String a(String str) {
        Map map = (Map) this.f31821b.d.get(this.f31820a);
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return (String) map.get(str);
    }
}
