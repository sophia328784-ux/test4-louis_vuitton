package com.google.crypto.tink.subtle;

import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.mac.internal.AesUtil;
import com.google.crypto.tink.prf.Prf;
import com.google.errorprone.annotations.Immutable;
import defpackage.md;
import defpackage.no0;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class PrfAesCmac implements Prf {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility d = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f34311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f34312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f34313c;

    public PrfAesCmac(byte[] bArr) throws GeneralSecurityException {
        Validators.a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f34311a = secretKeySpec;
        if (!d.a()) {
            v40.j("Can not use AES-CMAC in FIPS-mode.");
            throw null;
        }
        Cipher cipher = (Cipher) EngineFactory.f34305b.f34307a.a("AES/ECB/NoPadding");
        cipher.init(1, secretKeySpec);
        byte[] bArrA = AesUtil.a(cipher.doFinal(new byte[16]));
        this.f34312b = bArrA;
        this.f34313c = AesUtil.a(bArrA);
    }

    @Override // com.google.crypto.tink.prf.Prf
    public final byte[] a(int i2, byte[] bArr) {
        byte[] bArrD;
        if (i2 > 16) {
            no0.o("outputLength too large, max is 16 bytes");
            return null;
        }
        if (!d.a()) {
            v40.j("Can not use AES-CMAC in FIPS-mode.");
            return null;
        }
        Cipher cipher = (Cipher) EngineFactory.f34305b.f34307a.a("AES/ECB/NoPadding");
        cipher.init(1, this.f34311a);
        int iMax = Math.max(1, (int) Math.ceil(((double) bArr.length) / 16.0d));
        if (iMax * 16 == bArr.length) {
            bArrD = Bytes.c((iMax - 1) * 16, bArr, 0, this.f34312b, 16);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (iMax - 1) * 16, bArr.length);
            if (bArrCopyOfRange.length >= 16) {
                md.n("x must be smaller than a block.");
                return null;
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[bArrCopyOfRange.length] = -128;
            bArrD = Bytes.d(bArrCopyOf, this.f34313c);
        }
        byte[] bArrDoFinal = new byte[16];
        for (int i3 = 0; i3 < iMax - 1; i3++) {
            bArrDoFinal = cipher.doFinal(Bytes.c(0, bArrDoFinal, i3 * 16, bArr, 16));
        }
        return Arrays.copyOf(cipher.doFinal(Bytes.d(bArrD, bArrDoFinal)), i2);
    }
}
