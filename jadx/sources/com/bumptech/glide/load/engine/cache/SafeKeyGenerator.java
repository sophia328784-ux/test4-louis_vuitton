package com.bumptech.glide.load.engine.cache;

import androidx.core.util.Pools$Pool;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import defpackage.x1;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class SafeKeyGenerator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LruCache f24614a = new LruCache(1000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Pools$Pool f24615b = FactoryPools.a(10, new AnonymousClass1());

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.cache.SafeKeyGenerator$1, reason: invalid class name */
    public class AnonymousClass1 implements FactoryPools.Factory<PoolableDigestContainer> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public final Object create() {
            try {
                return new PoolableDigestContainer(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e2) {
                x1.m(e2);
                return null;
            }
        }
    }

    public static final class PoolableDigestContainer implements FactoryPools.Poolable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MessageDigest f24616b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final StateVerifier f24617c = StateVerifier.a();

        public PoolableDigestContainer(MessageDigest messageDigest) {
            this.f24616b = messageDigest;
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
        public final StateVerifier getVerifier() {
            return this.f24617c;
        }
    }

    public final String a(Key key) {
        String str;
        synchronized (this.f24614a) {
            str = (String) this.f24614a.f(key);
        }
        if (str == null) {
            PoolableDigestContainer poolableDigestContainer = (PoolableDigestContainer) this.f24615b.acquire();
            Preconditions.c(poolableDigestContainer, "Argument must not be null");
            try {
                key.b(poolableDigestContainer.f24616b);
                byte[] bArrDigest = poolableDigestContainer.f24616b.digest();
                char[] cArr = Util.f24998b;
                synchronized (cArr) {
                    for (int i2 = 0; i2 < bArrDigest.length; i2++) {
                        byte b2 = bArrDigest[i2];
                        int i3 = i2 * 2;
                        char[] cArr2 = Util.f24997a;
                        cArr[i3] = cArr2[(b2 & 255) >>> 4];
                        cArr[i3 + 1] = cArr2[b2 & 15];
                    }
                    str = new String(cArr);
                }
                this.f24615b.release(poolableDigestContainer);
            } catch (Throwable th) {
                this.f24615b.release(poolableDigestContainer);
                throw th;
            }
        }
        synchronized (this.f24614a) {
            this.f24614a.i(key, str);
        }
        return str;
    }
}
