package com.bumptech.glide.util;

/* JADX INFO: loaded from: classes2.dex */
public class MultiClassKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Class f24994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Class f24995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Class f24996c;

    public MultiClassKey(Class<?> cls, Class<?> cls2) {
        this.f24994a = cls;
        this.f24995b = cls2;
        this.f24996c = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MultiClassKey multiClassKey = (MultiClassKey) obj;
        return this.f24994a.equals(multiClassKey.f24994a) && this.f24995b.equals(multiClassKey.f24995b) && Util.b(this.f24996c, multiClassKey.f24996c);
    }

    public final int hashCode() {
        int iHashCode = (this.f24995b.hashCode() + (this.f24994a.hashCode() * 31)) * 31;
        Class cls = this.f24996c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f24994a + ", second=" + this.f24995b + '}';
    }

    public MultiClassKey() {
    }

    public MultiClassKey(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f24994a = cls;
        this.f24995b = cls2;
        this.f24996c = cls3;
    }
}
