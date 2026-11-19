package com.google.crypto.tink.aead.subtle;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.subtle.EngineFactory;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import defpackage.bm;
import defpackage.n00;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class AesGcmSiv implements Aead {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f33958b = new AnonymousClass1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f33959a;

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.subtle.AesGcmSiv$1, reason: invalid class name */
    public class AnonymousClass1 extends ThreadLocal<Cipher> {
        @Override // java.lang.ThreadLocal
        public final Cipher initialValue() {
            try {
                return (Cipher) EngineFactory.f34305b.a("AES/GCM-SIV/NoPadding");
            } catch (GeneralSecurityException e2) {
                bm.i(e2);
                return null;
            }
        }
    }

    public AesGcmSiv(byte[] bArr) throws GeneralSecurityException {
        Validators.a(bArr.length);
        this.f33959a = new SecretKeySpec(bArr, "AES");
    }

    public static AlgorithmParameterSpec b(int i2, byte[] bArr) throws GeneralSecurityException {
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            return new GCMParameterSpec(128, bArr, 0, i2);
        } catch (ClassNotFoundException unused) {
            if ("The Android Project".equals(System.getProperty("java.vendor"))) {
                return new IvParameterSpec(bArr, 0, i2);
            }
            v40.j("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
            return null;
        }
    }

    @Override // com.google.crypto.tink.Aead
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 2147483619) {
            v40.j("plaintext too long");
            return null;
        }
        byte[] bArr3 = new byte[bArr.length + 28];
        byte[] bArrA = Random.a(12);
        System.arraycopy(bArrA, 0, bArr3, 0, 12);
        AlgorithmParameterSpec algorithmParameterSpecB = b(bArrA.length, bArrA);
        ThreadLocal threadLocal = f33958b;
        ((Cipher) threadLocal.get()).init(1, this.f33959a, algorithmParameterSpecB);
        if (bArr2 != null && bArr2.length != 0) {
            ((Cipher) threadLocal.get()).updateAAD(bArr2);
        }
        int iDoFinal = ((Cipher) threadLocal.get()).doFinal(bArr, 0, bArr.length, bArr3, 12);
        if (iDoFinal == bArr.length + 16) {
            return bArr3;
        }
        throw new GeneralSecurityException(n00.m(iDoFinal - bArr.length, "encryption failed; GCM tag must be 16 bytes, but got only ", " bytes"));
    }

    @Override // com.google.crypto.tink.Aead
    public final byte[] decrypt(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length < 28) {
            v40.j("ciphertext too short");
            return null;
        }
        AlgorithmParameterSpec algorithmParameterSpecB = b(12, bArr);
        ThreadLocal threadLocal = f33958b;
        ((Cipher) threadLocal.get()).init(2, this.f33959a, algorithmParameterSpecB);
        if (bArr2 != null && bArr2.length != 0) {
            ((Cipher) threadLocal.get()).updateAAD(bArr2);
        }
        return ((Cipher) threadLocal.get()).doFinal(bArr, 12, bArr.length - 12);
    }
}
