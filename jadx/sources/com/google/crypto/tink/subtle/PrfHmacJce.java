package com.google.crypto.tink.subtle;

import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.prf.Prf;
import com.google.errorprone.annotations.Immutable;
import defpackage.bm;
import defpackage.no0;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class PrfHmacJce implements Prf {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final TinkFipsUtil.AlgorithmFipsCompatibility f34314e = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadLocal f34315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Key f34317c;
    public final int d;

    public PrfHmacJce(String str, Key key) throws GeneralSecurityException {
        ThreadLocal<Mac> threadLocal = new ThreadLocal<Mac>() { // from class: com.google.crypto.tink.subtle.PrfHmacJce.1
            @Override // java.lang.ThreadLocal
            public final Mac initialValue() {
                PrfHmacJce prfHmacJce = PrfHmacJce.this;
                try {
                    EngineFactory engineFactory = EngineFactory.f34306c;
                    Mac mac = (Mac) engineFactory.f34307a.a(prfHmacJce.f34316b);
                    mac.init(prfHmacJce.f34317c);
                    return mac;
                } catch (GeneralSecurityException e2) {
                    bm.i(e2);
                    return null;
                }
            }
        };
        this.f34315a = threadLocal;
        if (!f34314e.a()) {
            v40.j("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        this.f34316b = str;
        this.f34317c = key;
        if (key.getEncoded().length < 16) {
            no0.o("key size too small, need at least 16 bytes");
            throw null;
        }
        str.getClass();
        switch (str) {
            case "HMACSHA1":
                this.d = 20;
                break;
            case "HMACSHA224":
                this.d = 28;
                break;
            case "HMACSHA256":
                this.d = 32;
                break;
            case "HMACSHA384":
                this.d = 48;
                break;
            case "HMACSHA512":
                this.d = 64;
                break;
            default:
                throw new NoSuchAlgorithmException("unknown Hmac algorithm: ".concat(str));
        }
        threadLocal.get();
    }

    @Override // com.google.crypto.tink.prf.Prf
    public final byte[] a(int i2, byte[] bArr) throws InvalidAlgorithmParameterException {
        if (i2 > this.d) {
            no0.o("tag size too big");
            return null;
        }
        ThreadLocal threadLocal = this.f34315a;
        ((Mac) threadLocal.get()).update(bArr);
        return Arrays.copyOf(((Mac) threadLocal.get()).doFinal(), i2);
    }
}
