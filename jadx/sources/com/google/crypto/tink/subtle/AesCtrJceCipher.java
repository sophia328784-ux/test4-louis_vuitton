package com.google.crypto.tink.subtle;

import com.google.crypto.tink.config.internal.TinkFipsUtil;
import defpackage.bm;
import defpackage.v40;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class AesCtrJceCipher implements IndCpaCipher {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility d = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ThreadLocal f34272e = new AnonymousClass1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f34273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34275c;

    /* JADX INFO: renamed from: com.google.crypto.tink.subtle.AesCtrJceCipher$1, reason: invalid class name */
    public class AnonymousClass1 extends ThreadLocal<Cipher> {
        @Override // java.lang.ThreadLocal
        public final Cipher initialValue() {
            try {
                return (Cipher) EngineFactory.f34305b.f34307a.a("AES/CTR/NoPadding");
            } catch (GeneralSecurityException e2) {
                bm.i(e2);
                return null;
            }
        }
    }

    public AesCtrJceCipher(byte[] bArr, int i2) throws GeneralSecurityException {
        if (!d.a()) {
            v40.j("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        Validators.a(bArr.length);
        this.f34273a = new SecretKeySpec(bArr, "AES");
        int blockSize = ((Cipher) f34272e.get()).getBlockSize();
        this.f34275c = blockSize;
        if (i2 < 12 || i2 > blockSize) {
            v40.j("invalid IV size");
            throw null;
        }
        this.f34274b = i2;
    }

    @Override // com.google.crypto.tink.subtle.IndCpaCipher
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i2 = this.f34274b;
        if (length < i2) {
            v40.j("ciphertext too short");
            return null;
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        int length2 = bArr.length;
        int i3 = this.f34274b;
        byte[] bArr3 = new byte[length2 - i3];
        b(false, bArr, bArr3, i3, bArr.length - i3, bArr2, 0);
        return bArr3;
    }

    public final void b(boolean z, byte[] bArr, byte[] bArr2, int i2, int i3, byte[] bArr3, int i4) throws GeneralSecurityException {
        Cipher cipher = (Cipher) f34272e.get();
        byte[] bArr4 = new byte[this.f34275c];
        System.arraycopy(bArr3, 0, bArr4, 0, this.f34274b);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr4);
        SecretKeySpec secretKeySpec = this.f34273a;
        if (z) {
            cipher.init(1, secretKeySpec, ivParameterSpec);
        } else {
            cipher.init(2, secretKeySpec, ivParameterSpec);
        }
        if (cipher.doFinal(bArr, i2, i3, bArr2, i4) == i3) {
            return;
        }
        v40.j("stored output's length does not match input's length");
    }

    @Override // com.google.crypto.tink.subtle.IndCpaCipher
    public final byte[] encrypt(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i2 = this.f34274b;
        if (length > Integer.MAX_VALUE - i2) {
            throw new GeneralSecurityException("plaintext length can not exceed " + (Integer.MAX_VALUE - i2));
        }
        byte[] bArr2 = new byte[bArr.length + i2];
        byte[] bArrA = Random.a(i2);
        System.arraycopy(bArrA, 0, bArr2, 0, i2);
        b(true, bArr, bArr2, 0, bArr.length, bArrA, this.f34274b);
        return bArr2;
    }
}
