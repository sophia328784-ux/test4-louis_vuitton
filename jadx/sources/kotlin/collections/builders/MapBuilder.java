package kotlin.collections.builders;

import defpackage.b21;
import defpackage.md;
import defpackage.v7;
import defpackage.x1;
import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\b\u0000\u0018\u0000 \u0013*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u00060\u0004j\u0002`\u0005:\u0006\u0014\u0015\u0016\u0017\u0018\u0019B\t\b\u0016¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u001a"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", "V", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "<init>", "()V", "", "initialCapacity", "(I)V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "input", "", "readObject", "(Ljava/io/ObjectInputStream;)V", "o", "Companion", "Itr", "KeysItr", "ValuesItr", "EntriesItr", "EntryRef", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class MapBuilder<K, V> implements Map<K, V>, Serializable, KMutableMap {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final MapBuilder p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f71808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f71809c;
    public int[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f71810e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f71811f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f71812h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f71813i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f71814j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MapBuilderKeys f71815k;
    public MapBuilderValues l;
    public MapBuilderEntries m;
    public boolean n;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Companion;", "", "", "MAGIC", "I", "INITIAL_CAPACITY", "INITIAL_MAX_PROBE_DISTANCE", "TOMBSTONE", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00050\u0004B\u001b\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class EntriesItr<K, V> extends Itr<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EntriesItr(MapBuilder<K, V> mapBuilder) {
            super(mapBuilder);
            mapBuilder.getClass();
        }

        @Override // java.util.Iterator
        public final Object next() {
            a();
            int i2 = this.f71819c;
            MapBuilder mapBuilder = this.f71818b;
            if (i2 >= mapBuilder.g) {
                b21.x();
                return null;
            }
            this.f71819c = i2 + 1;
            this.d = i2;
            EntryRef entryRef = new EntryRef(mapBuilder, i2);
            c();
            return entryRef;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntryRef;", "K", "V", "", "Lkotlin/collections/builders/MapBuilder;", "map", "", "index", "<init>", "(Lkotlin/collections/builders/MapBuilder;I)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class EntryRef<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MapBuilder f71816b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f71817c;
        public final int d;

        public EntryRef(MapBuilder<K, V> mapBuilder, int i2) {
            mapBuilder.getClass();
            this.f71816b = mapBuilder;
            this.f71817c = i2;
            this.d = mapBuilder.f71813i;
        }

        public final void a() {
            if (this.f71816b.f71813i != this.d) {
                throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
            }
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return Intrinsics.c(entry.getKey(), getKey()) && Intrinsics.c(entry.getValue(), getValue());
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            a();
            return this.f71816b.f71808b[this.f71817c];
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            a();
            Object[] objArr = this.f71816b.f71809c;
            objArr.getClass();
            return objArr[this.f71817c];
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Object key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            Object value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            a();
            MapBuilder mapBuilder = this.f71816b;
            mapBuilder.d();
            Object[] objArr = mapBuilder.f71809c;
            if (objArr == null) {
                int length = mapBuilder.f71808b.length;
                if (length < 0) {
                    md.n("capacity must be non-negative.");
                    return null;
                }
                objArr = new Object[length];
                mapBuilder.f71809c = objArr;
            }
            int i2 = this.f71817c;
            Object obj2 = objArr[i2];
            objArr[i2] = obj;
            return obj2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Itr;", "K", "V", "", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static class Itr<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MapBuilder f71818b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f71819c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f71820e;

        public Itr(MapBuilder<K, V> mapBuilder) {
            mapBuilder.getClass();
            this.f71818b = mapBuilder;
            this.d = -1;
            this.f71820e = mapBuilder.f71813i;
            c();
        }

        public final void a() {
            if (this.f71818b.f71813i == this.f71820e) {
                return;
            }
            v7.c();
        }

        public final void c() {
            while (true) {
                int i2 = this.f71819c;
                MapBuilder mapBuilder = this.f71818b;
                if (i2 >= mapBuilder.g || mapBuilder.d[i2] >= 0) {
                    return;
                } else {
                    this.f71819c = i2 + 1;
                }
            }
        }

        public final boolean hasNext() {
            return this.f71819c < this.f71818b.g;
        }

        public final void remove() {
            a();
            if (this.d == -1) {
                md.k("Call next() before removing element from the iterator.");
                return;
            }
            MapBuilder mapBuilder = this.f71818b;
            mapBuilder.d();
            mapBuilder.n(this.d);
            this.d = -1;
            this.f71820e = mapBuilder.f71813i;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/collections/builders/MapBuilder$KeysItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class KeysItr<K, V> extends Itr<K, V> implements Iterator<K>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KeysItr(MapBuilder<K, V> mapBuilder) {
            super(mapBuilder);
            mapBuilder.getClass();
        }

        @Override // java.util.Iterator
        public final Object next() {
            a();
            int i2 = this.f71819c;
            MapBuilder mapBuilder = this.f71818b;
            if (i2 >= mapBuilder.g) {
                b21.x();
                return null;
            }
            this.f71819c = i2 + 1;
            this.d = i2;
            Object obj = mapBuilder.f71808b[i2];
            c();
            return obj;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\b\u0012\u0004\u0012\u00028\u00030\u0004B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/collections/builders/MapBuilder$ValuesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class ValuesItr<K, V> extends Itr<K, V> implements Iterator<V>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ValuesItr(MapBuilder<K, V> mapBuilder) {
            super(mapBuilder);
            mapBuilder.getClass();
        }

        @Override // java.util.Iterator
        public final Object next() {
            a();
            int i2 = this.f71819c;
            MapBuilder mapBuilder = this.f71818b;
            if (i2 >= mapBuilder.g) {
                b21.x();
                return null;
            }
            this.f71819c = i2 + 1;
            this.d = i2;
            Object[] objArr = mapBuilder.f71809c;
            objArr.getClass();
            Object obj = objArr[this.d];
            c();
            return obj;
        }
    }

    static {
        MapBuilder mapBuilder = new MapBuilder(0);
        mapBuilder.n = true;
        p = mapBuilder;
    }

    public MapBuilder(int i2) {
        if (i2 < 0) {
            md.n("capacity must be non-negative.");
            throw null;
        }
        Object[] objArr = new Object[i2];
        int[] iArr = new int[i2];
        INSTANCE.getClass();
        int iHighestOneBit = Integer.highestOneBit((i2 < 1 ? 1 : i2) * 3);
        this.f71808b = objArr;
        this.f71809c = null;
        this.d = iArr;
        this.f71810e = new int[iHighestOneBit];
        this.f71811f = 2;
        this.g = 0;
        this.f71812h = Integer.numberOfLeadingZeros(iHighestOneBit) + 1;
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.n) {
            return new SerializedMap(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    public final int a(Object obj) {
        d();
        while (true) {
            int iK = k(obj);
            int i2 = this.f71811f * 2;
            int length = this.f71810e.length / 2;
            if (i2 > length) {
                i2 = length;
            }
            int i3 = 0;
            while (true) {
                int[] iArr = this.f71810e;
                int i4 = iArr[iK];
                if (i4 == 0) {
                    int i5 = this.g;
                    Object[] objArr = this.f71808b;
                    if (i5 >= objArr.length) {
                        g(1);
                        break;
                    }
                    int i6 = i5 + 1;
                    this.g = i6;
                    objArr[i5] = obj;
                    this.d[i5] = iK;
                    iArr[iK] = i6;
                    this.f71814j++;
                    this.f71813i++;
                    if (i3 > this.f71811f) {
                        this.f71811f = i3;
                    }
                    return i5;
                }
                if (Intrinsics.c(this.f71808b[i4 - 1], obj)) {
                    return -i4;
                }
                i3++;
                if (i3 > i2) {
                    m(this.f71810e.length * 2);
                    break;
                }
                iK = iK == 0 ? this.f71810e.length - 1 : iK - 1;
            }
        }
    }

    public final MapBuilder c() {
        d();
        this.n = true;
        if (this.f71814j > 0) {
            return this;
        }
        MapBuilder mapBuilder = p;
        mapBuilder.getClass();
        return mapBuilder;
    }

    @Override // java.util.Map
    public final void clear() {
        d();
        int i2 = this.g - 1;
        if (i2 >= 0) {
            int i3 = 0;
            while (true) {
                int[] iArr = this.d;
                int i4 = iArr[i3];
                if (i4 >= 0) {
                    this.f71810e[i4] = 0;
                    iArr[i3] = -1;
                }
                if (i3 == i2) {
                    break;
                } else {
                    i3++;
                }
            }
        }
        ListBuilderKt.b(0, this.g, this.f71808b);
        Object[] objArr = this.f71809c;
        if (objArr != null) {
            ListBuilderKt.b(0, this.g, objArr);
        }
        this.f71814j = 0;
        this.g = 0;
        this.f71813i++;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return h(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return i(obj) >= 0;
    }

    public final void d() {
        if (this.n) {
            x1.i();
        }
    }

    public final void e(boolean z) {
        int i2;
        Object[] objArr = this.f71809c;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i2 = this.g;
            if (i3 >= i2) {
                break;
            }
            int[] iArr = this.d;
            int i5 = iArr[i3];
            if (i5 >= 0) {
                Object[] objArr2 = this.f71808b;
                objArr2[i4] = objArr2[i3];
                if (objArr != null) {
                    objArr[i4] = objArr[i3];
                }
                if (z) {
                    iArr[i4] = i5;
                    this.f71810e[i5] = i4 + 1;
                }
                i4++;
            }
            i3++;
        }
        ListBuilderKt.b(i4, i2, this.f71808b);
        if (objArr != null) {
            ListBuilderKt.b(i4, this.g, objArr);
        }
        this.g = i4;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        MapBuilderEntries mapBuilderEntries = this.m;
        if (mapBuilderEntries != null) {
            return mapBuilderEntries;
        }
        MapBuilderEntries mapBuilderEntries2 = new MapBuilderEntries(this);
        this.m = mapBuilderEntries2;
        return mapBuilderEntries2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        return this.f71814j == map.size() && f(map.entrySet());
    }

    public final boolean f(Collection collection) {
        boolean zC;
        collection.getClass();
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    Map.Entry entry = (Map.Entry) obj;
                    int iH = h(entry.getKey());
                    if (iH < 0) {
                        zC = false;
                    } else {
                        Object[] objArr = this.f71809c;
                        objArr.getClass();
                        zC = Intrinsics.c(objArr[iH], entry.getValue());
                    }
                    if (!zC) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final void g(int i2) {
        Object[] objArr = this.f71808b;
        int length = objArr.length;
        int i3 = this.g;
        int i4 = length - i3;
        int i5 = i3 - this.f71814j;
        if (i4 < i2 && i4 + i5 >= i2 && i5 >= objArr.length / 4) {
            e(true);
            return;
        }
        int i6 = i3 + i2;
        if (i6 < 0) {
            throw new OutOfMemoryError();
        }
        if (i6 > objArr.length) {
            AbstractList.Companion companion = AbstractList.INSTANCE;
            int length2 = objArr.length;
            companion.getClass();
            int iE = AbstractList.Companion.e(length2, i6);
            Object[] objArr2 = this.f71808b;
            objArr2.getClass();
            this.f71808b = Arrays.copyOf(objArr2, iE);
            Object[] objArr3 = this.f71809c;
            this.f71809c = objArr3 != null ? Arrays.copyOf(objArr3, iE) : null;
            this.d = Arrays.copyOf(this.d, iE);
            INSTANCE.getClass();
            int iHighestOneBit = Integer.highestOneBit((iE >= 1 ? iE : 1) * 3);
            if (iHighestOneBit > this.f71810e.length) {
                m(iHighestOneBit);
            }
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int iH = h(obj);
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.f71809c;
        objArr.getClass();
        return objArr[iH];
    }

    public final int h(Object obj) {
        int iK = k(obj);
        int i2 = this.f71811f;
        while (true) {
            int i3 = this.f71810e[iK];
            if (i3 == 0) {
                return -1;
            }
            int i4 = i3 - 1;
            if (Intrinsics.c(this.f71808b[i4], obj)) {
                return i4;
            }
            i2--;
            if (i2 < 0) {
                return -1;
            }
            iK = iK == 0 ? this.f71810e.length - 1 : iK - 1;
        }
    }

    @Override // java.util.Map
    public final int hashCode() {
        EntriesItr entriesItr = new EntriesItr(this);
        int i2 = 0;
        while (entriesItr.hasNext()) {
            int i3 = entriesItr.f71819c;
            MapBuilder mapBuilder = entriesItr.f71818b;
            if (i3 >= mapBuilder.g) {
                b21.x();
                return 0;
            }
            entriesItr.f71819c = i3 + 1;
            entriesItr.d = i3;
            Object obj = mapBuilder.f71808b[i3];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = mapBuilder.f71809c;
            objArr.getClass();
            Object obj2 = objArr[entriesItr.d];
            int iHashCode2 = obj2 != null ? obj2.hashCode() : 0;
            entriesItr.c();
            i2 += iHashCode ^ iHashCode2;
        }
        return i2;
    }

    public final int i(Object obj) {
        int i2 = this.g;
        while (true) {
            i2--;
            if (i2 < 0) {
                return -1;
            }
            if (this.d[i2] >= 0) {
                Object[] objArr = this.f71809c;
                objArr.getClass();
                if (Intrinsics.c(objArr[i2], obj)) {
                    return i2;
                }
            }
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f71814j == 0;
    }

    public final int k(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.f71812h;
    }

    @Override // java.util.Map
    public final Set keySet() {
        MapBuilderKeys mapBuilderKeys = this.f71815k;
        if (mapBuilderKeys != null) {
            return mapBuilderKeys;
        }
        MapBuilderKeys mapBuilderKeys2 = new MapBuilderKeys(this);
        this.f71815k = mapBuilderKeys2;
        return mapBuilderKeys2;
    }

    public final void m(int i2) {
        int[] iArr;
        this.f71813i++;
        int i3 = 0;
        if (this.g > this.f71814j) {
            e(false);
        }
        this.f71810e = new int[i2];
        INSTANCE.getClass();
        this.f71812h = Integer.numberOfLeadingZeros(i2) + 1;
        while (i3 < this.g) {
            int i4 = i3 + 1;
            int iK = k(this.f71808b[i3]);
            int i5 = this.f71811f;
            while (true) {
                iArr = this.f71810e;
                if (iArr[iK] == 0) {
                    break;
                }
                i5--;
                if (i5 < 0) {
                    md.k("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
                    return;
                }
                iK = iK == 0 ? iArr.length - 1 : iK - 1;
            }
            iArr[iK] = i4;
            this.d[i3] = iK;
            i3 = i4;
        }
    }

    public final void n(int i2) {
        int i3;
        int i4;
        int iK;
        int[] iArr;
        Object[] objArr = this.f71808b;
        objArr.getClass();
        objArr[i2] = null;
        Object[] objArr2 = this.f71809c;
        if (objArr2 != null) {
            objArr2[i2] = null;
        }
        int length = this.d[i2];
        loop0: while (true) {
            int i5 = length;
            int i6 = 0;
            do {
                length = length == 0 ? this.f71810e.length - 1 : length - 1;
                int[] iArr2 = this.f71810e;
                i3 = iArr2[length];
                i6++;
                if (i6 > this.f71811f) {
                    iArr2[i5] = 0;
                    break loop0;
                } else if (i3 == 0) {
                    iArr2[i5] = 0;
                    break loop0;
                } else {
                    i4 = i3 - 1;
                    iK = k(this.f71808b[i4]) - length;
                    iArr = this.f71810e;
                }
            } while ((iK & (iArr.length - 1)) < i6);
            iArr[i5] = i3;
            this.d[i4] = i5;
        }
        this.d[i2] = -1;
        this.f71814j--;
        this.f71813i++;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        d();
        int iA = a(obj);
        Object[] objArr = this.f71809c;
        if (objArr == null) {
            int length = this.f71808b.length;
            if (length < 0) {
                md.n("capacity must be non-negative.");
                return null;
            }
            objArr = new Object[length];
            this.f71809c = objArr;
        }
        if (iA >= 0) {
            objArr[iA] = obj2;
            return null;
        }
        int i2 = (-iA) - 1;
        Object obj3 = objArr[i2];
        objArr[i2] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        map.getClass();
        d();
        Set<Map.Entry<K, V>> setEntrySet = map.entrySet();
        if (setEntrySet.isEmpty()) {
            return;
        }
        g(setEntrySet.size());
        for (Map.Entry<K, V> entry : setEntrySet) {
            int iA = a(entry.getKey());
            Object[] objArr = this.f71809c;
            if (objArr == null) {
                int length = this.f71808b.length;
                if (length < 0) {
                    md.n("capacity must be non-negative.");
                    return;
                } else {
                    objArr = new Object[length];
                    this.f71809c = objArr;
                }
            }
            if (iA >= 0) {
                objArr[iA] = entry.getValue();
            } else {
                int i2 = (-iA) - 1;
                if (!Intrinsics.c(entry.getValue(), objArr[i2])) {
                    objArr[i2] = entry.getValue();
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        d();
        int iH = h(obj);
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.f71809c;
        objArr.getClass();
        Object obj2 = objArr[iH];
        n(iH);
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f71814j;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.f71814j * 3) + 2);
        sb.append("{");
        EntriesItr entriesItr = new EntriesItr(this);
        int i2 = 0;
        while (entriesItr.hasNext()) {
            if (i2 > 0) {
                sb.append(", ");
            }
            int i3 = entriesItr.f71819c;
            MapBuilder mapBuilder = entriesItr.f71818b;
            if (i3 >= mapBuilder.g) {
                b21.x();
                return null;
            }
            entriesItr.f71819c = i3 + 1;
            entriesItr.d = i3;
            Object obj = mapBuilder.f71808b[i3];
            if (obj == mapBuilder) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = mapBuilder.f71809c;
            objArr.getClass();
            Object obj2 = objArr[entriesItr.d];
            if (obj2 == mapBuilder) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            entriesItr.c();
            i2++;
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        MapBuilderValues mapBuilderValues = this.l;
        if (mapBuilderValues != null) {
            return mapBuilderValues;
        }
        MapBuilderValues mapBuilderValues2 = new MapBuilderValues(this);
        this.l = mapBuilderValues2;
        return mapBuilderValues2;
    }

    public MapBuilder() {
        this(8);
    }
}
