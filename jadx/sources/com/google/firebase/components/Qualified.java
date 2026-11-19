package com.google.firebase.components;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes2.dex */
public final class Qualified<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f34418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f34419b;

    public @interface Unqualified {
    }

    public Qualified(Class<? extends Annotation> cls, Class<T> cls2) {
        this.f34418a = cls;
        this.f34419b = cls2;
    }

    public static Qualified a(Class cls) {
        return new Qualified(Unqualified.class, cls);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Qualified.class != obj.getClass()) {
            return false;
        }
        Qualified qualified = (Qualified) obj;
        if (this.f34419b.equals(qualified.f34419b)) {
            return this.f34418a.equals(qualified.f34418a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f34418a.hashCode() + (this.f34419b.hashCode() * 31);
    }

    public final String toString() {
        Class cls = this.f34419b;
        Class cls2 = this.f34418a;
        if (cls2 == Unqualified.class) {
            return cls.getName();
        }
        return "@" + cls2.getName() + " " + cls.getName();
    }
}
