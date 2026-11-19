package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import defpackage.r81;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class EncodedPayload {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Encoding f27970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f27971b;

    public EncodedPayload(Encoding encoding, byte[] bArr) {
        if (encoding == null) {
            r81.d("encoding is null");
            throw null;
        }
        if (bArr == null) {
            r81.d("bytes is null");
            throw null;
        }
        this.f27970a = encoding;
        this.f27971b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncodedPayload)) {
            return false;
        }
        EncodedPayload encodedPayload = (EncodedPayload) obj;
        if (this.f27970a.equals(encodedPayload.f27970a)) {
            return Arrays.equals(this.f27971b, encodedPayload.f27971b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f27971b) ^ ((this.f27970a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f27970a + ", bytes=[...]}";
    }
}
