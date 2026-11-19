package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import com.perfectcorp.thirdparty.com.google.common.base.Predicates;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Collections2 {

    public static class b<F, T> extends AbstractCollection<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Collection f42196b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42197c;

        public b(Collection collection, Function function) {
            collection.getClass();
            this.f42196b = collection;
            this.f42197c = function;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.f42196b.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return this.f42196b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            Iterator it = this.f42196b.iterator();
            Function function = this.f42197c;
            function.getClass();
            return new ax(it, function);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f42196b.size();
        }
    }

    public static Collection a(Collection collection, Predicate predicate) {
        if (collection instanceof a) {
            a aVar = (a) collection;
            return new a(aVar.f42194b, Predicates.a(aVar.f42195c, predicate));
        }
        collection.getClass();
        predicate.getClass();
        return new a(collection, predicate);
    }

    public static Collection b(Collection collection, Function function) {
        return new b(collection, function);
    }

    public static class a<E> extends AbstractCollection<E> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Collection f42194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Predicate f42195c;

        public a(Collection collection, Predicate predicate) {
            this.f42194b = collection;
            this.f42195c = predicate;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean add(Object obj) {
            Preconditions.f(this.f42195c.apply(obj));
            return this.f42194b.add(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                Preconditions.f(this.f42195c.apply(it.next()));
            }
            return this.f42194b.addAll(collection);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            Collection collection = this.f42194b;
            boolean z = collection instanceof RandomAccess;
            Predicate predicate = this.f42195c;
            if (!z || !(collection instanceof List)) {
                Iterator it = collection.iterator();
                predicate.getClass();
                while (it.hasNext()) {
                    if (predicate.apply(it.next())) {
                        it.remove();
                    }
                }
                return;
            }
            List list = (List) collection;
            predicate.getClass();
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                Object obj = list.get(i3);
                if (!predicate.apply(obj)) {
                    if (i3 > i2) {
                        try {
                            list.set(i2, obj);
                        } catch (IllegalArgumentException | UnsupportedOperationException unused) {
                            Iterables.a(list, predicate, i2, i3);
                            return;
                        }
                    }
                    i2++;
                }
            }
            list.subList(i2, list.size()).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            boolean zContains;
            Collection collection = this.f42194b;
            collection.getClass();
            try {
                zContains = collection.contains(obj);
            } catch (ClassCastException | NullPointerException unused) {
                zContains = false;
            }
            if (zContains) {
                return this.f42195c.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0027 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:12:0x0028 A[RETURN] */
        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            Iterator it = this.f42194b.iterator();
            Predicate predicate = this.f42195c;
            Preconditions.d(predicate, "predicate");
            int i2 = 0;
            while (it.hasNext()) {
                if (predicate.apply(it.next())) {
                    if (i2 != -1) {
                        return false;
                    }
                    return true;
                }
                i2++;
            }
            i2 = -1;
            if (i2 != -1) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            Iterator<E> it = this.f42194b.iterator();
            it.getClass();
            Predicate predicate = this.f42195c;
            predicate.getClass();
            aw awVar = new aw();
            awVar.d = it;
            awVar.f42254e = predicate;
            awVar.f42260b = com.perfectcorp.thirdparty.com.google.common.collect.b.a.f42263b;
            return awVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            return contains(obj) && this.f42194b.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection collection) {
            Iterator<E> it = this.f42194b.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f42195c.apply(next) && collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection collection) {
            Iterator<E> it = this.f42194b.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f42195c.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            Iterator<E> it = this.f42194b.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                if (this.f42195c.apply(it.next())) {
                    i2++;
                }
            }
            return i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final Object[] toArray() {
            Iterator it = iterator();
            ArrayList arrayList = new ArrayList();
            at.b(arrayList, it);
            return arrayList.toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            Iterator it = iterator();
            ArrayList arrayList = new ArrayList();
            at.b(arrayList, it);
            return arrayList.toArray(objArr);
        }
    }
}
