package com.google.crypto.tink.subtle;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Random {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f34321a = new AnonymousClass1();

    /* JADX INFO: renamed from: com.google.crypto.tink.subtle.Random$1, reason: invalid class name */
    public class AnonymousClass1 extends ThreadLocal<SecureRandom> {
        @Override // java.lang.ThreadLocal
        public final SecureRandom initialValue() {
            ThreadLocal threadLocal = Random.f34321a;
            SecureRandom secureRandom = new SecureRandom();
            secureRandom.nextLong();
            return secureRandom;
        }
    }

    public static byte[] a(int i2) {
        byte[] bArr = new byte[i2];
        ((SecureRandom) f34321a.get()).nextBytes(bArr);
        return bArr;
    }
}
