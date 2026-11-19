package com.bumptech.glide.load;

import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public final class Options implements Key {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CachedHashCodeArrayMap f24400b = new CachedHashCodeArrayMap();

    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        int i2 = 0;
        while (true) {
            CachedHashCodeArrayMap cachedHashCodeArrayMap = this.f24400b;
            if (i2 >= cachedHashCodeArrayMap.d) {
                return;
            }
            Option option = (Option) cachedHashCodeArrayMap.g(i2);
            Object objK = this.f24400b.k(i2);
            Option.CacheKeyUpdater cacheKeyUpdater = option.f24398b;
            if (option.d == null) {
                option.d = option.f24399c.getBytes(Key.f24395a);
            }
            cacheKeyUpdater.a(option.d, objK, messageDigest);
            i2++;
        }
    }

    public final Object c(Option option) {
        CachedHashCodeArrayMap cachedHashCodeArrayMap = this.f24400b;
        return cachedHashCodeArrayMap.containsKey(option) ? cachedHashCodeArrayMap.get(option) : option.f24397a;
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof Options) {
            return this.f24400b.equals(((Options) obj).f24400b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.f24400b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f24400b + '}';
    }
}
