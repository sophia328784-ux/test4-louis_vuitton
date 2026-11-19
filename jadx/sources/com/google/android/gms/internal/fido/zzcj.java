package com.google.android.gms.internal.fido;

import defpackage.fc;
import defpackage.md;
import defpackage.pq0;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcj extends zzcd implements NavigableMap {
    public static final Comparator g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzcj f29854h;
    public final transient zzcv d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient zzcc f29855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient zzcj f29856f;

    static {
        zzcv zzcvVarU = zzck.u(zzcq.f29861b);
        zzdd zzddVar = zzcc.f29848c;
        f29854h = new zzcj(zzcvVarU, zzct.f29862f, null);
    }

    public zzcj(zzcv zzcvVar, zzcc zzccVar, zzcj zzcjVar) {
        this.d = zzcvVar;
        this.f29855e = zzccVar;
        this.f29856f = zzcjVar;
    }

    public static zzcj d(TreeMap treeMap) {
        Comparator comparator = treeMap.comparator();
        int i2 = 1;
        int i3 = 0;
        final zzcq zzcqVar = zzcq.f29861b;
        boolean z = comparator == null || zzcqVar == comparator;
        Collection collectionEntrySet = treeMap.entrySet();
        if (!(collectionEntrySet instanceof Collection)) {
            Iterator it = collectionEntrySet.iterator();
            ArrayList arrayList = new ArrayList();
            it.getClass();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            collectionEntrySet = arrayList;
        }
        Map.Entry[] entryArr = (Map.Entry[]) collectionEntrySet.toArray(zzcd.f29849c);
        int length = entryArr.length;
        if (length == 0) {
            return e(zzcqVar);
        }
        if (length == 1) {
            Map.Entry entry = entryArr[0];
            Objects.requireNonNull(entry);
            Object key = entry.getKey();
            Object value = entry.getValue();
            Object[] objArr = {key};
            for (int i4 = 0; i4 < 1; i4++) {
                if (objArr[i4] == null) {
                    r81.d(pq0.k(i4, "at index "));
                    return null;
                }
            }
            zzcv zzcvVar = new zzcv(zzcc.p(1, objArr), zzcqVar);
            Object[] objArr2 = {value};
            while (i3 < 1) {
                if (objArr2[i3] == null) {
                    r81.d(pq0.k(i3, "at index "));
                    return null;
                }
                i3++;
            }
            return new zzcj(zzcvVar, zzcc.p(1, objArr2), null);
        }
        Object[] objArr3 = new Object[length];
        Object[] objArr4 = new Object[length];
        if (z) {
            while (i3 < length) {
                Map.Entry entry2 = entryArr[i3];
                Objects.requireNonNull(entry2);
                Object key2 = entry2.getKey();
                Object value2 = entry2.getValue();
                zzbv.a(key2, value2);
                objArr3[i3] = key2;
                objArr4[i3] = value2;
                i3++;
            }
        } else {
            Arrays.sort(entryArr, 0, length, new Comparator() { // from class: com.google.android.gms.internal.fido.zzcg
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Map.Entry entry3 = (Map.Entry) obj;
                    Map.Entry entry4 = (Map.Entry) obj2;
                    Objects.requireNonNull(entry3);
                    Objects.requireNonNull(entry4);
                    return zzcqVar.compare(entry3.getKey(), entry4.getKey());
                }
            });
            Map.Entry entry3 = entryArr[0];
            Objects.requireNonNull(entry3);
            Object key3 = entry3.getKey();
            objArr3[0] = key3;
            Object value3 = entry3.getValue();
            objArr4[0] = value3;
            zzbv.a(objArr3[0], value3);
            while (i2 < length) {
                Map.Entry entry4 = entryArr[i2 - 1];
                Objects.requireNonNull(entry4);
                Map.Entry entry5 = entryArr[i2];
                Objects.requireNonNull(entry5);
                Object key4 = entry5.getKey();
                Object value4 = entry5.getValue();
                zzbv.a(key4, value4);
                objArr3[i2] = key4;
                objArr4[i2] = value4;
                if (zzcqVar.compare(key3, key4) == 0) {
                    md.n(fc.i("Multiple entries with same key: ", String.valueOf(entry4), " and ", String.valueOf(entry5)));
                    return null;
                }
                i2++;
                key3 = key4;
            }
        }
        return new zzcj(new zzcv(zzcc.p(length, objArr3), zzcqVar), zzcc.p(length, objArr4), null);
    }

    public static zzcj e(Comparator comparator) {
        if (zzcq.f29861b == comparator) {
            return f29854h;
        }
        zzcv zzcvVarU = zzck.u(comparator);
        zzdd zzddVar = zzcc.f29848c;
        return new zzcj(zzcvVarU, zzct.f29862f, null);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        Map.Entry entryCeilingEntry = ceilingEntry(obj);
        if (entryCeilingEntry == null) {
            return null;
        }
        return entryCeilingEntry.getKey();
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return this.d.f29857e;
    }

    @Override // java.util.NavigableMap
    public final /* synthetic */ NavigableSet descendingKeySet() {
        return this.d.descendingSet();
    }

    @Override // java.util.NavigableMap
    public final /* bridge */ /* synthetic */ NavigableMap descendingMap() {
        zzcj zzcjVar = this.f29856f;
        if (zzcjVar != null) {
            return zzcjVar;
        }
        boolean zIsEmpty = isEmpty();
        zzcv zzcvVar = this.d;
        if (!zIsEmpty) {
            return new zzcj((zzcv) zzcvVar.descendingSet(), this.f29855e.n(), this);
        }
        Comparator comparator = zzcvVar.f29857e;
        return e((comparator instanceof zzcs ? (zzcs) comparator : new zzbw(comparator)).a());
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final zzcj headMap(Object obj, boolean z) {
        obj.getClass();
        return i(0, this.d.v(obj, z));
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) entrySet().q().get(0);
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return this.d.first();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        return headMap(obj, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        Map.Entry entryFloorEntry = floorEntry(obj);
        if (entryFloorEntry == null) {
            return null;
        }
        return entryFloorEntry.getKey();
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final zzcj subMap(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        if (this.d.f29857e.compare(obj, obj2) <= 0) {
            return headMap(obj2, z2).tailMap(obj, z);
        }
        md.n(zzbo.a("expected fromKey <= toKey but %s > %s", obj, obj2));
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0005  */
    @Override // com.google.android.gms.internal.fido.zzcd, java.util.Map
    public final Object get(Object obj) {
        int iBinarySearch;
        zzcv zzcvVar = this.d;
        if (obj == null) {
            iBinarySearch = -1;
        } else {
            try {
                iBinarySearch = Collections.binarySearch(zzcvVar.g, obj, zzcvVar.f29857e);
                if (iBinarySearch < 0) {
                    iBinarySearch = -1;
                }
            } catch (ClassCastException unused) {
            }
        }
        if (iBinarySearch == -1) {
            return null;
        }
        return this.f29855e.get(iBinarySearch);
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final zzcj tailMap(Object obj, boolean z) {
        obj.getClass();
        return i(this.d.x(obj, z), this.f29855e.size());
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        return tailMap(obj, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        Map.Entry entryHigherEntry = higherEntry(obj);
        if (entryHigherEntry == null) {
            return null;
        }
        return entryHigherEntry.getKey();
    }

    public final zzcj i(int i2, int i3) {
        zzcc zzccVar = this.f29855e;
        if (i2 == 0) {
            if (i3 == zzccVar.size()) {
                return this;
            }
            i2 = 0;
        }
        zzcv zzcvVar = this.d;
        return i2 == i3 ? e(zzcvVar.f29857e) : new zzcj(zzcvVar.z(i2, i3), zzccVar.subList(i2, i3), null);
    }

    @Override // java.util.Map, java.util.SortedMap
    public final /* synthetic */ Set keySet() {
        return this.d;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) entrySet().q().get(this.f29855e.size() - 1);
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return this.d.last();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        return headMap(obj, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        Map.Entry entryLowerEntry = lowerEntry(obj);
        if (entryLowerEntry == null) {
            return null;
        }
        return entryLowerEntry.getKey();
    }

    @Override // java.util.NavigableMap
    public final /* synthetic */ NavigableSet navigableKeySet() {
        return this.d;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final int size() {
        return this.f29855e.size();
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // java.util.Map, java.util.SortedMap
    public final /* synthetic */ Collection values() {
        return this.f29855e;
    }
}
