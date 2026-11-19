package com.google.crypto.tink.util;

import com.google.crypto.tink.subtle.Hex;
import com.google.errorprone.annotations.Immutable;
import defpackage.r81;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class Bytes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f34323a;

    public Bytes(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f34323a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    public static Bytes a(byte[] bArr) {
        if (bArr != null) {
            return new Bytes(bArr, bArr.length);
        }
        r81.d("data must be non-null");
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Bytes) {
            return Arrays.equals(((Bytes) obj).f34323a, this.f34323a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f34323a);
    }

    public final String toString() {
        return "Bytes(" + Hex.b(this.f34323a) + ")";
    }
}
