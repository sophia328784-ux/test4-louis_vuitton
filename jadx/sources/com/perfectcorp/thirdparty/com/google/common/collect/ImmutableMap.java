package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableMap<K, V> implements Serializable, Map<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient ImmutableSet f42203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient ImmutableSet f42204c;
    public transient ai d;

    public static ImmutableMap d(Map map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            return (ImmutableMap) map;
        }
        Set<Map.Entry<K, V>> setEntrySet = map.entrySet();
        boolean z = setEntrySet instanceof Collection;
        Builder builder = new Builder(z ? setEntrySet.size() : 4);
        if (z) {
            int size = setEntrySet.size() << 1;
            Object[] objArr = builder.f42205a;
            if (size > objArr.length) {
                builder.f42205a = Arrays.copyOf(objArr, ai.b.a(objArr.length, size));
            }
        }
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            builder.b(entry.getKey(), entry.getValue());
        }
        return builder.a();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet entrySet() {
        ImmutableSet immutableSet = this.f42203b;
        if (immutableSet != null) {
            return immutableSet;
        }
        bk bkVar = (bk) this;
        bk.a aVar = new bk.a(bkVar, bkVar.f42273f, bkVar.g);
        this.f42203b = aVar;
        return aVar;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet keySet() {
        ImmutableSet immutableSet = this.f42204c;
        if (immutableSet != null) {
            return immutableSet;
        }
        bk bkVar = (bk) this;
        bk.b bVar = new bk.b(bkVar, new bk.c(bkVar.f42273f, 0, bkVar.g));
        this.f42204c = bVar;
        return bVar;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final ai values() {
        ai aiVar = this.d;
        if (aiVar != null) {
            return aiVar;
        }
        bk bkVar = (bk) this;
        bk.c cVar = new bk.c(bkVar.f42273f, 1, bkVar.g);
        this.d = cVar;
        return cVar;
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return Sets.a(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        al.a.c(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) << 3, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public static class Builder<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object[] f42205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f42206b;

        public Builder(int i2) {
            this.f42205a = new Object[i2 * 2];
            this.f42206b = 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v3, types: [int[]] */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r8v7 */
        /* JADX WARN: Type inference failed for: r9v0, types: [int] */
        public final ImmutableMap a() {
            byte[] bArr;
            int i2;
            int i3;
            int i4;
            int i5 = this.f42206b;
            Object[] objArr = this.f42205a;
            if (i5 == 0) {
                return (bk) bk.f42271h;
            }
            ?? r1 = 0;
            int i6 = 0;
            if (i5 == 1) {
                al.a.e(objArr[0], objArr[1]);
                return new bk(1, null, objArr);
            }
            Preconditions.e(i5, objArr.length >> 1);
            int iP = ImmutableSet.p(i5);
            if (i5 == 1) {
                al.a.e(objArr[0], objArr[1]);
            } else {
                int i7 = iP - 1;
                if (iP <= 128) {
                    bArr = new byte[iP];
                    Arrays.fill(bArr, (byte) -1);
                    while (i6 < i5) {
                        int i8 = i6 * 2;
                        Object obj = objArr[i8];
                        Object obj2 = objArr[i8 ^ 1];
                        al.a.e(obj, obj2);
                        int iA = al.a.a(obj.hashCode());
                        while (true) {
                            i4 = iA & i7;
                            int i9 = bArr[i4] & 255;
                            if (i9 == 255) {
                                break;
                            }
                            if (objArr[i9].equals(obj)) {
                                throw bk.g(i9, obj, obj2, objArr);
                            }
                            iA = i4 + 1;
                        }
                        bArr[i4] = (byte) i8;
                        i6++;
                    }
                } else if (iP <= 32768) {
                    bArr = new short[iP];
                    Arrays.fill(bArr, (short) -1);
                    while (i6 < i5) {
                        int i10 = i6 * 2;
                        Object obj3 = objArr[i10];
                        Object obj4 = objArr[i10 ^ 1];
                        al.a.e(obj3, obj4);
                        int iA2 = al.a.a(obj3.hashCode());
                        while (true) {
                            i3 = iA2 & i7;
                            int i11 = bArr[i3] & HPKE.aead_EXPORT_ONLY;
                            if (i11 == 65535) {
                                break;
                            }
                            if (objArr[i11].equals(obj3)) {
                                throw bk.g(i11, obj3, obj4, objArr);
                            }
                            iA2 = i3 + 1;
                        }
                        bArr[i3] = (short) i10;
                        i6++;
                    }
                } else {
                    bArr = new int[iP];
                    Arrays.fill((int[]) bArr, -1);
                    while (i6 < i5) {
                        int i12 = i6 * 2;
                        Object obj5 = objArr[i12];
                        Object obj6 = objArr[i12 ^ 1];
                        al.a.e(obj5, obj6);
                        int iA3 = al.a.a(obj5.hashCode());
                        while (true) {
                            i2 = iA3 & i7;
                            ?? r9 = bArr[i2];
                            if (r9 == -1) {
                                break;
                            }
                            if (objArr[r9].equals(obj5)) {
                                throw bk.g(r9, obj5, obj6, objArr);
                            }
                            iA3 = i2 + 1;
                        }
                        bArr[i2] = i12;
                        i6++;
                    }
                }
                r1 = bArr;
            }
            return new bk(i5, r1, objArr);
        }

        public final void b(Object obj, Object obj2) {
            int i2 = (this.f42206b + 1) << 1;
            Object[] objArr = this.f42205a;
            if (i2 > objArr.length) {
                this.f42205a = Arrays.copyOf(objArr, ai.b.a(objArr.length, i2));
            }
            al.a.e(obj, obj2);
            Object[] objArr2 = this.f42205a;
            int i3 = this.f42206b;
            int i4 = i3 * 2;
            objArr2[i4] = obj;
            objArr2[i4 + 1] = obj2;
            this.f42206b = i3 + 1;
        }

        public Builder() {
            this(4);
        }
    }
}
