package com.google.android.gms.internal.fido;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzfp extends zzfr {
    @Override // com.google.android.gms.internal.fido.zzfv
    public final zzfv a(byte[] bArr) {
        bArr.getClass();
        int length = bArr.length;
        zzfz zzfzVar = (zzfz) this;
        if (zzfzVar.f29879c) {
            md.k("Cannot re-use a Hasher after calling hash() on it");
            return null;
        }
        zzfzVar.f29877a.update(bArr, 0, length);
        return this;
    }
}
