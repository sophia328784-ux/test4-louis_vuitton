package com.google.crypto.tink.subtle;

import com.google.crypto.tink.Mac;
import com.google.crypto.tink.prf.Prf;
import com.google.errorprone.annotations.Immutable;
import defpackage.no0;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public class PrfMac implements Mac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Prf f34319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34320b;

    public PrfMac(Prf prf, int i2) throws GeneralSecurityException {
        this.f34319a = prf;
        this.f34320b = i2;
        if (i2 >= 10) {
            prf.a(i2, new byte[0]);
        } else {
            no0.o("tag size too small, need at least 10 bytes");
            throw null;
        }
    }

    @Override // com.google.crypto.tink.Mac
    public final void a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (MessageDigest.isEqual(b(bArr2), bArr)) {
            return;
        }
        v40.j("invalid MAC");
    }

    @Override // com.google.crypto.tink.Mac
    public final byte[] b(byte[] bArr) {
        return this.f34319a.a(this.f34320b, bArr);
    }
}
