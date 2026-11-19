package com.google.android.gms.internal.fido;

import defpackage.md;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class zzfz extends zzfp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MessageDigest f29877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f29879c;

    public zzfz(MessageDigest messageDigest, int i2) {
        ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
        this.f29877a = messageDigest;
        this.f29878b = i2;
    }

    @Override // com.google.android.gms.internal.fido.zzfv
    public final zzft f0() {
        if (this.f29879c) {
            md.k("Cannot re-use a Hasher after calling hash() on it");
            return null;
        }
        this.f29879c = true;
        MessageDigest messageDigest = this.f29877a;
        int digestLength = messageDigest.getDigestLength();
        int i2 = this.f29878b;
        return i2 == digestLength ? new zzfs(messageDigest.digest()) : new zzfs(Arrays.copyOf(messageDigest.digest(), i2));
    }
}
