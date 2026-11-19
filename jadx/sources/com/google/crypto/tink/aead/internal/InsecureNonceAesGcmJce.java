package com.google.crypto.tink.aead.internal;

import android.os.Build;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.subtle.EngineFactory;
import com.google.crypto.tink.subtle.Validators;
import defpackage.bm;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class InsecureNonceAesGcmJce {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TinkFipsUtil.AlgorithmFipsCompatibility f33950c = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    public static final ThreadLocal d = new AnonymousClass1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f33951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f33952b;

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.internal.InsecureNonceAesGcmJce$1, reason: invalid class name */
    public class AnonymousClass1 extends ThreadLocal<Cipher> {
        @Override // java.lang.ThreadLocal
        public final Cipher initialValue() {
            try {
                return (Cipher) EngineFactory.f34305b.a("AES/GCM/NoPadding");
            } catch (GeneralSecurityException e2) {
                bm.i(e2);
                return null;
            }
        }
    }

    public InsecureNonceAesGcmJce(byte[] bArr, boolean z) throws GeneralSecurityException {
        if (!f33950c.a()) {
            v40.j("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        Validators.a(bArr.length);
        this.f33951a = new SecretKeySpec(bArr, "AES");
        this.f33952b = z;
    }

    public static AlgorithmParameterSpec a(byte[] bArr) {
        int length = bArr.length;
        if ("The Android Project".equals(System.getProperty("java.vendor"))) {
            int i2 = Util.f34032a;
            Integer numValueOf = !Objects.equals(System.getProperty("java.vendor"), "The Android Project") ? null : Integer.valueOf(Build.VERSION.SDK_INT);
            if ((numValueOf != null ? numValueOf.intValue() : -1) <= 19) {
                return new IvParameterSpec(bArr, 0, length);
            }
        }
        return new GCMParameterSpec(128, bArr, 0, length);
    }
}
