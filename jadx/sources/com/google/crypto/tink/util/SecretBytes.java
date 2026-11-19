package com.google.crypto.tink.util;

import com.google.crypto.tink.SecretKeyAccess;
import com.google.errorprone.annotations.Immutable;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class SecretBytes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bytes f34324a;

    public SecretBytes(Bytes bytes) {
        this.f34324a = bytes;
    }

    public static SecretBytes a(byte[] bArr, SecretKeyAccess secretKeyAccess) {
        if (secretKeyAccess != null) {
            return new SecretBytes(Bytes.a(bArr));
        }
        r81.d("SecretKeyAccess required");
        return null;
    }
}
