package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.b21;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class at {

    public static final class a<T> extends com.perfectcorp.thirdparty.com.google.common.collect.a<T> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final bz f42245e = new a(new Object[0]);
        public final Object[] d;

        public a(Object[] objArr) {
            super(0, 0);
            this.d = objArr;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.a
        public final Object a(int i2) {
            return this.d[i2];
        }
    }

    public static class b<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Iterator f42246b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Iterator f42247c;
        public Iterator d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ArrayDeque f42248e;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Iterator it;
            while (true) {
                Iterator it2 = this.f42247c;
                it2.getClass();
                if (it2.hasNext()) {
                    return true;
                }
                while (true) {
                    Iterator it3 = this.d;
                    if (it3 != null && it3.hasNext()) {
                        it = this.d;
                        break;
                    }
                    ArrayDeque arrayDeque = this.f42248e;
                    if (arrayDeque == null || arrayDeque.isEmpty()) {
                        it = null;
                        break;
                    }
                    this.d = (Iterator) this.f42248e.removeFirst();
                }
                this.d = it;
                if (it == null) {
                    return false;
                }
                Iterator it4 = (Iterator) it.next();
                this.f42247c = it4;
                if (it4 instanceof b) {
                    b bVar = (b) it4;
                    this.f42247c = bVar.f42247c;
                    if (this.f42248e == null) {
                        this.f42248e = new ArrayDeque();
                    }
                    this.f42248e.addFirst(this.d);
                    if (bVar.f42248e != null) {
                        while (!bVar.f42248e.isEmpty()) {
                            this.f42248e.addFirst((Iterator) bVar.f42248e.removeLast());
                        }
                    }
                    this.d = bVar.d;
                }
            }
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                b21.x();
                return null;
            }
            Iterator it = this.f42247c;
            this.f42246b = it;
            return it.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Preconditions.h("no calls to next() since the last call to remove()", this.f42246b != null);
            this.f42246b.remove();
            this.f42246b = null;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c implements Iterator<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f42249a = new c("INSTANCE", 0);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Preconditions.h("no calls to next() since the last call to remove()", false);
        }
    }

    public static Iterator a(Iterator it, Iterator it2) {
        it.getClass();
        it2.getClass();
        Iterator[] itArr = {it, it2};
        au auVar = new au();
        auVar.f42251c = itArr;
        auVar.f42250b = 0;
        b bVar = new b();
        bVar.f42247c = a.f42245e;
        bVar.d = auVar;
        return bVar;
    }

    public static boolean b(Collection collection, Iterator it) {
        collection.getClass();
        it.getClass();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }
}
