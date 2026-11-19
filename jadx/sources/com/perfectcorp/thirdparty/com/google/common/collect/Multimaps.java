package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Multimaps {

    public static abstract class a<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            ((j.a) this).f42319b.d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return ((j.a) this).f42319b.i(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return ((j.a) this).f42319b.m(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return ((j.a) this).f42319b.size();
        }
    }

    public static ak a(Iterable iterable, Function function) {
        Map map;
        Iterator it = iterable.iterator();
        ak.a aVar = new ak.a();
        while (true) {
            boolean zHasNext = it.hasNext();
            map = aVar.f42234a;
            if (!zHasNext) {
                break;
            }
            Object next = it.next();
            Preconditions.d(next, it);
            Object objApply = function.apply(next);
            al.a.e(objApply, next);
            q qVar = (q) map;
            Collection arrayList = (Collection) qVar.get(objApply);
            if (arrayList == null) {
                arrayList = new ArrayList();
                qVar.put(objApply, arrayList);
            }
            arrayList.add(next);
        }
        Collection collectionEntrySet = ((q) map).entrySet();
        if (((AbstractCollection) collectionEntrySet).isEmpty()) {
            return x.f42353h;
        }
        q.a<Map.Entry> aVar2 = (q.a) collectionEntrySet;
        ImmutableMap.Builder builder = new ImmutableMap.Builder(q.this.g);
        int size = 0;
        for (Map.Entry entry : aVar2) {
            Object key = entry.getKey();
            ImmutableList immutableListQ = ImmutableList.q((Collection) entry.getValue());
            if (!immutableListQ.isEmpty()) {
                builder.b(key, immutableListQ);
                size = immutableListQ.size() + size;
            }
        }
        return new ak(size, builder.a());
    }

    public static Multimap b(ArrayListMultimap arrayListMultimap) {
        return new bs.g(arrayListMultimap, null);
    }
}
