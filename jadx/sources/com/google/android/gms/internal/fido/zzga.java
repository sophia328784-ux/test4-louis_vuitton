package com.google.android.gms.internal.fido;

import defpackage.md;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
final class zzga extends zzfq implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MessageDigest f29880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29881c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f29882e;

    public zzga() {
        boolean z;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            this.f29880b = messageDigest;
            this.f29881c = messageDigest.getDigestLength();
            this.f29882e = "Hashing.sha256()";
            try {
                messageDigest.clone();
                z = true;
            } catch (CloneNotSupportedException unused) {
                z = false;
            }
            this.d = z;
        } catch (NoSuchAlgorithmException e2) {
            md.h(e2);
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.fido.zzfu
    public final zzfv d0() {
        boolean z = this.d;
        int i2 = this.f29881c;
        MessageDigest messageDigest = this.f29880b;
        if (z) {
            try {
                return new zzfz((MessageDigest) messageDigest.clone(), i2);
            } catch (CloneNotSupportedException unused) {
            }
        }
        try {
            return new zzfz(MessageDigest.getInstance(messageDigest.getAlgorithm()), i2);
        } catch (NoSuchAlgorithmException e2) {
            md.h(e2);
            return null;
        }
    }

    public final String toString() {
        return this.f29882e;
    }
}
