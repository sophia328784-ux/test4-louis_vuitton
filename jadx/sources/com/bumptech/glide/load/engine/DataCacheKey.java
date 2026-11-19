package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
final class DataCacheKey implements Key {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Key f24448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Key f24449c;

    public DataCacheKey(Key key, Key key2) {
        this.f24448b = key;
        this.f24449c = key2;
    }

    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        this.f24448b.b(messageDigest);
        this.f24449c.b(messageDigest);
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof DataCacheKey) {
            DataCacheKey dataCacheKey = (DataCacheKey) obj;
            if (this.f24448b.equals(dataCacheKey.f24448b) && this.f24449c.equals(dataCacheKey.f24449c)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.f24449c.hashCode() + (this.f24448b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f24448b + ", signature=" + this.f24449c + '}';
    }
}
