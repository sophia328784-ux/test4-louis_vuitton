package com.perfectcorp.thirdparty.com.google.common.collect;

import defpackage.cj;
import defpackage.md;
import defpackage.o60;
import defpackage.pq0;
import defpackage.r81;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class al<K, V> extends n<K, V> implements Serializable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient ImmutableMap f42233f;
    public final transient int g;

    public static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map f42234a = q.c();

        public static int a(int i2) {
            return (int) (((long) Integer.rotateLeft((int) (((long) i2) * (-862048943)), 15)) * 461845907);
        }

        public static int b(Object obj) {
            return a(obj == null ? 0 : obj.hashCode());
        }

        public static void c(int i2, String str) {
            if (i2 >= 0) {
                return;
            }
            md.n(cj.e(i2, str, " cannot be negative but was: "));
        }

        public static void d(int i2, Object[] objArr) {
            for (int i3 = 0; i3 < i2; i3++) {
                if (objArr[i3] == null) {
                    r81.d(pq0.k(i3, "at index "));
                    return;
                }
            }
        }

        public static void e(Object obj, Object obj2) {
            String strI;
            if (obj == null) {
                strI = cj.i(obj2, "null key in entry: null=");
            } else if (obj2 != null) {
                return;
            } else {
                strI = o60.n("null value in entry: ", obj, "=null");
            }
            r81.d(strI);
        }
    }

    public static class b<K, V> extends ai<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final al f42235c;

        public b(al alVar) {
            this.f42235c = alVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f42235c.i(entry.getKey(), entry.getValue());
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        /* JADX INFO: renamed from: f */
        public final by iterator() {
            return this.f42235c.c();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final /* synthetic */ Iterator iterator() {
            return this.f42235c.c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f42235c.g;
        }
    }

    public static final class c<K, V> extends ai<V> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final transient al f42236c;

        public c(al alVar) {
            this.f42236c = alVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final int a(int i2, Object[] objArr) {
            by it = this.f42236c.f42233f.values().iterator();
            while (it.hasNext()) {
                i2 = ((ai) it.next()).a(i2, objArr);
            }
            return i2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return this.f42236c.b(obj);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        /* JADX INFO: renamed from: f */
        public final by iterator() {
            return this.f42236c.e();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final /* synthetic */ Iterator iterator() {
            return this.f42236c.e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f42236c.g;
        }
    }

    public al(int i2, ImmutableMap immutableMap) {
        this.f42233f = immutableMap;
        this.g = i2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.j
    public final boolean b(Object obj) {
        return obj != null && super.b(obj);
    }

    public final by c() {
        am amVar = new am();
        amVar.f42237b = this.f42233f.entrySet().iterator();
        amVar.f42238c = null;
        amVar.d = at.a.f42245e;
        return amVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final void d() {
        throw new UnsupportedOperationException();
    }

    public final by e() {
        an anVar = new an();
        anVar.f42239b = this.f42233f.values().iterator();
        anVar.f42240c = at.a.f42245e;
        return anVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final Collection f() {
        Collection bVar = this.f42316b;
        if (bVar == null) {
            bVar = new b(this);
            this.f42316b = bVar;
        }
        return (ai) bVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final /* bridge */ /* synthetic */ Map h() {
        return this.f42233f;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final /* synthetic */ Set keySet() {
        return this.f42233f.keySet();
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final boolean m(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.j, com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final boolean n(Iterable iterable, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final boolean put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final int size() {
        return this.g;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final Collection values() {
        Collection cVar = this.d;
        if (cVar == null) {
            cVar = new c(this);
            this.d = cVar;
        }
        return (ai) cVar;
    }
}
