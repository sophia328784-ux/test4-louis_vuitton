package com.google.android.gms.internal.measurement;

import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaaq implements zzaai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Level f30316a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f30317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzzq f30318c;

    public zzaaq(Level level, Set set, zzzq zzzqVar) {
        this.f30316a = level;
        this.f30317b = set;
        this.f30318c = zzzqVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaai
    public final zzzf a(String str) {
        return new zzaas(str, this.f30316a, this.f30317b, this.f30318c);
    }
}
