package com.perfectcorp.thirdparty.com.google.common.base;

import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import defpackage.g7;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Predicates {

    public static class a<T> implements Predicate<T>, Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f42076b;

        public a(List list) {
            this.f42076b = list;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            int i2 = 0;
            while (true) {
                List list = this.f42076b;
                if (i2 >= list.size()) {
                    return true;
                }
                if (!((Predicate) list.get(i2)).apply(obj)) {
                    return false;
                }
                i2++;
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                return this.f42076b.equals(((a) obj).f42076b);
            }
            return false;
        }

        public final int hashCode() {
            return this.f42076b.hashCode() + 306654252;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Predicates.and(");
            boolean z = true;
            for (T t : this.f42076b) {
                if (!z) {
                    sb.append(',');
                }
                sb.append(t);
                z = false;
            }
            sb.append(')');
            return sb.toString();
        }
    }

    public static class b<A, B> implements Predicate<A>, Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Predicate f42077b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public g7 f42078c;

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            Predicate predicate = this.f42077b;
            this.f42078c.getClass();
            return ((a) predicate).apply(((YMKPrimitiveData.Effect) obj).f40758b);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f42078c.equals(bVar.f42078c)) {
                return ((a) this.f42077b).equals(bVar.f42077b);
            }
            return false;
        }

        public final int hashCode() {
            return this.f42077b.hashCode() ^ this.f42078c.hashCode();
        }

        public final String toString() {
            return this.f42077b + "(" + this.f42078c + ")";
        }
    }

    public static class c<T> implements Predicate<T>, Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Collection f42079b;

        public c(Collection collection) {
            collection.getClass();
            this.f42079b = collection;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            try {
                return this.f42079b.contains(obj);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (obj instanceof c) {
                return this.f42079b.equals(((c) obj).f42079b);
            }
            return false;
        }

        public final int hashCode() {
            return this.f42079b.hashCode();
        }

        public final String toString() {
            return "Predicates.in(" + this.f42079b + ")";
        }
    }

    public static class d<T> implements Predicate<T>, Serializable {
        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return "-_-".equals(obj);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            return obj instanceof d;
        }

        public final int hashCode() {
            return 46235;
        }

        public final String toString() {
            return "Predicates.equalTo(-_-)";
        }
    }

    public static class e<T> implements Predicate<T>, Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Predicate f42080b;

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return !this.f42080b.apply(obj);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (obj instanceof e) {
                return this.f42080b.equals(((e) obj).f42080b);
            }
            return false;
        }

        public final int hashCode() {
            return ~this.f42080b.hashCode();
        }

        public final String toString() {
            return "Predicates.not(" + this.f42080b + ")";
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class f implements Predicate<Object> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static f f42083c = new h();
        private static f d = new i();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f42081a = new j();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final f f42082b = new k();
    }

    public static Predicate a(Predicate predicate, Predicate predicate2) {
        predicate.getClass();
        predicate2.getClass();
        return new a(Arrays.asList(predicate, predicate2));
    }

    public static Predicate b(Predicate predicate, g7 g7Var) {
        b bVar = new b();
        bVar.f42077b = predicate;
        bVar.f42078c = g7Var;
        return bVar;
    }

    public static Predicate c() {
        return new d();
    }

    public static Predicate d(AbstractCollection abstractCollection) {
        return new c(abstractCollection);
    }

    public static Predicate e(Predicate predicate) {
        e eVar = new e();
        predicate.getClass();
        eVar.f42080b = predicate;
        return eVar;
    }

    public static Predicate f() {
        return f.f42082b;
    }
}
