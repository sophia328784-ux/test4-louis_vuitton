package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class EngineKey implements Key {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24513c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class f24514e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f24515f;
    public final Key g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map f24516h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Options f24517i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f24518j;

    public EngineKey(Object obj, Key key, int i2, int i3, Map map, Class cls, Class cls2, Options options) {
        Preconditions.c(obj, "Argument must not be null");
        this.f24512b = obj;
        Preconditions.c(key, "Signature must not be null");
        this.g = key;
        this.f24513c = i2;
        this.d = i3;
        Preconditions.c(map, "Argument must not be null");
        this.f24516h = map;
        Preconditions.c(cls, "Resource class must not be null");
        this.f24514e = cls;
        Preconditions.c(cls2, "Transcode class must not be null");
        this.f24515f = cls2;
        Preconditions.c(options, "Argument must not be null");
        this.f24517i = options;
    }

    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof EngineKey) {
            EngineKey engineKey = (EngineKey) obj;
            if (this.f24512b.equals(engineKey.f24512b) && this.g.equals(engineKey.g) && this.d == engineKey.d && this.f24513c == engineKey.f24513c && this.f24516h.equals(engineKey.f24516h) && this.f24514e.equals(engineKey.f24514e) && this.f24515f.equals(engineKey.f24515f) && this.f24517i.equals(engineKey.f24517i)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        if (this.f24518j == 0) {
            int iHashCode = this.f24512b.hashCode();
            this.f24518j = iHashCode;
            int iHashCode2 = ((((this.g.hashCode() + (iHashCode * 31)) * 31) + this.f24513c) * 31) + this.d;
            this.f24518j = iHashCode2;
            int iHashCode3 = this.f24516h.hashCode() + (iHashCode2 * 31);
            this.f24518j = iHashCode3;
            int iHashCode4 = this.f24514e.hashCode() + (iHashCode3 * 31);
            this.f24518j = iHashCode4;
            int iHashCode5 = this.f24515f.hashCode() + (iHashCode4 * 31);
            this.f24518j = iHashCode5;
            this.f24518j = this.f24517i.f24400b.hashCode() + (iHashCode5 * 31);
        }
        return this.f24518j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f24512b + ", width=" + this.f24513c + ", height=" + this.d + ", resourceClass=" + this.f24514e + ", transcodeClass=" + this.f24515f + ", signature=" + this.g + ", hashCode=" + this.f24518j + ", transformations=" + this.f24516h + ", options=" + this.f24517i + '}';
    }
}
