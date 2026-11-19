package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.b21;
import defpackage.md;
import defpackage.v7;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
final class q<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f42324k = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient int[] f42325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient long[] f42326c;
    public transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient Object[] f42327e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient int f42328f;
    public transient int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public transient Set f42329h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public transient Set f42330i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public transient Collection f42331j;

    public class a extends AbstractSet<Map.Entry<K, V>> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            q.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            int i2 = q.f42324k;
            q qVar = q.this;
            int iA = qVar.a(key);
            return iA != -1 && com.perfectcorp.thirdparty.com.google.common.base.g.a.a(qVar.f42327e[iA], entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new s(q.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            int i2 = q.f42324k;
            q qVar = q.this;
            int iA = qVar.a(key);
            if (iA == -1 || !com.perfectcorp.thirdparty.com.google.common.base.g.a.a(qVar.f42327e[iA], entry.getValue())) {
                return false;
            }
            q.e(qVar, iA);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return q.this.g;
        }
    }

    public abstract class b<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f42333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f42334c;
        public int d;

        public b() {
            this.f42333b = q.this.f42328f;
            this.f42334c = q.this.isEmpty() ? -1 : 0;
            this.d = -1;
        }

        public abstract Object a(int i2);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f42334c >= 0;
        }

        @Override // java.util.Iterator
        public final Object next() {
            q qVar = q.this;
            if (qVar.f42328f != this.f42333b) {
                v7.c();
                return null;
            }
            if (!hasNext()) {
                b21.x();
                return null;
            }
            int i2 = this.f42334c;
            this.d = i2;
            Object objA = a(i2);
            int i3 = this.f42334c + 1;
            if (i3 >= qVar.g) {
                i3 = -1;
            }
            this.f42334c = i3;
            return objA;
        }

        @Override // java.util.Iterator
        public final void remove() {
            q qVar = q.this;
            if (qVar.f42328f != this.f42333b) {
                v7.c();
                return;
            }
            Preconditions.h("no calls to next() since the last call to remove()", this.d >= 0);
            this.f42333b++;
            q.e(qVar, this.d);
            this.f42334c--;
            this.d = -1;
        }
    }

    public class c extends AbstractSet<K> {
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            q.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return q.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new r(q.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            int i2 = q.f42324k;
            q qVar = q.this;
            int iA = qVar.a(obj);
            if (iA == -1) {
                return false;
            }
            q.e(qVar, iA);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return q.this.g;
        }
    }

    public final class d extends i<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f42337b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f42338c;

        public d(int i2) {
            this.f42337b = q.this.d[i2];
            this.f42338c = i2;
        }

        public final void a() {
            int i2 = this.f42338c;
            Object obj = this.f42337b;
            q qVar = q.this;
            if (i2 == -1 || i2 >= qVar.g || !com.perfectcorp.thirdparty.com.google.common.base.g.a.a(obj, qVar.d[i2])) {
                int i3 = q.f42324k;
                this.f42338c = qVar.a(obj);
            }
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f42337b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            a();
            int i2 = this.f42338c;
            if (i2 == -1) {
                return null;
            }
            return q.this.f42327e[i2];
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.i, java.util.Map.Entry
        public final Object setValue(Object obj) {
            a();
            int i2 = this.f42338c;
            q qVar = q.this;
            if (i2 == -1) {
                qVar.put(this.f42337b, obj);
                return null;
            }
            Object[] objArr = qVar.f42327e;
            Object obj2 = objArr[i2];
            objArr[i2] = obj;
            return obj2;
        }
    }

    public class e extends AbstractCollection<V> {
        public e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            q.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new t(q.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return q.this.g;
        }
    }

    public static q c() {
        q qVar = new q();
        qVar.f42328f = Math.max(1, 3);
        return qVar;
    }

    public static /* synthetic */ void e(q qVar, int i2) {
        qVar.d((int) (qVar.f42326c[i2] >>> 32), qVar.d[i2]);
    }

    public static q f() {
        q qVar = new q();
        qVar.f42328f = Math.max(1, 12);
        return qVar;
    }

    public final int a(Object obj) {
        if (this.f42325b == null) {
            return -1;
        }
        int iB = al.a.b(obj);
        int[] iArr = this.f42325b;
        int i2 = iArr[(iArr.length - 1) & iB];
        while (i2 != -1) {
            long j2 = this.f42326c[i2];
            if (((int) (j2 >>> 32)) == iB && com.perfectcorp.thirdparty.com.google.common.base.g.a.a(obj, this.d[i2])) {
                return i2;
            }
            i2 = (int) j2;
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (this.f42325b == null) {
            return;
        }
        this.f42328f++;
        Arrays.fill(this.d, 0, this.g, (Object) null);
        Arrays.fill(this.f42327e, 0, this.g, (Object) null);
        Arrays.fill(this.f42325b, -1);
        Arrays.fill(this.f42326c, 0, this.g, -1L);
        this.g = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return a(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        for (int i2 = 0; i2 < this.g; i2++) {
            if (com.perfectcorp.thirdparty.com.google.common.base.g.a.a(obj, this.f42327e[i2])) {
                return true;
            }
        }
        return false;
    }

    public final Object d(int i2, Object obj) {
        Object obj2;
        long[] jArr;
        long j2;
        int[] iArr = this.f42325b;
        int length = (iArr.length - 1) & i2;
        int i3 = iArr[length];
        if (i3 == -1) {
            return null;
        }
        int i4 = -1;
        while (true) {
            if (((int) (this.f42326c[i3] >>> 32)) == i2 && com.perfectcorp.thirdparty.com.google.common.base.g.a.a(obj, this.d[i3])) {
                Object[] objArr = this.f42327e;
                Object obj3 = objArr[i3];
                if (i4 == -1) {
                    this.f42325b[length] = (int) this.f42326c[i3];
                    obj2 = null;
                } else {
                    long[] jArr2 = this.f42326c;
                    obj2 = null;
                    jArr2[i4] = (((long) ((int) jArr2[i3])) & BodyPartID.bodyIdMax) | (jArr2[i4] & (-4294967296L));
                }
                int i5 = this.g - 1;
                Object[] objArr2 = this.d;
                if (i3 < i5) {
                    objArr2[i3] = objArr2[i5];
                    objArr[i3] = objArr[i5];
                    objArr2[i5] = obj2;
                    objArr[i5] = obj2;
                    long[] jArr3 = this.f42326c;
                    long j3 = jArr3[i5];
                    jArr3[i3] = j3;
                    jArr3[i5] = -1;
                    int[] iArr2 = this.f42325b;
                    int length2 = ((int) (j3 >>> 32)) & (iArr2.length - 1);
                    int i6 = iArr2[length2];
                    if (i6 == i5) {
                        iArr2[length2] = i3;
                    } else {
                        while (true) {
                            jArr = this.f42326c;
                            j2 = jArr[i6];
                            int i7 = (int) j2;
                            if (i7 == i5) {
                                break;
                            }
                            i6 = i7;
                        }
                        jArr[i6] = (j2 & (-4294967296L)) | (((long) i3) & BodyPartID.bodyIdMax);
                    }
                } else {
                    objArr2[i3] = obj2;
                    objArr[i3] = obj2;
                    this.f42326c[i3] = -1;
                }
                this.g--;
                this.f42328f++;
                return obj3;
            }
            int i8 = (int) this.f42326c[i3];
            if (i8 == -1) {
                return null;
            }
            i4 = i3;
            i3 = i8;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.f42330i;
        if (set != null) {
            return set;
        }
        a aVar = new a();
        this.f42330i = aVar;
        return aVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        int iA = a(obj);
        if (iA == -1) {
            return null;
        }
        return this.f42327e[iA];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return this.g == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.f42329h;
        if (set != null) {
            return set;
        }
        c cVar = new c();
        this.f42329h = cVar;
        return cVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int[] iArr = this.f42325b;
        if (iArr == null) {
            Preconditions.h("Arrays already allocated", iArr == null);
            int i2 = this.f42328f;
            int iMax = Math.max(i2, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > ((int) (((double) iHighestOneBit) * 1.0d)) && (iHighestOneBit = iHighestOneBit << 1) <= 0) {
                iHighestOneBit = 1073741824;
            }
            int[] iArr2 = new int[iHighestOneBit];
            Arrays.fill(iArr2, -1);
            this.f42325b = iArr2;
            long[] jArr = new long[i2];
            Arrays.fill(jArr, -1L);
            this.f42326c = jArr;
            this.d = new Object[i2];
            this.f42327e = new Object[i2];
        }
        long[] jArr2 = this.f42326c;
        Object[] objArr = this.d;
        Object[] objArr2 = this.f42327e;
        int iB = al.a.b(obj);
        int[] iArr3 = this.f42325b;
        int length = (iArr3.length - 1) & iB;
        int i3 = this.g;
        int i4 = iArr3[length];
        if (i4 == -1) {
            iArr3[length] = i3;
        } else {
            while (true) {
                long j2 = jArr2[i4];
                if (((int) (j2 >>> 32)) == iB && com.perfectcorp.thirdparty.com.google.common.base.g.a.a(obj, objArr[i4])) {
                    Object obj3 = objArr2[i4];
                    objArr2[i4] = obj2;
                    return obj3;
                }
                int i5 = (int) j2;
                if (i5 == -1) {
                    jArr2[i4] = (j2 & (-4294967296L)) | (((long) i3) & BodyPartID.bodyIdMax);
                    break;
                }
                i4 = i5;
            }
        }
        if (i3 == Integer.MAX_VALUE) {
            md.k("Cannot contain more than Integer.MAX_VALUE elements!");
            return null;
        }
        int i6 = i3 + 1;
        int length2 = this.f42326c.length;
        if (i6 > length2) {
            int iMax2 = Math.max(1, length2 >>> 1) + length2;
            int i7 = iMax2 >= 0 ? iMax2 : Integer.MAX_VALUE;
            if (i7 != length2) {
                this.d = Arrays.copyOf(this.d, i7);
                this.f42327e = Arrays.copyOf(this.f42327e, i7);
                long[] jArr3 = this.f42326c;
                int length3 = jArr3.length;
                long[] jArrCopyOf = Arrays.copyOf(jArr3, i7);
                if (i7 > length3) {
                    Arrays.fill(jArrCopyOf, length3, i7, -1L);
                }
                this.f42326c = jArrCopyOf;
            }
        }
        this.f42326c[i3] = (((long) iB) << 32) | BodyPartID.bodyIdMax;
        this.d[i3] = obj;
        this.f42327e[i3] = obj2;
        this.g = i6;
        int length4 = this.f42325b.length;
        if (i3 > ((double) length4) * 1.0d && length4 < 1073741824) {
            int i8 = length4 * 2;
            int[] iArr4 = new int[i8];
            Arrays.fill(iArr4, -1);
            long[] jArr4 = this.f42326c;
            int i9 = i8 - 1;
            for (int i10 = 0; i10 < this.g; i10++) {
                int i11 = (int) (jArr4[i10] >>> 32);
                int i12 = i11 & i9;
                int i13 = iArr4[i12];
                iArr4[i12] = i10;
                jArr4[i10] = (((long) i11) << 32) | (((long) i13) & BodyPartID.bodyIdMax);
            }
            this.f42325b = iArr4;
        }
        this.f42328f++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (this.f42325b == null) {
            return null;
        }
        return d(al.a.b(obj), obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.f42331j;
        if (collection != null) {
            return collection;
        }
        e eVar = new e();
        this.f42331j = eVar;
        return eVar;
    }
}
