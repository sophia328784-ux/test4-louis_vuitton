package com.perfectcorp.thirdparty.com.google.common.cache;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.collect.at;
import com.perfectcorp.thirdparty.com.google.common.primitives.Ints;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Uninterruptibles;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.a61;
import defpackage.b21;
import defpackage.md;
import defpackage.o60;
import java.io.Serializable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
class d<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {
    public static final com.perfectcorp.thirdparty.com.google.common.cache.e u;
    public static final Queue v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f42115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f42116c;
    public final n[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f42117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.common.base.e f42118f;
    public final com.perfectcorp.thirdparty.com.google.common.base.e g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p f42119h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p f42120i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f42121j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ag f42122k;
    public final AbstractQueue l;
    public final ae m;
    public final com.perfectcorp.thirdparty.com.google.common.base.t n;
    public final EnumC0206d o;
    public final a$a p;
    public final CacheLoader q;
    public Set r;
    public Collection s;
    public Set t;

    public static final class ac<K, V> extends aa<K, V> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile long f42127e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42128f;
        public com.perfectcorp.thirdparty.com.google.common.cache.x g;

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void c(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.g = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void d(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42128f = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void f(long j2) {
            this.f42127e = j2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long h() {
            return this.f42127e;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x i() {
            return this.f42128f;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x j() {
            return this.g;
        }
    }

    public final class ah implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f42129b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f42130c;
        public /* synthetic */ d d;

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (this.f42129b.equals(entry.getKey()) && this.f42130c.equals(entry.getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f42129b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f42130c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f42130c.hashCode() ^ this.f42129b.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            Object objPut = this.d.put(this.f42129b, obj);
            this.f42130c = obj;
            return objPut;
        }

        public final String toString() {
            return this.f42129b + "=" + this.f42130c;
        }
    }

    public static final class c<K, V> extends AbstractQueue<com.perfectcorp.thirdparty.com.google.common.cache.x<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.common.cache.g f42131b;

        public c() {
            com.perfectcorp.thirdparty.com.google.common.cache.g gVar = new com.perfectcorp.thirdparty.com.google.common.cache.g();
            gVar.f42185b = gVar;
            gVar.f42186c = gVar;
            this.f42131b = gVar;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            com.perfectcorp.thirdparty.com.google.common.cache.g gVar = this.f42131b;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = gVar.f42185b;
            while (xVar != gVar) {
                com.perfectcorp.thirdparty.com.google.common.cache.x xVarF = xVar.f();
                com.perfectcorp.thirdparty.com.google.common.cache.e eVar = d.u;
                m mVar = m.f42150a;
                xVar.a(mVar);
                xVar.e(mVar);
                xVar = xVarF;
            }
            gVar.f42185b = gVar;
            gVar.f42186c = gVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return ((com.perfectcorp.thirdparty.com.google.common.cache.x) obj).f() != m.f42150a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            com.perfectcorp.thirdparty.com.google.common.cache.g gVar = this.f42131b;
            return gVar.f42185b == gVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            com.perfectcorp.thirdparty.com.google.common.cache.g gVar = this.f42131b;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = gVar.f42185b;
            if (xVar == gVar) {
                xVar = null;
            }
            return new com.perfectcorp.thirdparty.com.google.common.cache.h(this, xVar);
        }

        @Override // java.util.Queue
        public final boolean offer(Object obj) {
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) obj;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarG = xVar.g();
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarF = xVar.f();
            com.perfectcorp.thirdparty.com.google.common.cache.e eVar = d.u;
            xVarG.a(xVarF);
            xVarF.e(xVarG);
            com.perfectcorp.thirdparty.com.google.common.cache.g gVar = this.f42131b;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar2 = gVar.f42186c;
            xVar2.a(xVar);
            xVar.e(xVar2);
            xVar.a(gVar);
            gVar.f42186c = xVar;
            return true;
        }

        @Override // java.util.Queue
        public final Object peek() {
            com.perfectcorp.thirdparty.com.google.common.cache.g gVar = this.f42131b;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = gVar.f42185b;
            if (xVar == gVar) {
                return null;
            }
            return xVar;
        }

        @Override // java.util.Queue
        public final Object poll() {
            com.perfectcorp.thirdparty.com.google.common.cache.g gVar = this.f42131b;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = gVar.f42185b;
            if (xVar == gVar) {
                return null;
            }
            remove(xVar);
            return xVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) obj;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarG = xVar.g();
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarF = xVar.f();
            com.perfectcorp.thirdparty.com.google.common.cache.e eVar = d.u;
            xVarG.a(xVarF);
            xVarF.e(xVarG);
            m mVar = m.f42150a;
            xVar.a(mVar);
            xVar.e(mVar);
            return xVarF != mVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            com.perfectcorp.thirdparty.com.google.common.cache.g gVar = this.f42131b;
            int i2 = 0;
            for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarF = gVar.f42185b; xVarF != gVar; xVarF = xVarF.f()) {
                i2++;
            }
            return i2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.com.google.common.cache.d$d, reason: collision with other inner class name */
    public static abstract class EnumC0206d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static EnumC0206d f42132a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static EnumC0206d f42133b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static EnumC0206d f42134c;
        private static EnumC0206d d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static EnumC0206d f42135e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static EnumC0206d f42136f;
        private static EnumC0206d g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static EnumC0206d f42137h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static EnumC0206d[] f42138i;

        static {
            com.perfectcorp.thirdparty.com.google.common.cache.i iVar = new com.perfectcorp.thirdparty.com.google.common.cache.i();
            f42132a = iVar;
            com.perfectcorp.thirdparty.com.google.common.cache.j jVar = new com.perfectcorp.thirdparty.com.google.common.cache.j();
            f42133b = jVar;
            com.perfectcorp.thirdparty.com.google.common.cache.k kVar = new com.perfectcorp.thirdparty.com.google.common.cache.k();
            f42134c = kVar;
            com.perfectcorp.thirdparty.com.google.common.cache.l lVar = new com.perfectcorp.thirdparty.com.google.common.cache.l();
            d = lVar;
            com.perfectcorp.thirdparty.com.google.common.cache.m mVar = new com.perfectcorp.thirdparty.com.google.common.cache.m();
            f42135e = mVar;
            com.perfectcorp.thirdparty.com.google.common.cache.n nVar = new com.perfectcorp.thirdparty.com.google.common.cache.n();
            f42136f = nVar;
            com.perfectcorp.thirdparty.com.google.common.cache.o oVar = new com.perfectcorp.thirdparty.com.google.common.cache.o();
            g = oVar;
            com.perfectcorp.thirdparty.com.google.common.cache.p pVar = new com.perfectcorp.thirdparty.com.google.common.cache.p();
            f42137h = pVar;
            f42138i = new EnumC0206d[]{iVar, jVar, kVar, lVar, mVar, nVar, oVar, pVar};
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EnumC0206d a(p pVar, boolean z, boolean z2) {
            return f42138i[((pVar == p.f42162c ? (char) 4 : (char) 0) | (z ? 1 : 0) ? 1 : 0) | (z2 ? 2 : 0)];
        }

        public static void d(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, com.perfectcorp.thirdparty.com.google.common.cache.x xVar2) {
            xVar2.a(xVar.e());
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarG = xVar.g();
            com.perfectcorp.thirdparty.com.google.common.cache.e eVar = d.u;
            xVarG.a(xVar2);
            xVar2.e(xVarG);
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarF = xVar.f();
            xVar2.a(xVarF);
            xVarF.e(xVar2);
            m mVar = m.f42150a;
            xVar.a(mVar);
            xVar.e(mVar);
        }

        public static void e(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, com.perfectcorp.thirdparty.com.google.common.cache.x xVar2) {
            xVar2.f(xVar.h());
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarJ = xVar.j();
            com.perfectcorp.thirdparty.com.google.common.cache.e eVar = d.u;
            xVarJ.d(xVar2);
            xVar2.c(xVarJ);
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarI = xVar.i();
            xVar2.d(xVarI);
            xVarI.c(xVar2);
            m mVar = m.f42150a;
            xVar.d(mVar);
            xVar.c(mVar);
        }

        public com.perfectcorp.thirdparty.com.google.common.cache.x b(n nVar, com.perfectcorp.thirdparty.com.google.common.cache.x xVar, com.perfectcorp.thirdparty.com.google.common.cache.x xVar2) {
            return c(nVar, xVar.d(), xVar.c(), xVar2);
        }

        public abstract com.perfectcorp.thirdparty.com.google.common.cache.x c(n nVar, Object obj, int i2, com.perfectcorp.thirdparty.com.google.common.cache.x xVar);
    }

    public final class e extends d<K, V>.g<Map.Entry<K, V>> {
    }

    public final class f extends d<K, V>.a<Map.Entry<K, V>> {
        public f(ConcurrentMap concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            d dVar;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = (dVar = d.this).get(key)) != null && dVar.g.b(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && d.this.remove(key, entry.getValue());
        }
    }

    public abstract class g<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f42140b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f42141c = -1;
        public n d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public AtomicReferenceArray f42142e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42143f;
        public ah g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ah f42144h;

        public g() {
            this.f42140b = d.this.d.length - 1;
            c();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ah next() {
            ah ahVar = this.g;
            if (ahVar == null) {
                b21.x();
                return null;
            }
            this.f42144h = ahVar;
            c();
            return this.f42144h;
        }

        public final boolean b(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            Object obj;
            n nVar;
            d dVar = d.this;
            try {
                dVar.n.a();
                Object objD = xVar.d();
                Object obj2 = null;
                if (xVar.d() != null && (obj = xVar.a().get()) != null) {
                    obj2 = obj;
                }
                if (obj2 == null) {
                    return false;
                }
                ah ahVar = new ah();
                ahVar.d = dVar;
                ahVar.f42129b = objD;
                ahVar.f42130c = obj2;
                this.g = ahVar;
                return true;
            } finally {
                this.d.g();
            }
        }

        public final void c() {
            this.g = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i2 = this.f42140b;
                if (i2 < 0) {
                    return;
                }
                n[] nVarArr = d.this.d;
                this.f42140b = i2 - 1;
                n nVar = nVarArr[i2];
                this.d = nVar;
                if (nVar.f42152c != 0) {
                    AtomicReferenceArray atomicReferenceArray = this.d.g;
                    this.f42142e = atomicReferenceArray;
                    this.f42141c = atomicReferenceArray.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        public final boolean d() {
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = this.f42143f;
            if (xVar == null) {
                return false;
            }
            while (true) {
                this.f42143f = xVar.b();
                com.perfectcorp.thirdparty.com.google.common.cache.x xVar2 = this.f42143f;
                if (xVar2 == null) {
                    return false;
                }
                if (b(xVar2)) {
                    return true;
                }
                xVar = this.f42143f;
            }
        }

        public final boolean e() {
            while (true) {
                int i2 = this.f42141c;
                if (i2 < 0) {
                    return false;
                }
                AtomicReferenceArray atomicReferenceArray = this.f42142e;
                this.f42141c = i2 - 1;
                com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(i2);
                this.f42143f = xVar;
                if (xVar != null && (b(xVar) || d())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.g != null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            Preconditions.i(this.f42144h != null);
            d.this.remove(this.f42144h.f42129b);
            this.f42144h = null;
        }
    }

    public final class h extends d<K, V>.g<K> {
        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.g, java.util.Iterator
        public final Object next() {
            return next().f42129b;
        }
    }

    public final class i extends d<K, V>.a<K> {
        public i(ConcurrentMap concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f42123b.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return this.f42123b.remove(obj) != null;
        }
    }

    public static class k<K, V> extends l<K, V> implements LoadingCache<K, V> {
        @Override // com.perfectcorp.thirdparty.com.google.common.cache.LoadingCache
        public final Object a(Object obj) {
            try {
                return c(obj);
            } catch (ExecutionException e2) {
                throw new com.perfectcorp.thirdparty.com.google.common.util.concurrent.z(e2.getCause());
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
        public final Object apply(Object obj) {
            return a(obj);
        }

        public final Object c(Object obj) {
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarU;
            d dVar = this.f42149b;
            CacheLoader cacheLoader = dVar.q;
            obj.getClass();
            int iA = dVar.a(obj);
            n nVarC = dVar.c(iA);
            nVarC.getClass();
            cacheLoader.getClass();
            try {
                try {
                    if (nVarC.f42152c != 0 && (xVarU = nVarC.u(iA, obj)) != null) {
                        long jA = nVarC.f42151b.n.a();
                        Object objC = nVarC.c(xVarU, jA);
                        if (objC != null) {
                            nVarC.r(xVarU, jA);
                            nVarC.f42151b.getClass();
                            nVarC.g();
                            return objC;
                        }
                        w wVarA = xVarU.a();
                        if (wVarA.c()) {
                            Object objD = nVarC.d(xVarU, obj, wVarA);
                            nVarC.g();
                            return objD;
                        }
                    }
                    Object objO = nVarC.o(obj, iA, cacheLoader);
                    nVarC.g();
                    return objO;
                } catch (ExecutionException e2) {
                    Throwable cause = e2.getCause();
                    if (cause instanceof Error) {
                        throw new com.perfectcorp.thirdparty.com.google.common.util.concurrent.l((Error) cause);
                    }
                    if (cause instanceof RuntimeException) {
                        throw new com.perfectcorp.thirdparty.com.google.common.util.concurrent.z(cause);
                    }
                    throw e2;
                }
            } catch (Throwable th) {
                nVarC.g();
                throw th;
            }
        }
    }

    public static class l<K, V> implements Cache<K, V>, Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final d f42149b;

        public l(d dVar) {
            this.f42149b = dVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.Cache
        public final void b() {
            this.f42149b.clear();
        }

        public final ConcurrentMap h() {
            return this.f42149b;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class m implements com.perfectcorp.thirdparty.com.google.common.cache.x<Object, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final m f42150a = new m("INSTANCE", 0);

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final w a() {
            return null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x b() {
            return null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final int c() {
            return 0;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final Object d() {
            return null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long e() {
            return 0L;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x f() {
            return this;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void f(long j2) {
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x g() {
            return this;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long h() {
            return 0L;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x i() {
            return this;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x j() {
            return this;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(long j2) {
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void b(w wVar) {
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void c(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void d(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void e(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
        }
    }

    public static class n<K, V> extends ReentrantLock {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final d f42151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile int f42152c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f42153e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f42154f;
        public volatile AtomicReferenceArray g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f42155h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ReferenceQueue f42156i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ReferenceQueue f42157j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final AbstractQueue f42158k;
        public final AtomicInteger l = new AtomicInteger();
        public final AbstractQueue m;
        public final AbstractQueue n;
        public final a$a o;

        public n(d dVar, int i2, long j2, a$a a_a) {
            this.f42151b = dVar;
            this.f42155h = j2;
            a_a.getClass();
            this.o = a_a;
            AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(i2);
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.f42154f = length;
            if (dVar.f42122k == CacheBuilder.b.f42114a && length == j2) {
                this.f42154f = length + 1;
            }
            this.g = atomicReferenceArray;
            p pVar = dVar.f42119h;
            p pVar2 = p.f42160a;
            this.f42156i = pVar != pVar2 ? new ReferenceQueue() : null;
            this.f42157j = dVar.f42120i != pVar2 ? new ReferenceQueue() : null;
            this.f42158k = (AbstractQueue) (dVar.e() ? new ConcurrentLinkedQueue() : d.v);
            Collection collection = d.v;
            this.m = (AbstractQueue) collection;
            this.n = (AbstractQueue) (dVar.e() ? new c() : collection);
        }

        public final com.perfectcorp.thirdparty.com.google.common.cache.x a(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, com.perfectcorp.thirdparty.com.google.common.cache.x xVar2) {
            if (xVar.d() == null) {
                return null;
            }
            w wVarA = xVar.a();
            Object obj = wVarA.get();
            if (obj == null && wVarA.d()) {
                return null;
            }
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = this.f42151b.o.b(this, xVar, xVar2);
            xVarB.b(wVarA.a(this.f42157j, obj, xVarB));
            return xVarB;
        }

        public final com.perfectcorp.thirdparty.com.google.common.cache.x b(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, com.perfectcorp.thirdparty.com.google.common.cache.x xVar2, Object obj, Object obj2, w wVar, com.perfectcorp.thirdparty.com.google.common.cache.y yVar) {
            l(obj, obj2, wVar.a(), yVar);
            this.m.remove(xVar2);
            this.n.remove(xVar2);
            if (!wVar.c()) {
                return n(xVar, xVar2);
            }
            wVar.a(null);
            return xVar;
        }

        public final Object c(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, long j2) {
            if (xVar.d() == null) {
                s();
                return null;
            }
            Object obj = xVar.a().get();
            if (obj == null) {
                s();
                return null;
            }
            this.f42151b.getClass();
            return obj;
        }

        public final Object d(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, Object obj, w wVar) {
            if (!wVar.c()) {
                a61.h();
                return null;
            }
            if (Thread.holdsLock(xVar)) {
                md.k(Strings.a("Recursive load of: %s", obj));
                return null;
            }
            Object objE = wVar.e();
            if (objE == null) {
                throw new CacheLoader.a(o60.n("CacheLoader returned null for key ", obj, FileUtils.HIDDEN_PREFIX));
            }
            r(xVar, this.f42151b.n.a());
            return objE;
        }

        public final Object e(Object obj, int i2, j jVar, ListenableFuture listenableFuture) throws Throwable {
            Object objA;
            try {
                objA = Uninterruptibles.a(listenableFuture);
                try {
                    if (objA != null) {
                        jVar.d.b();
                        k(obj, i2, jVar, objA);
                        return objA;
                    }
                    throw new CacheLoader.a("CacheLoader returned null for key " + obj + FileUtils.HIDDEN_PREFIX);
                } catch (Throwable th) {
                    th = th;
                    if (objA == null) {
                        jVar.d.b();
                        lock();
                        try {
                            AtomicReferenceArray atomicReferenceArray = this.g;
                            int length = (atomicReferenceArray.length() - 1) & i2;
                            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
                            for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar; xVarB != null; xVarB = xVarB.b()) {
                                Object objD = xVarB.d();
                                if (xVarB.c() == i2 && objD != null && this.f42151b.f42118f.b(obj, objD)) {
                                    if (xVarB.a() != jVar) {
                                        break;
                                    }
                                    if (!jVar.f42147b.d()) {
                                        atomicReferenceArray.set(length, n(xVar, xVarB));
                                        break;
                                    }
                                    xVarB.b(jVar.f42147b);
                                    break;
                                }
                            }
                        } finally {
                            unlock();
                            p();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                objA = null;
            }
        }

        public final Object f(Object obj, Object obj2, boolean z, int i2) {
            int i3;
            lock();
            try {
                long jA = this.f42151b.n.a();
                h(jA);
                if (this.f42152c + 1 > this.f42154f) {
                    x();
                }
                AtomicReferenceArray atomicReferenceArray = this.g;
                int length = (atomicReferenceArray.length() - 1) & i2;
                com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
                for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar; xVarB != null; xVarB = xVarB.b()) {
                    Object objD = xVarB.d();
                    if (xVarB.c() == i2 && objD != null && this.f42151b.f42118f.b(obj, objD)) {
                        w wVarA = xVarB.a();
                        Object obj3 = wVarA.get();
                        if (obj3 != null) {
                            if (z) {
                                t(xVarB, jA);
                            } else {
                                this.f42153e++;
                                l(obj, obj3, wVarA.a(), com.perfectcorp.thirdparty.com.google.common.cache.y.f42190b);
                                j(xVarB, obj2, jA);
                                i(xVarB);
                            }
                            return obj3;
                        }
                        this.f42153e++;
                        if (wVarA.d()) {
                            l(obj, obj3, wVarA.a(), com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c);
                            j(xVarB, obj2, jA);
                            i3 = this.f42152c;
                        } else {
                            j(xVarB, obj2, jA);
                            i3 = this.f42152c + 1;
                        }
                        this.f42152c = i3;
                        i(xVarB);
                        return null;
                    }
                }
                this.f42153e++;
                com.perfectcorp.thirdparty.com.google.common.cache.x xVarC = this.f42151b.o.c(this, obj, i2, xVar);
                j(xVarC, obj2, jA);
                atomicReferenceArray.set(length, xVarC);
                this.f42152c++;
                i(xVarC);
                return null;
            } finally {
                unlock();
                p();
            }
        }

        public final void g() {
            if ((this.l.incrementAndGet() & 63) == 0) {
                h(this.f42151b.n.a());
                p();
            }
        }

        public final void h(long j2) {
            if (tryLock()) {
                try {
                    v();
                    d dVar = this.f42151b;
                    w();
                    if (((com.perfectcorp.thirdparty.com.google.common.cache.x) this.m.peek()) != null) {
                        dVar.getClass();
                    }
                    if (((com.perfectcorp.thirdparty.com.google.common.cache.x) this.n.peek()) != null) {
                        dVar.getClass();
                    }
                    this.l.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public final void i(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar2;
            if (this.f42151b.e()) {
                w();
                long jA = xVar.a().a();
                long j2 = this.f42155h;
                if (jA > j2 && !m(xVar, xVar.c(), com.perfectcorp.thirdparty.com.google.common.cache.y.f42192e)) {
                    a61.h();
                    return;
                }
                while (this.d > j2) {
                    Iterator it = this.n.iterator();
                    do {
                        if (!it.hasNext()) {
                            a61.h();
                            return;
                        }
                        xVar2 = (com.perfectcorp.thirdparty.com.google.common.cache.x) it.next();
                    } while (xVar2.a().a() <= 0);
                    if (!m(xVar2, xVar2.c(), com.perfectcorp.thirdparty.com.google.common.cache.y.f42192e)) {
                        a61.h();
                        return;
                    }
                }
            }
        }

        public final void j(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, Object obj, long j2) {
            w wVarA = xVar.a();
            xVar.b(this.f42151b.f42120i.b(this, xVar, obj));
            w();
            this.d++;
            this.n.add(xVar);
            this.m.add(xVar);
            wVarA.a(obj);
        }

        public final void k(Object obj, int i2, j jVar, Object obj2) {
            lock();
            try {
                long jA = this.f42151b.n.a();
                h(jA);
                int i3 = this.f42152c + 1;
                if (i3 > this.f42154f) {
                    x();
                    i3 = this.f42152c + 1;
                }
                AtomicReferenceArray atomicReferenceArray = this.g;
                int length = (atomicReferenceArray.length() - 1) & i2;
                com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
                for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar; xVarB != null; xVarB = xVarB.b()) {
                    Object objD = xVarB.d();
                    if (xVarB.c() == i2 && objD != null && this.f42151b.f42118f.b(obj, objD)) {
                        w wVarA = xVarB.a();
                        Object obj3 = wVarA.get();
                        if (jVar != wVarA && (obj3 != null || wVarA == d.u)) {
                            l(obj, obj2, 0, com.perfectcorp.thirdparty.com.google.common.cache.y.f42190b);
                            return;
                        }
                        this.f42153e++;
                        if (jVar.f42147b.d()) {
                            l(obj, obj3, jVar.f42147b.a(), obj3 == null ? com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c : com.perfectcorp.thirdparty.com.google.common.cache.y.f42190b);
                            i3--;
                        }
                        j(xVarB, obj2, jA);
                        this.f42152c = i3;
                        i(xVarB);
                        return;
                    }
                }
                this.f42153e++;
                EnumC0206d enumC0206d = this.f42151b.o;
                obj.getClass();
                com.perfectcorp.thirdparty.com.google.common.cache.x xVarC = enumC0206d.c(this, obj, i2, xVar);
                j(xVarC, obj2, jA);
                atomicReferenceArray.set(length, xVarC);
                this.f42152c = i3;
                i(xVarC);
            } finally {
                unlock();
                p();
            }
        }

        public final void l(Object obj, Object obj2, int i2, com.perfectcorp.thirdparty.com.google.common.cache.y yVar) {
            this.d -= (long) i2;
            d dVar = this.f42151b;
            if (dVar.l != d.v) {
                af afVar = new af(obj, obj2);
                yVar.getClass();
                dVar.l.offer(afVar);
            }
        }

        public final boolean m(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, int i2, com.perfectcorp.thirdparty.com.google.common.cache.y yVar) {
            AtomicReferenceArray atomicReferenceArray = this.g;
            int length = i2 & (atomicReferenceArray.length() - 1);
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar2 = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
            for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar2; xVarB != null; xVarB = xVarB.b()) {
                if (xVarB == xVar) {
                    this.f42153e++;
                    com.perfectcorp.thirdparty.com.google.common.cache.x xVarB2 = b(xVar2, xVarB, xVarB.d(), xVarB.a().get(), xVarB.a(), yVar);
                    int i3 = this.f42152c - 1;
                    atomicReferenceArray.set(length, xVarB2);
                    this.f42152c = i3;
                    return true;
                }
            }
            return false;
        }

        public final com.perfectcorp.thirdparty.com.google.common.cache.x n(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, com.perfectcorp.thirdparty.com.google.common.cache.x xVar2) {
            int i2 = this.f42152c;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar2.b();
            while (xVar != xVar2) {
                com.perfectcorp.thirdparty.com.google.common.cache.x xVarA = a(xVar, xVarB);
                if (xVarA != null) {
                    xVarB = xVarA;
                } else {
                    q(xVar);
                    i2--;
                }
                xVar = xVar.b();
            }
            this.f42152c = i2;
            return xVarB;
        }

        public final Object o(Object obj, int i2, CacheLoader cacheLoader) {
            j jVar;
            w wVarA;
            Object objE;
            lock();
            try {
                long jA = this.f42151b.n.a();
                h(jA);
                boolean z = true;
                int i3 = this.f42152c - 1;
                AtomicReferenceArray atomicReferenceArray = this.g;
                int length = (atomicReferenceArray.length() - 1) & i2;
                com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
                com.perfectcorp.thirdparty.com.google.common.cache.x xVarC = xVar;
                while (true) {
                    jVar = null;
                    if (xVarC == null) {
                        wVarA = null;
                        break;
                    }
                    Object objD = xVarC.d();
                    if (xVarC.c() == i2 && objD != null && this.f42151b.f42118f.b(obj, objD)) {
                        wVarA = xVarC.a();
                        if (wVarA.c()) {
                            z = false;
                            break;
                        }
                        Object obj2 = wVarA.get();
                        if (obj2 == null) {
                            l(objD, obj2, wVarA.a(), com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c);
                            this.m.remove(xVarC);
                            this.n.remove(xVarC);
                            this.f42152c = i3;
                            break;
                        }
                        this.f42151b.getClass();
                        t(xVarC, jA);
                        unlock();
                        p();
                        return obj2;
                    }
                    xVarC = xVarC.b();
                }
                if (z) {
                    jVar = new j();
                    if (xVarC == null) {
                        EnumC0206d enumC0206d = this.f42151b.o;
                        obj.getClass();
                        xVarC = enumC0206d.c(this, obj, i2, xVar);
                        xVarC.b(jVar);
                        atomicReferenceArray.set(length, xVarC);
                    } else {
                        xVarC.b(jVar);
                    }
                }
                unlock();
                p();
                if (!z) {
                    return d(xVarC, obj, wVarA);
                }
                synchronized (xVarC) {
                    objE = e(obj, i2, jVar, jVar.b(obj, cacheLoader));
                }
                return objE;
            } catch (Throwable th) {
                unlock();
                p();
                throw th;
            }
        }

        public final void p() {
            if (isHeldByCurrentThread()) {
                return;
            }
            while (((af) this.f42151b.l.poll()) != null) {
            }
        }

        public final void q(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            Object objD = xVar.d();
            xVar.c();
            l(objD, xVar.a().get(), xVar.a().a(), com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c);
            this.m.remove(xVar);
            this.n.remove(xVar);
        }

        public final void r(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, long j2) {
            this.f42151b.getClass();
            this.f42158k.add(xVar);
        }

        public final void s() {
            if (tryLock()) {
                try {
                    v();
                } finally {
                    unlock();
                }
            }
        }

        public final void t(com.perfectcorp.thirdparty.com.google.common.cache.x xVar, long j2) {
            this.f42151b.getClass();
            this.n.add(xVar);
        }

        public final com.perfectcorp.thirdparty.com.google.common.cache.x u(int i2, Object obj) {
            AtomicReferenceArray atomicReferenceArray = this.g;
            for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get((atomicReferenceArray.length() - 1) & i2); xVarB != null; xVarB = xVarB.b()) {
                if (xVarB.c() == i2) {
                    Object objD = xVarB.d();
                    if (objD == null) {
                        s();
                    } else if (this.f42151b.f42118f.b(obj, objD)) {
                        return xVarB;
                    }
                }
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:41:0x00f9 A[EDGE_INSN: B:41:0x00f9->B:52:0x011a BREAK  A[LOOP:3: B:29:0x00b8->B:48:0x010e]] */
        public final void v() throws Throwable {
            n nVar;
            int i2 = 0;
            if (this.f42151b.f42119h != p.f42160a) {
                int i3 = 0;
                do {
                    Object objPoll = this.f42156i.poll();
                    if (objPoll == null) {
                        break;
                    }
                    com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) objPoll;
                    d dVar = this.f42151b;
                    dVar.getClass();
                    int iC = xVar.c();
                    n nVarC = dVar.c(iC);
                    nVarC.lock();
                    try {
                        AtomicReferenceArray atomicReferenceArray = nVarC.g;
                        int length = iC & (atomicReferenceArray.length() - 1);
                        com.perfectcorp.thirdparty.com.google.common.cache.x xVar2 = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
                        for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar2; xVarB != null; xVarB = xVarB.b()) {
                            if (xVarB == xVar) {
                                nVarC.f42153e++;
                                com.perfectcorp.thirdparty.com.google.common.cache.x xVarB2 = nVarC.b(xVar2, xVarB, xVarB.d(), xVarB.a().get(), xVarB.a(), com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c);
                                int i4 = nVarC.f42152c - 1;
                                atomicReferenceArray.set(length, xVarB2);
                                nVarC.f42152c = i4;
                                break;
                            }
                        }
                        nVarC.unlock();
                        nVarC.p();
                        i3++;
                    } catch (Throwable th) {
                        nVarC.unlock();
                        nVarC.p();
                        throw th;
                    }
                } while (i3 != 16);
            }
            if (this.f42151b.f42120i != p.f42160a) {
                do {
                    Object objPoll2 = this.f42157j.poll();
                    if (objPoll2 == null) {
                        return;
                    }
                    w wVar = (w) objPoll2;
                    d dVar2 = this.f42151b;
                    dVar2.getClass();
                    com.perfectcorp.thirdparty.com.google.common.cache.x xVarB3 = wVar.b();
                    int iC2 = xVarB3.c();
                    n nVarC2 = dVar2.c(iC2);
                    Object objD = xVarB3.d();
                    nVarC2.lock();
                    try {
                        AtomicReferenceArray atomicReferenceArray2 = nVarC2.g;
                        int length2 = iC2 & (atomicReferenceArray2.length() - 1);
                        com.perfectcorp.thirdparty.com.google.common.cache.x xVarB4 = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray2.get(length2);
                        int i5 = iC2;
                        nVar = nVarC2;
                        while (true) {
                            if (xVarB4 == null) {
                                nVar.unlock();
                                if (!nVar.isHeldByCurrentThread()) {
                                    nVar.p();
                                    break;
                                }
                                break;
                            }
                            int i6 = i5;
                            try {
                                Object objD2 = xVarB4.d();
                                if (xVarB4.c() == i6 && objD2 != null && nVar.f42151b.f42118f.b(objD, objD2)) {
                                    if (xVarB4.a() != wVar) {
                                        nVar.unlock();
                                        if (!nVar.isHeldByCurrentThread()) {
                                            nVar.p();
                                            break;
                                        }
                                        break;
                                    }
                                    nVar.f42153e++;
                                    com.perfectcorp.thirdparty.com.google.common.cache.x xVarB5 = nVar.b(xVarB4, xVarB4, objD2, wVar.get(), wVar, com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c);
                                    int i7 = nVar.f42152c - 1;
                                    atomicReferenceArray2.set(length2, xVarB5);
                                    nVar.f42152c = i7;
                                    nVar.unlock();
                                    if (!nVar.isHeldByCurrentThread()) {
                                        nVar.p();
                                        break;
                                    }
                                    break;
                                }
                                xVarB4 = xVarB4.b();
                                i5 = i6;
                            } catch (Throwable th2) {
                                th = th2;
                                Throwable th3 = th;
                                nVar.unlock();
                                if (nVar.isHeldByCurrentThread()) {
                                    throw th3;
                                }
                                nVar.p();
                                throw th3;
                            }
                        }
                        i2++;
                    } catch (Throwable th4) {
                        th = th4;
                        nVar = nVarC2;
                    }
                } while (i2 != 16);
            }
        }

        public final void w() {
            while (true) {
                com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) this.f42158k.poll();
                if (xVar == null) {
                    return;
                }
                AbstractQueue abstractQueue = this.n;
                if (abstractQueue.contains(xVar)) {
                    abstractQueue.add(xVar);
                }
            }
        }

        public final void x() {
            AtomicReferenceArray atomicReferenceArray = this.g;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i2 = this.f42152c;
            AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(length << 1);
            this.f42154f = (atomicReferenceArray2.length() * 3) / 4;
            int length2 = atomicReferenceArray2.length() - 1;
            for (int i3 = 0; i3 < length; i3++) {
                com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(i3);
                if (xVarB != null) {
                    com.perfectcorp.thirdparty.com.google.common.cache.x xVarB2 = xVarB.b();
                    int iC = xVarB.c() & length2;
                    if (xVarB2 == null) {
                        atomicReferenceArray2.set(iC, xVarB);
                    } else {
                        com.perfectcorp.thirdparty.com.google.common.cache.x xVar = xVarB;
                        while (xVarB2 != null) {
                            int iC2 = xVarB2.c() & length2;
                            if (iC2 != iC) {
                                xVar = xVarB2;
                                iC = iC2;
                            }
                            xVarB2 = xVarB2.b();
                        }
                        atomicReferenceArray2.set(iC, xVar);
                        while (xVarB != xVar) {
                            int iC3 = xVarB.c() & length2;
                            com.perfectcorp.thirdparty.com.google.common.cache.x xVarA = a(xVarB, (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray2.get(iC3));
                            if (xVarA != null) {
                                atomicReferenceArray2.set(iC3, xVarA);
                            } else {
                                q(xVarB);
                                i2--;
                            }
                            xVarB = xVarB.b();
                        }
                    }
                }
            }
            this.g = atomicReferenceArray2;
            this.f42152c = i2;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final p f42160a = new com.perfectcorp.thirdparty.com.google.common.cache.s();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final p f42161b = new com.perfectcorp.thirdparty.com.google.common.cache.t();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final p f42162c = new com.perfectcorp.thirdparty.com.google.common.cache.u();

        public abstract com.perfectcorp.thirdparty.com.google.common.base.e a();

        public abstract w b(n nVar, com.perfectcorp.thirdparty.com.google.common.cache.x xVar, Object obj);
    }

    public static class t<K, V> implements w<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f42173b;

        public t(Object obj) {
            this.f42173b = obj;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public int a() {
            return 1;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final com.perfectcorp.thirdparty.com.google.common.cache.x b() {
            return null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final boolean c() {
            return false;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final boolean d() {
            return true;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final Object e() {
            return this.f42173b;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final Object get() {
            return this.f42173b;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final w a(ReferenceQueue referenceQueue, Object obj, com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            return this;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final void a(Object obj) {
        }
    }

    public static final class u<K, V> extends s<K, V> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile long f42174f;
        public com.perfectcorp.thirdparty.com.google.common.cache.x g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42175h;

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void c(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42175h = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void d(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.g = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void f(long j2) {
            this.f42174f = j2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long h() {
            return this.f42174f;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x i() {
            return this.g;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x j() {
            return this.f42175h;
        }
    }

    public final class v extends d<K, V>.g<V> {
        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.g, java.util.Iterator
        public final Object next() {
            return next().f42130c;
        }
    }

    public interface w<K, V> {
        int a();

        w a(ReferenceQueue referenceQueue, Object obj, com.perfectcorp.thirdparty.com.google.common.cache.x xVar);

        void a(Object obj);

        com.perfectcorp.thirdparty.com.google.common.cache.x b();

        boolean c();

        boolean d();

        Object e();

        Object get();
    }

    static {
        Logger.getLogger(d.class.getName());
        u = new com.perfectcorp.thirdparty.com.google.common.cache.e();
        v = new com.perfectcorp.thirdparty.com.google.common.cache.f();
    }

    public d(CacheBuilder cacheBuilder, CacheLoader cacheLoader) {
        com.perfectcorp.thirdparty.com.google.common.base.r rVar = cacheBuilder.f42112a;
        this.f42117e = Math.min(4, 65536);
        p pVar = p.f42160a;
        MoreObjects.a(pVar);
        this.f42119h = pVar;
        MoreObjects.a(pVar);
        this.f42120i = pVar;
        MoreObjects.a(pVar);
        this.f42118f = pVar.a();
        MoreObjects.a(pVar);
        this.g = pVar.a();
        this.f42121j = -1L;
        CacheBuilder.b bVar = CacheBuilder.b.f42114a;
        MoreObjects.a(bVar);
        CacheBuilder.b bVar2 = bVar;
        this.f42122k = bVar2;
        CacheBuilder.a aVar = CacheBuilder.a.f42113a;
        MoreObjects.a(aVar);
        CacheBuilder.a aVar2 = aVar;
        this.m = aVar2;
        this.l = (AbstractQueue) (aVar2 == aVar ? v : new ConcurrentLinkedQueue());
        this.n = CacheBuilder.f42111c;
        int i2 = 0;
        this.o = EnumC0206d.a(pVar, e(), false);
        this.p = (a$a) rVar.a();
        this.q = cacheLoader;
        int iMin = Math.min(16, 1073741824);
        if (e() && bVar2 == bVar) {
            iMin = (int) Math.min(iMin, -1L);
        }
        int i3 = 1;
        int i4 = 1;
        int i5 = 0;
        while (i4 < this.f42117e && (!e() || i4 * 20 <= this.f42121j)) {
            i5++;
            i4 <<= 1;
        }
        this.f42116c = 32 - i5;
        this.f42115b = i4 - 1;
        this.d = new n[i4];
        int i6 = iMin / i4;
        while (i3 < (i6 * i4 < iMin ? i6 + 1 : i6)) {
            i3 <<= 1;
        }
        if (e()) {
            long j2 = this.f42121j;
            long j3 = i4;
            long j4 = (j2 / j3) + 1;
            long j5 = j2 % j3;
            while (true) {
                n[] nVarArr = this.d;
                if (i2 >= nVarArr.length) {
                    return;
                }
                if (i2 == j5) {
                    j4--;
                }
                long j6 = j4;
                nVarArr[i2] = new n(this, i3, j6, (a$a) rVar.a());
                i2++;
                j4 = j6;
            }
        } else {
            while (true) {
                n[] nVarArr2 = this.d;
                if (i2 >= nVarArr2.length) {
                    return;
                }
                nVarArr2[i2] = new n(this, i3, -1L, (a$a) rVar.a());
                i2++;
            }
        }
    }

    public static /* synthetic */ ArrayList d(AbstractCollection abstractCollection) {
        ArrayList arrayList = new ArrayList(abstractCollection.size());
        at.b(arrayList, abstractCollection.iterator());
        return arrayList;
    }

    public final int a(Object obj) {
        int iC;
        com.perfectcorp.thirdparty.com.google.common.base.e eVar = this.f42118f;
        if (obj == null) {
            eVar.getClass();
            iC = 0;
        } else {
            iC = eVar.c(obj);
        }
        int i2 = iC + ((iC << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = (i5 << 2) + (i5 << 14) + i5;
        return (i6 >>> 16) ^ i6;
    }

    public final n c(int i2) {
        return this.d[(i2 >>> this.f42116c) & this.f42115b];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        for (n nVar : this.d) {
            if (nVar.f42152c != 0) {
                nVar.lock();
                try {
                    nVar.h(nVar.f42151b.n.a());
                    AtomicReferenceArray atomicReferenceArray = nVar.g;
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(i2); xVarB != null; xVarB = xVarB.b()) {
                            if (xVarB.a().d()) {
                                Object objD = xVarB.d();
                                Object obj = xVarB.a().get();
                                com.perfectcorp.thirdparty.com.google.common.cache.y yVar = (objD == null || obj == null) ? com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c : com.perfectcorp.thirdparty.com.google.common.cache.y.f42189a;
                                xVarB.c();
                                nVar.l(objD, obj, xVarB.a().a(), yVar);
                            }
                        }
                    }
                    for (int i3 = 0; i3 < atomicReferenceArray.length(); i3++) {
                        atomicReferenceArray.set(i3, null);
                    }
                    if (nVar.f42151b.f42119h != p.f42160a) {
                        while (nVar.f42156i.poll() != null) {
                        }
                    }
                    if (nVar.f42151b.f42120i != p.f42160a) {
                        while (nVar.f42157j.poll() != null) {
                        }
                    }
                    nVar.m.clear();
                    nVar.n.clear();
                    nVar.l.set(0);
                    nVar.f42153e++;
                    nVar.f42152c = 0;
                    nVar.unlock();
                    nVar.p();
                } catch (Throwable th) {
                    nVar.unlock();
                    nVar.p();
                    throw th;
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int iA = a(obj);
        n nVarC = c(iA);
        nVarC.getClass();
        try {
            if (nVarC.f42152c == 0) {
                return false;
            }
            nVarC.f42151b.n.a();
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarU = nVarC.u(iA, obj);
            if (xVarU == null) {
                xVarU = null;
            } else {
                nVarC.f42151b.getClass();
            }
            if (xVarU == null) {
                return false;
            }
            return xVarU.a().get() != null;
        } finally {
            nVarC.g();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        int i2 = 0;
        if (obj == null) {
            return false;
        }
        long jA = this.n.a();
        n[] nVarArr = this.d;
        long j2 = -1;
        int i3 = 0;
        while (i3 < 3) {
            int length = nVarArr.length;
            long j3 = 0;
            int i4 = i2 == true ? 1 : 0;
            while (i4 < length) {
                n nVar = nVarArr[i4];
                int i5 = nVar.f42152c;
                AtomicReferenceArray atomicReferenceArray = nVar.g;
                int i6 = i2;
                while (i6 < atomicReferenceArray.length()) {
                    com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(i6);
                    while (true) {
                        n[] nVarArr2 = nVarArr;
                        if (xVarB != null) {
                            Object objC = nVar.c(xVarB, jA);
                            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = xVarB;
                            if (objC != null && this.g.b(obj, objC)) {
                                return true;
                            }
                            xVarB = xVar.b();
                            nVarArr = nVarArr2;
                        }
                    }
                    i6++;
                }
                j3 += (long) nVar.f42153e;
                i4++;
                i2 = i6;
            }
            boolean z2 = i2;
            n[] nVarArr3 = nVarArr;
            if (j3 == j2) {
                return z2;
            }
            i3++;
            j2 = j3;
            i2 = z2 ? 1 : 0;
            nVarArr = nVarArr3;
        }
        return i2 == true ? 1 : 0;
    }

    public final boolean e() {
        return this.f42121j >= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.t;
        if (set != null) {
            return set;
        }
        f fVar = new f(this);
        this.t = fVar;
        return fVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        int iA = a(obj);
        n nVarC = c(iA);
        nVarC.getClass();
        try {
            if (nVarC.f42152c != 0) {
                long jA = nVarC.f42151b.n.a();
                com.perfectcorp.thirdparty.com.google.common.cache.x xVarU = nVarC.u(iA, obj);
                if (xVarU == null) {
                    xVarU = null;
                } else {
                    nVarC.f42151b.getClass();
                }
                if (xVarU == null) {
                    return null;
                }
                Object obj2 = xVarU.a().get();
                if (obj2 != null) {
                    nVarC.r(xVarU, jA);
                    xVarU.d();
                    d dVar = nVarC.f42151b;
                    CacheLoader cacheLoader = dVar.q;
                    dVar.getClass();
                    return obj2;
                }
                nVarC.s();
            }
            return null;
        } finally {
            nVarC.g();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        n[] nVarArr = this.d;
        long j2 = 0;
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if (nVarArr[i2].f42152c != 0) {
                return false;
            }
            j2 += (long) nVarArr[i2].f42153e;
        }
        if (j2 == 0) {
            return true;
        }
        for (int i3 = 0; i3 < nVarArr.length; i3++) {
            if (nVarArr[i3].f42152c != 0) {
                return false;
            }
            j2 -= (long) nVarArr[i3].f42153e;
        }
        return j2 == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.r;
        if (set != null) {
            return set;
        }
        i iVar = new i(this);
        this.r = iVar;
        return iVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int iA = a(obj);
        return c(iA).f(obj, obj2, false, iA);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object putIfAbsent(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int iA = a(obj);
        return c(iA).f(obj, obj2, true, iA);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean remove(Object obj, Object obj2) {
        com.perfectcorp.thirdparty.com.google.common.cache.y yVar;
        boolean z2 = false;
        if (obj == null || obj2 == null) {
            return false;
        }
        int iA = a(obj);
        n nVarC = c(iA);
        nVarC.lock();
        try {
            nVarC.h(nVarC.f42151b.n.a());
            AtomicReferenceArray atomicReferenceArray = nVarC.g;
            int length = iA & (atomicReferenceArray.length() - 1);
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
            for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar; xVarB != null; xVarB = xVarB.b()) {
                Object objD = xVarB.d();
                if (xVarB.c() == iA && objD != null && nVarC.f42151b.f42118f.b(obj, objD)) {
                    w wVarA = xVarB.a();
                    Object obj3 = wVarA.get();
                    if (!nVarC.f42151b.g.b(obj2, obj3)) {
                        if (obj3 != null || !wVarA.d()) {
                            break;
                            break;
                        }
                        yVar = com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c;
                    } else {
                        yVar = com.perfectcorp.thirdparty.com.google.common.cache.y.f42189a;
                    }
                    com.perfectcorp.thirdparty.com.google.common.cache.y yVar2 = yVar;
                    nVarC.f42153e++;
                    com.perfectcorp.thirdparty.com.google.common.cache.x xVarB2 = nVarC.b(xVar, xVarB, objD, obj3, wVarA, yVar2);
                    int i2 = nVarC.f42152c - 1;
                    atomicReferenceArray.set(length, xVarB2);
                    nVarC.f42152c = i2;
                    if (yVar2 != com.perfectcorp.thirdparty.com.google.common.cache.y.f42189a) {
                        break;
                    }
                    z2 = true;
                    break;
                }
            }
            return z2;
        } finally {
            nVarC.unlock();
            nVarC.p();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        obj.getClass();
        obj3.getClass();
        if (obj2 == null) {
            return false;
        }
        int iA = a(obj);
        n nVarC = c(iA);
        nVarC.lock();
        try {
            long jA = nVarC.f42151b.n.a();
            nVarC.h(jA);
            AtomicReferenceArray atomicReferenceArray = nVarC.g;
            int length = iA & (atomicReferenceArray.length() - 1);
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
            long j2 = jA;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar;
            while (xVarB != null) {
                com.perfectcorp.thirdparty.com.google.common.cache.x xVar2 = xVar;
                Object objD = xVarB.d();
                if (xVarB.c() == iA && objD != null && nVarC.f42151b.f42118f.b(obj, objD)) {
                    long j3 = j2;
                    w wVarA = xVarB.a();
                    Object obj4 = wVarA.get();
                    if (obj4 != null) {
                        if (!nVarC.f42151b.g.b(obj2, obj4)) {
                            nVarC.t(xVarB, j3);
                            break;
                        }
                        nVarC.f42153e++;
                        nVarC.l(obj, obj4, wVarA.a(), com.perfectcorp.thirdparty.com.google.common.cache.y.f42190b);
                        nVarC.j(xVarB, obj3, j3);
                        nVarC.i(xVarB);
                        nVarC.unlock();
                        nVarC.p();
                        return true;
                    }
                    if (!wVarA.d()) {
                        break;
                    }
                    nVarC.f42153e++;
                    com.perfectcorp.thirdparty.com.google.common.cache.x xVarB2 = nVarC.b(xVar2, xVarB, objD, obj4, wVarA, com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c);
                    int i2 = nVarC.f42152c - 1;
                    atomicReferenceArray.set(length, xVarB2);
                    nVarC.f42152c = i2;
                    break;
                }
                xVar = xVar2;
                long j4 = j2;
                xVarB = xVarB.b();
                j2 = j4;
            }
            nVarC.unlock();
            nVarC.p();
            return false;
        } catch (Throwable th) {
            nVarC.unlock();
            nVarC.p();
            throw th;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        long jMax = 0;
        for (n nVar : this.d) {
            jMax += (long) Math.max(0, nVar.f42152c);
        }
        return Ints.a(jMax);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.s;
        if (collection != null) {
            return collection;
        }
        x xVar = new x(this);
        this.s = xVar;
        return xVar;
    }

    public static class aa<K, V> extends WeakReference<K> implements com.perfectcorp.thirdparty.com.google.common.cache.x<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f42124b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.common.cache.x f42125c;
        public volatile w d;

        public aa(ReferenceQueue referenceQueue, Object obj, int i2, com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            super(obj, referenceQueue);
            this.d = d.u;
            this.f42124b = i2;
            this.f42125c = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void a(long j2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void b(w wVar) {
            this.d = wVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void c(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void d(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void e(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void f(long j2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public com.perfectcorp.thirdparty.com.google.common.cache.x g() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public long h() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public com.perfectcorp.thirdparty.com.google.common.cache.x i() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public com.perfectcorp.thirdparty.com.google.common.cache.x j() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x b() {
            return this.f42125c;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final w a() {
            return this.d;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final int c() {
            return this.f42124b;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public final Object d() {
            return get();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public long e() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public com.perfectcorp.thirdparty.com.google.common.cache.x f() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void a(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            throw new UnsupportedOperationException();
        }
    }

    public static final class q<K, V> extends s<K, V> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile long f42163f;
        public com.perfectcorp.thirdparty.com.google.common.cache.x g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42164h;

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(long j2) {
            this.f42163f = j2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void e(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42164h = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x f() {
            return this.g;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x g() {
            return this.f42164h;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.g = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long e() {
            return this.f42163f;
        }
    }

    public static final class r<K, V> extends s<K, V> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile long f42165f;
        public com.perfectcorp.thirdparty.com.google.common.cache.x g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42166h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile long f42167i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42168j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42169k;

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(long j2) {
            this.f42165f = j2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void c(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42169k = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void d(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42168j = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void e(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42166h = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void f(long j2) {
            this.f42167i = j2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x g() {
            return this.f42166h;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long h() {
            return this.f42167i;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x i() {
            return this.f42168j;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x j() {
            return this.f42169k;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.g = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long e() {
            return this.f42165f;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x f() {
            return this.g;
        }
    }

    public static class s<K, V> extends b<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f42170b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f42171c;
        public final com.perfectcorp.thirdparty.com.google.common.cache.x d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile w f42172e = d.u;

        public s(Object obj, int i2, com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42170b = obj;
            this.f42171c = i2;
            this.d = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final w a() {
            return this.f42172e;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void b(w wVar) {
            this.f42172e = wVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final int c() {
            return this.f42171c;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final Object d() {
            return this.f42170b;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.b, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x b() {
            return this.d;
        }
    }

    public static final class y<K, V> extends aa<K, V> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile long f42178e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42179f;
        public com.perfectcorp.thirdparty.com.google.common.cache.x g;

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(long j2) {
            this.f42178e = j2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void e(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.g = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x f() {
            return this.f42179f;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x g() {
            return this.g;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42179f = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long e() {
            return this.f42178e;
        }
    }

    public static final class z<K, V> extends aa<K, V> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile long f42180e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42181f;
        public com.perfectcorp.thirdparty.com.google.common.cache.x g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile long f42182h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42183i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public com.perfectcorp.thirdparty.com.google.common.cache.x f42184j;

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(long j2) {
            this.f42180e = j2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void c(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42184j = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void d(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42183i = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void e(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.g = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void f(long j2) {
            this.f42182h = j2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x g() {
            return this.g;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long h() {
            return this.f42182h;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x i() {
            return this.f42183i;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x j() {
            return this.f42184j;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final void a(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            this.f42181f = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final long e() {
            return this.f42180e;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.aa, com.perfectcorp.thirdparty.com.google.common.cache.x
        public final com.perfectcorp.thirdparty.com.google.common.cache.x f() {
            return this.f42181f;
        }
    }

    public static class ab<K, V> extends WeakReference<V> implements w<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.common.cache.x f42126b;

        public ab(ReferenceQueue referenceQueue, Object obj, com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            super(obj, referenceQueue);
            this.f42126b = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public w a(ReferenceQueue referenceQueue, Object obj, com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            return new ab(referenceQueue, obj, xVar);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final com.perfectcorp.thirdparty.com.google.common.cache.x b() {
            return this.f42126b;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final boolean c() {
            return false;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final boolean d() {
            return true;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final Object e() {
            return get();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public int a() {
            return 1;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final void a(Object obj) {
        }
    }

    public static abstract class b<K, V> implements com.perfectcorp.thirdparty.com.google.common.cache.x<K, V> {
        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public w a() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void b(w wVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public int c() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void d(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void e(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void f(long j2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public com.perfectcorp.thirdparty.com.google.common.cache.x g() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public long h() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public com.perfectcorp.thirdparty.com.google.common.cache.x i() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public com.perfectcorp.thirdparty.com.google.common.cache.x j() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void a(long j2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public com.perfectcorp.thirdparty.com.google.common.cache.x b() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void c(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public Object d() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public long e() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public com.perfectcorp.thirdparty.com.google.common.cache.x f() {
            throw new UnsupportedOperationException();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.x
        public void a(com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            throw new UnsupportedOperationException();
        }
    }

    public static class o<K, V> extends SoftReference<V> implements w<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.common.cache.x f42159b;

        public o(ReferenceQueue referenceQueue, Object obj, com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            super(obj, referenceQueue);
            this.f42159b = xVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public w a(ReferenceQueue referenceQueue, Object obj, com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            return new o(referenceQueue, obj, xVar);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final com.perfectcorp.thirdparty.com.google.common.cache.x b() {
            return this.f42159b;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final boolean c() {
            return false;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final boolean d() {
            return true;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final Object e() {
            return get();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public int a() {
            return 1;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final void a(Object obj) {
        }
    }

    public abstract class a<T> extends AbstractSet<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConcurrentMap f42123b;

        public a(ConcurrentMap concurrentMap) {
            this.f42123b = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            this.f42123b.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return this.f42123b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f42123b.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final Object[] toArray() {
            return d.d(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final Object[] toArray(Object[] objArr) {
            return d.d(this).toArray(objArr);
        }
    }

    public final class x extends AbstractCollection<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConcurrentMap f42176b;

        public x(ConcurrentMap concurrentMap) {
            this.f42176b = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.f42176b.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f42176b.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return this.f42176b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new v();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f42176b.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final Object[] toArray() {
            return d.d(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            return d.d(this).toArray(objArr);
        }
    }

    public static class j<K, V> implements w<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile w f42147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SettableFuture f42148c;
        public final com.perfectcorp.thirdparty.com.google.common.base.p d;

        public j(w<K, V> wVar) {
            this.f42148c = new SettableFuture();
            this.d = new com.perfectcorp.thirdparty.com.google.common.base.p();
            this.f42147b = wVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final void a(Object obj) {
            if (obj != null) {
                this.f42148c.set(obj);
            } else {
                this.f42147b = d.u;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final ListenableFuture b(Object obj, CacheLoader cacheLoader) {
            try {
                this.d.a();
                if (this.f42147b.get() == null) {
                    Object objA = cacheLoader.a(obj);
                    return this.f42148c.set(objA) ? this.f42148c : Futures.g(objA);
                }
                obj.getClass();
                ListenableFuture listenableFutureG = Futures.g(cacheLoader.a(obj));
                com.perfectcorp.thirdparty.com.google.common.cache.q qVar = new com.perfectcorp.thirdparty.com.google.common.cache.q();
                qVar.f42188b = this;
                return Futures.h(listenableFutureG, qVar, com.perfectcorp.thirdparty.com.google.common.util.concurrent.w.a());
            } catch (Throwable th) {
                ListenableFuture listenableFutureF = this.f42148c.setException(th) ? this.f42148c : Futures.f(th);
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return listenableFutureF;
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final boolean c() {
            return true;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final boolean d() {
            return this.f42147b.d();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final Object e() {
            return Uninterruptibles.a(this.f42148c);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final Object get() {
            return this.f42147b.get();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final w a(ReferenceQueue referenceQueue, Object obj, com.perfectcorp.thirdparty.com.google.common.cache.x xVar) {
            return this;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final int a() {
            return this.f42147b.a();
        }

        public j() {
            this(d.u);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.d.w
        public final com.perfectcorp.thirdparty.com.google.common.cache.x b() {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        com.perfectcorp.thirdparty.com.google.common.cache.y yVar;
        if (obj == null) {
            return null;
        }
        int iA = a(obj);
        n nVarC = c(iA);
        nVarC.lock();
        try {
            nVarC.h(nVarC.f42151b.n.a());
            AtomicReferenceArray atomicReferenceArray = nVarC.g;
            int length = iA & (atomicReferenceArray.length() - 1);
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
            for (com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar; xVarB != null; xVarB = xVarB.b()) {
                Object objD = xVarB.d();
                if (xVarB.c() == iA && objD != null && nVarC.f42151b.f42118f.b(obj, objD)) {
                    w wVarA = xVarB.a();
                    Object obj2 = wVarA.get();
                    if (obj2 == null) {
                        if (!wVarA.d()) {
                            break;
                        }
                        yVar = com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c;
                    } else {
                        yVar = com.perfectcorp.thirdparty.com.google.common.cache.y.f42189a;
                    }
                    com.perfectcorp.thirdparty.com.google.common.cache.y yVar2 = yVar;
                    nVarC.f42153e++;
                    com.perfectcorp.thirdparty.com.google.common.cache.x xVarB2 = nVarC.b(xVar, xVarB, objD, obj2, wVarA, yVar2);
                    int i2 = nVarC.f42152c - 1;
                    atomicReferenceArray.set(length, xVarB2);
                    nVarC.f42152c = i2;
                    return obj2;
                }
            }
            return null;
        } finally {
            nVarC.unlock();
            nVarC.p();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object replace(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int iA = a(obj);
        n nVarC = c(iA);
        nVarC.lock();
        try {
            long jA = nVarC.f42151b.n.a();
            nVarC.h(jA);
            AtomicReferenceArray atomicReferenceArray = nVarC.g;
            int length = iA & (atomicReferenceArray.length() - 1);
            com.perfectcorp.thirdparty.com.google.common.cache.x xVar = (com.perfectcorp.thirdparty.com.google.common.cache.x) atomicReferenceArray.get(length);
            long j2 = jA;
            com.perfectcorp.thirdparty.com.google.common.cache.x xVarB = xVar;
            while (xVarB != null) {
                com.perfectcorp.thirdparty.com.google.common.cache.x xVar2 = xVar;
                Object objD = xVarB.d();
                if (xVarB.c() == iA && objD != null && nVarC.f42151b.f42118f.b(obj, objD)) {
                    long j3 = j2;
                    w wVarA = xVarB.a();
                    Object obj3 = wVarA.get();
                    if (obj3 != null) {
                        nVarC.f42153e++;
                        nVarC.l(obj, obj3, wVarA.a(), com.perfectcorp.thirdparty.com.google.common.cache.y.f42190b);
                        nVarC.j(xVarB, obj2, j3);
                        nVarC.i(xVarB);
                        nVarC.unlock();
                        nVarC.p();
                        return obj3;
                    }
                    if (!wVarA.d()) {
                        break;
                    }
                    nVarC.f42153e++;
                    com.perfectcorp.thirdparty.com.google.common.cache.x xVarB2 = nVarC.b(xVar2, xVarB, objD, obj3, wVarA, com.perfectcorp.thirdparty.com.google.common.cache.y.f42191c);
                    int i2 = nVarC.f42152c - 1;
                    atomicReferenceArray.set(length, xVarB2);
                    nVarC.f42152c = i2;
                    break;
                }
                long j4 = j2;
                xVarB = xVarB.b();
                xVar = xVar2;
                j2 = j4;
            }
            nVarC.unlock();
            nVarC.p();
            return null;
        } catch (Throwable th) {
            nVarC.unlock();
            nVarC.p();
            throw th;
        }
    }
}
