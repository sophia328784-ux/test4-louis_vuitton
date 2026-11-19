package com.google.crypto.tink.subtle;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.aead.internal.InsecureNonceAesGcmJce;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import defpackage.n00;
import defpackage.v40;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes2.dex */
public final class AesGcmJce implements Aead {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TinkFipsUtil.AlgorithmFipsCompatibility f34281b = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InsecureNonceAesGcmJce f34282a;

    public AesGcmJce(byte[] bArr) throws GeneralSecurityException {
        if (f34281b.a()) {
            this.f34282a = new InsecureNonceAesGcmJce(bArr, true);
        } else {
            v40.j("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
    }

    @Override // com.google.crypto.tink.Aead
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrA = Random.a(12);
        InsecureNonceAesGcmJce insecureNonceAesGcmJce = this.f34282a;
        boolean z = insecureNonceAesGcmJce.f33952b;
        if (bArrA.length != 12) {
            v40.j("iv is wrong size");
            return null;
        }
        if (bArr.length > 2147483619) {
            v40.j("plaintext too long");
            return null;
        }
        byte[] bArr3 = new byte[z ? bArr.length + 28 : bArr.length + 16];
        if (z) {
            System.arraycopy(bArrA, 0, bArr3, 0, 12);
        }
        AlgorithmParameterSpec algorithmParameterSpecA = InsecureNonceAesGcmJce.a(bArrA);
        ThreadLocal threadLocal = InsecureNonceAesGcmJce.d;
        ((Cipher) threadLocal.get()).init(1, insecureNonceAesGcmJce.f33951a, algorithmParameterSpecA);
        if (bArr2 != null && bArr2.length != 0) {
            ((Cipher) threadLocal.get()).updateAAD(bArr2);
        }
        int iDoFinal = ((Cipher) threadLocal.get()).doFinal(bArr, 0, bArr.length, bArr3, z ? 12 : 0);
        if (iDoFinal == bArr.length + 16) {
            return bArr3;
        }
        throw new GeneralSecurityException(n00.m(iDoFinal - bArr.length, "encryption failed; GCM tag must be 16 bytes, but got only ", " bytes"));
    }

    @Override // com.google.crypto.tink.Aead
    public final byte[] decrypt(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrCopyOf = Arrays.copyOf(bArr, 12);
        InsecureNonceAesGcmJce insecureNonceAesGcmJce = this.f34282a;
        boolean z = insecureNonceAesGcmJce.f33952b;
        if (bArrCopyOf.length != 12) {
            v40.j("iv is wrong size");
            return null;
        }
        if (bArr.length < (z ? 28 : 16)) {
            v40.j("ciphertext too short");
            return null;
        }
        if (z && !ByteBuffer.wrap(bArrCopyOf).equals(ByteBuffer.wrap(bArr, 0, 12))) {
            v40.j("iv does not match prepended iv");
            return null;
        }
        AlgorithmParameterSpec algorithmParameterSpecA = InsecureNonceAesGcmJce.a(bArrCopyOf);
        ThreadLocal threadLocal = InsecureNonceAesGcmJce.d;
        ((Cipher) threadLocal.get()).init(2, insecureNonceAesGcmJce.f33951a, algorithmParameterSpecA);
        if (bArr2 != null && bArr2.length != 0) {
            ((Cipher) threadLocal.get()).updateAAD(bArr2);
        }
        int i2 = z ? 12 : 0;
        int length = bArr.length;
        if (z) {
            length -= 12;
        }
        return ((Cipher) threadLocal.get()).doFinal(bArr, i2, length);
    }
}
