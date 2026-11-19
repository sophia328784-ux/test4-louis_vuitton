package com.google.android.gms.internal.fido;

import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;
import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
final class zzbn extends zzbl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PublicKeyCredentialParameters f29839b;

    public zzbn(PublicKeyCredentialParameters publicKeyCredentialParameters) {
        this.f29839b = publicKeyCredentialParameters;
    }

    @Override // com.google.android.gms.internal.fido.zzbl
    public final Object a() {
        return this.f29839b;
    }

    @Override // com.google.android.gms.internal.fido.zzbl
    public final boolean b() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbn) {
            return this.f29839b.equals(((zzbn) obj).f29839b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f29839b.hashCode() + 1502476572;
    }

    public final String toString() {
        return fc.h("Optional.of(", this.f29839b.toString(), ")");
    }
}
