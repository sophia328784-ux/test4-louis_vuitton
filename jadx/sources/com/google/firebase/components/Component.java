package com.google.firebase.components;

import defpackage.md;
import defpackage.ym;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class Component<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f34379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f34380c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f34381e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ComponentFactory f34382f;
    public final Set g;

    public Component(String str, Set set, Set set2, int i2, int i3, ComponentFactory componentFactory, Set set3) {
        this.f34378a = str;
        this.f34379b = Collections.unmodifiableSet(set);
        this.f34380c = Collections.unmodifiableSet(set2);
        this.d = i2;
        this.f34381e = i3;
        this.f34382f = componentFactory;
        this.g = Collections.unmodifiableSet(set3);
    }

    public static Builder a(Qualified qualified) {
        return new Builder(qualified, new Qualified[0]);
    }

    public static Builder b(Class cls) {
        return new Builder(cls, new Class[0]);
    }

    public static Component c(Object obj, Class cls, Class... clsArr) {
        Builder builder = new Builder(cls, clsArr);
        builder.f34387f = new ym(obj, 1);
        return builder.b();
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f34379b.toArray()) + ">{" + this.d + ", type=" + this.f34381e + ", deps=" + Arrays.toString(this.f34380c.toArray()) + "}";
    }

    public static class Builder<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f34383a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashSet f34384b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HashSet f34385c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f34386e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ComponentFactory f34387f;
        public final HashSet g;

        public Builder(Class cls, Class[] clsArr) {
            HashSet hashSet = new HashSet();
            this.f34384b = hashSet;
            this.f34385c = new HashSet();
            this.d = 0;
            this.f34386e = 0;
            this.g = new HashSet();
            hashSet.add(Qualified.a(cls));
            for (Class cls2 : clsArr) {
                Preconditions.a(cls2, "Null interface");
                this.f34384b.add(Qualified.a(cls2));
            }
        }

        public final void a(Dependency dependency) {
            if (this.f34384b.contains(dependency.f34403a)) {
                md.n("Components are not allowed to depend on interfaces they themselves provide.");
            } else {
                this.f34385c.add(dependency);
            }
        }

        public final Component b() {
            if (this.f34387f != null) {
                return new Component(this.f34383a, new HashSet(this.f34384b), new HashSet(this.f34385c), this.d, this.f34386e, this.f34387f, this.g);
            }
            md.k("Missing required property: factory.");
            return null;
        }

        public final void c(int i2) {
            if (this.d == 0) {
                this.d = i2;
            } else {
                md.k("Instantiation type has already been set.");
            }
        }

        public Builder(Qualified qualified, Qualified[] qualifiedArr) {
            HashSet hashSet = new HashSet();
            this.f34384b = hashSet;
            this.f34385c = new HashSet();
            this.d = 0;
            this.f34386e = 0;
            this.g = new HashSet();
            hashSet.add(qualified);
            for (Qualified qualified2 : qualifiedArr) {
                Preconditions.a(qualified2, "Null interface");
            }
            Collections.addAll(this.f34384b, qualifiedArr);
        }
    }
}
