package com.bumptech.glide.load;

import android.text.TextUtils;
import defpackage.md;
import defpackage.n00;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public final class Option<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CacheKeyUpdater f24396e = new AnonymousClass1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f24397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CacheKeyUpdater f24398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f24399c;
    public volatile byte[] d;

    /* JADX INFO: renamed from: com.bumptech.glide.load.Option$1, reason: invalid class name */
    public class AnonymousClass1 implements CacheKeyUpdater<Object> {
        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public final void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    public interface CacheKeyUpdater<T> {
        void a(byte[] bArr, Object obj, MessageDigest messageDigest);
    }

    public Option(String str, Object obj, CacheKeyUpdater cacheKeyUpdater) {
        if (TextUtils.isEmpty(str)) {
            md.n("Must not be null or empty");
            throw null;
        }
        this.f24399c = str;
        this.f24397a = obj;
        this.f24398b = cacheKeyUpdater;
    }

    public static Option a(Object obj, String str) {
        return new Option(str, obj, f24396e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Option) {
            return this.f24399c.equals(((Option) obj).f24399c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f24399c.hashCode();
    }

    public final String toString() {
        return n00.r(this.f24399c, "'}", new StringBuilder("Option{key='"));
    }
}
