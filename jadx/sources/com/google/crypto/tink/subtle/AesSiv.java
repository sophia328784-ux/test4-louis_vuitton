package com.google.crypto.tink.subtle;

import com.google.crypto.tink.DeterministicAead;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.mac.internal.AesUtil;
import defpackage.a;
import defpackage.md;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.List;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class AesSiv implements DeterministicAead {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TinkFipsUtil.AlgorithmFipsCompatibility f34283c = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    public static final List d = Arrays.asList(64);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f34284e = new byte[16];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f34285f = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PrfAesCmac f34286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f34287b;

    public AesSiv(byte[] bArr) throws GeneralSecurityException {
        if (!f34283c.a()) {
            v40.j("Can not use AES-SIV in FIPS-mode.");
            throw null;
        }
        if (!d.contains(Integer.valueOf(bArr.length))) {
            throw new InvalidKeyException(a.i(bArr.length, " bytes; key must have 64 bytes", new StringBuilder("invalid key size: ")));
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, bArr.length / 2);
        this.f34287b = Arrays.copyOfRange(bArr, bArr.length / 2, bArr.length);
        this.f34286a = new PrfAesCmac(bArrCopyOfRange);
    }

    @Override // com.google.crypto.tink.DeterministicAead
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 2147483631) {
            v40.j("plaintext too long");
            return null;
        }
        Cipher cipher = (Cipher) EngineFactory.f34305b.f34307a.a("AES/CTR/NoPadding");
        byte[] bArrC = c(bArr2, bArr);
        byte[] bArr3 = (byte[]) bArrC.clone();
        bArr3[8] = (byte) (bArr3[8] & 127);
        bArr3[12] = (byte) (bArr3[12] & 127);
        cipher.init(1, new SecretKeySpec(this.f34287b, "AES"), new IvParameterSpec(bArr3));
        return Bytes.a(bArrC, cipher.doFinal(bArr));
    }

    @Override // com.google.crypto.tink.DeterministicAead
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length < 16) {
            v40.j("Ciphertext too short.");
            return null;
        }
        Cipher cipher = (Cipher) EngineFactory.f34305b.f34307a.a("AES/CTR/NoPadding");
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 16);
        byte[] bArr3 = (byte[]) bArrCopyOfRange.clone();
        bArr3[8] = (byte) (bArr3[8] & 127);
        bArr3[12] = (byte) (bArr3[12] & 127);
        cipher.init(2, new SecretKeySpec(this.f34287b, "AES"), new IvParameterSpec(bArr3));
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 16, bArr.length);
        byte[] bArrDoFinal = cipher.doFinal(bArrCopyOfRange2);
        if (bArrCopyOfRange2.length == 0 && bArrDoFinal == null && "The Android Project".equals(System.getProperty("java.vendor"))) {
            bArrDoFinal = new byte[0];
        }
        if (MessageDigest.isEqual(bArrCopyOfRange, c(bArr2, bArrDoFinal))) {
            return bArrDoFinal;
        }
        throw new AEADBadTagException("Integrity check failed.");
    }

    public final byte[] c(byte[]... bArr) {
        byte[] bArrD;
        int length = bArr.length;
        PrfAesCmac prfAesCmac = this.f34286a;
        if (length == 0) {
            return prfAesCmac.a(16, f34285f);
        }
        byte[] bArrA = prfAesCmac.a(16, f34284e);
        for (int i2 = 0; i2 < bArr.length - 1; i2++) {
            byte[] bArr2 = bArr[i2];
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            bArrA = Bytes.d(AesUtil.a(bArrA), prfAesCmac.a(16, bArr2));
        }
        byte[] bArr3 = bArr[bArr.length - 1];
        if (bArr3.length >= 16) {
            if (bArr3.length < bArrA.length) {
                md.n("xorEnd requires a.length >= b.length");
                return null;
            }
            int length2 = bArr3.length - bArrA.length;
            bArrD = Arrays.copyOf(bArr3, bArr3.length);
            for (int i3 = 0; i3 < bArrA.length; i3++) {
                int i4 = length2 + i3;
                bArrD[i4] = (byte) (bArrD[i4] ^ bArrA[i3]);
            }
        } else {
            if (bArr3.length >= 16) {
                md.n("x must be smaller than a block.");
                return null;
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArr3, 16);
            bArrCopyOf[bArr3.length] = -128;
            bArrD = Bytes.d(bArrCopyOf, AesUtil.a(bArrA));
        }
        return prfAesCmac.a(16, bArrD);
    }
}
