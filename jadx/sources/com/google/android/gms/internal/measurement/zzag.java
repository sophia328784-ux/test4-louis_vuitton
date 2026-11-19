package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzag implements zzao {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzao f30468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30469c;

    public zzag() {
        this.f30468b = zzao.k0;
        this.f30469c = "return";
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator I() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao Q() {
        return new zzag(this.f30469c, this.f30468b.Q());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzag)) {
            return false;
        }
        zzag zzagVar = (zzag) obj;
        return this.f30469c.equals(zzagVar.f30469c) && this.f30468b.equals(zzagVar.f30468b);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String f0() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double g0() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao h(String str, zzg zzgVar, ArrayList arrayList) {
        throw new IllegalStateException("Control does not have functions");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean h0() {
        throw new IllegalStateException("Control is not a boolean");
    }

    public final int hashCode() {
        return this.f30468b.hashCode() + (this.f30469c.hashCode() * 31);
    }

    public zzag(String str) {
        this.f30468b = zzao.k0;
        this.f30469c = str;
    }

    public zzag(String str, zzao zzaoVar) {
        this.f30468b = zzaoVar;
        this.f30469c = str;
    }
}
