package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes2.dex */
final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ImmutableMap f33700h = new RegularImmutableMap(0, null, new Object[0]);
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object f33701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient Object[] f33702f;
    public final transient int g;

    public static final class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient ImmutableMap f33703e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final transient Object[] f33704f;
        public final transient int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final transient int f33705h;

        public EntrySet(ImmutableMap immutableMap, Object[] objArr, int i2, int i3) {
            this.f33703e = immutableMap;
            this.f33704f = objArr;
            this.g = i2;
            this.f33705h = i3;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (value != null && value.equals(this.f33703e.get(key))) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int h(int i2, Object[] objArr) {
            return f().h(i2, objArr);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean o() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableCollection
        /* JADX INFO: renamed from: p */
        public final UnmodifiableIterator iterator() {
            return f().listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f33705h;
        }

        @Override // com.google.common.collect.ImmutableSet
        public final ImmutableList u() {
            return new ImmutableList<Map.Entry<Object, Object>>() { // from class: com.google.common.collect.RegularImmutableMap.EntrySet.1
                @Override // java.util.List
                public final Object get(int i2) {
                    EntrySet entrySet = EntrySet.this;
                    Preconditions.j(i2, entrySet.f33705h);
                    Object[] objArr = entrySet.f33704f;
                    int i3 = i2 * 2;
                    int i4 = entrySet.g;
                    Object obj = objArr[i3 + i4];
                    Objects.requireNonNull(obj);
                    Object obj2 = objArr[i3 + (i4 ^ 1)];
                    Objects.requireNonNull(obj2);
                    return new AbstractMap.SimpleImmutableEntry(obj, obj2);
                }

                @Override // com.google.common.collect.ImmutableCollection
                public final boolean o() {
                    return true;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public final int size() {
                    return EntrySet.this.f33705h;
                }

                @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
                public Object writeReplace() {
                    return super.writeReplace();
                }
            };
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static final class KeySet<K> extends ImmutableSet<K> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient ImmutableMap f33706e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final transient ImmutableList f33707f;

        public KeySet(ImmutableMap immutableMap, ImmutableList immutableList) {
            this.f33706e = immutableMap;
            this.f33707f = immutableList;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f33706e.get(obj) != null;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public final ImmutableList f() {
            return this.f33707f;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int h(int i2, Object[] objArr) {
            return this.f33707f.h(i2, objArr);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean o() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableCollection
        /* JADX INFO: renamed from: p */
        public final UnmodifiableIterator iterator() {
            return this.f33707f.listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f33706e.size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static final class KeysOrValuesAsList extends ImmutableList<Object> {
        public final transient Object[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient int f33708e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final transient int f33709f;

        public KeysOrValuesAsList(Object[] objArr, int i2, int i3) {
            this.d = objArr;
            this.f33708e = i2;
            this.f33709f = i3;
        }

        @Override // java.util.List
        public final Object get(int i2) {
            Preconditions.j(i2, this.f33709f);
            Object obj = this.d[(i2 * 2) + this.f33708e];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean o() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f33709f;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public RegularImmutableMap(int i2, Object obj, Object[] objArr) {
        this.f33701e = obj;
        this.f33702f = objArr;
        this.g = i2;
    }

    public static RegularImmutableMap p(int i2, Object[] objArr, ImmutableMap.Builder builder) {
        if (i2 == 0) {
            return (RegularImmutableMap) f33700h;
        }
        if (i2 == 1) {
            Objects.requireNonNull(objArr[0]);
            Objects.requireNonNull(objArr[1]);
            return new RegularImmutableMap(1, null, objArr);
        }
        Preconditions.n(i2, objArr.length >> 1);
        Object objQ = q(objArr, i2, ImmutableSet.q(i2), 0);
        if (objQ instanceof Object[]) {
            Object[] objArr2 = (Object[]) objQ;
            ImmutableMap.Builder.DuplicateKey duplicateKey = (ImmutableMap.Builder.DuplicateKey) objArr2[2];
            if (builder == null) {
                throw duplicateKey.a();
            }
            builder.f33596c = duplicateKey;
            Object obj = objArr2[0];
            int iIntValue = ((Integer) objArr2[1]).intValue();
            objArr = Arrays.copyOf(objArr, iIntValue * 2);
            objQ = obj;
            i2 = iIntValue;
        }
        return new RegularImmutableMap(i2, objQ, objArr);
    }

    public static Object q(Object[] objArr, int i2, int i3, int i4) {
        ImmutableMap.Builder.DuplicateKey duplicateKey = null;
        if (i2 == 1) {
            Objects.requireNonNull(objArr[i4]);
            Objects.requireNonNull(objArr[i4 ^ 1]);
            return null;
        }
        int i5 = i3 - 1;
        int i6 = 0;
        if (i3 <= 128) {
            byte[] bArr = new byte[i3];
            Arrays.fill(bArr, (byte) -1);
            int i7 = 0;
            while (i6 < i2) {
                int i8 = (i6 * 2) + i4;
                int i9 = (i7 * 2) + i4;
                Object obj = objArr[i8];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i8 ^ 1];
                Objects.requireNonNull(obj2);
                int iA = Hashing.a(obj.hashCode());
                while (true) {
                    int i10 = iA & i5;
                    int i11 = bArr[i10] & 255;
                    if (i11 == 255) {
                        bArr[i10] = (byte) i9;
                        if (i7 < i6) {
                            objArr[i9] = obj;
                            objArr[i9 ^ 1] = obj2;
                        }
                        i7++;
                        break;
                    }
                    if (obj.equals(objArr[i11])) {
                        int i12 = i11 ^ 1;
                        Object obj3 = objArr[i12];
                        Objects.requireNonNull(obj3);
                        duplicateKey = new ImmutableMap.Builder.DuplicateKey(obj, obj2, obj3);
                        objArr[i12] = obj2;
                        break;
                    }
                    iA = i10 + 1;
                }
                i6++;
            }
            return i7 == i2 ? bArr : new Object[]{bArr, Integer.valueOf(i7), duplicateKey};
        }
        if (i3 <= 32768) {
            short[] sArr = new short[i3];
            Arrays.fill(sArr, (short) -1);
            int i13 = 0;
            while (i6 < i2) {
                int i14 = (i6 * 2) + i4;
                int i15 = (i13 * 2) + i4;
                Object obj4 = objArr[i14];
                Objects.requireNonNull(obj4);
                Object obj5 = objArr[i14 ^ 1];
                Objects.requireNonNull(obj5);
                int iA2 = Hashing.a(obj4.hashCode());
                while (true) {
                    int i16 = iA2 & i5;
                    int i17 = sArr[i16] & HPKE.aead_EXPORT_ONLY;
                    if (i17 == 65535) {
                        sArr[i16] = (short) i15;
                        if (i13 < i6) {
                            objArr[i15] = obj4;
                            objArr[i15 ^ 1] = obj5;
                        }
                        i13++;
                        break;
                    }
                    if (obj4.equals(objArr[i17])) {
                        int i18 = i17 ^ 1;
                        Object obj6 = objArr[i18];
                        Objects.requireNonNull(obj6);
                        duplicateKey = new ImmutableMap.Builder.DuplicateKey(obj4, obj5, obj6);
                        objArr[i18] = obj5;
                        break;
                    }
                    iA2 = i16 + 1;
                }
                i6++;
            }
            return i13 == i2 ? sArr : new Object[]{sArr, Integer.valueOf(i13), duplicateKey};
        }
        int[] iArr = new int[i3];
        Arrays.fill(iArr, -1);
        int i19 = 0;
        while (i6 < i2) {
            int i20 = (i6 * 2) + i4;
            int i21 = (i19 * 2) + i4;
            Object obj7 = objArr[i20];
            Objects.requireNonNull(obj7);
            Object obj8 = objArr[i20 ^ 1];
            Objects.requireNonNull(obj8);
            int iA3 = Hashing.a(obj7.hashCode());
            while (true) {
                int i22 = iA3 & i5;
                int i23 = iArr[i22];
                if (i23 == -1) {
                    iArr[i22] = i21;
                    if (i19 < i6) {
                        objArr[i21] = obj7;
                        objArr[i21 ^ 1] = obj8;
                    }
                    i19++;
                    break;
                }
                if (obj7.equals(objArr[i23])) {
                    int i24 = i23 ^ 1;
                    Object obj9 = objArr[i24];
                    Objects.requireNonNull(obj9);
                    duplicateKey = new ImmutableMap.Builder.DuplicateKey(obj7, obj8, obj9);
                    objArr[i24] = obj8;
                    break;
                }
                iA3 = i22 + 1;
            }
            i6++;
        }
        return i19 == i2 ? iArr : new Object[]{iArr, Integer.valueOf(i19), duplicateKey};
    }

    public static Object r(Object obj, Object[] objArr, int i2, int i3, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i2 == 1) {
            Object obj3 = objArr[i3];
            Objects.requireNonNull(obj3);
            if (!obj3.equals(obj2)) {
                return null;
            }
            Object obj4 = objArr[i3 ^ 1];
            Objects.requireNonNull(obj4);
            return obj4;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int iA = Hashing.a(obj2.hashCode());
            while (true) {
                int i4 = iA & length;
                int i5 = bArr[i4] & 255;
                if (i5 == 255) {
                    return null;
                }
                if (obj2.equals(objArr[i5])) {
                    return objArr[i5 ^ 1];
                }
                iA = i4 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int iA2 = Hashing.a(obj2.hashCode());
            while (true) {
                int i6 = iA2 & length2;
                int i7 = sArr[i6] & HPKE.aead_EXPORT_ONLY;
                if (i7 == 65535) {
                    return null;
                }
                if (obj2.equals(objArr[i7])) {
                    return objArr[i7 ^ 1];
                }
                iA2 = i6 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int iA3 = Hashing.a(obj2.hashCode());
            while (true) {
                int i8 = iA3 & length3;
                int i9 = iArr[i8];
                if (i9 == -1) {
                    return null;
                }
                if (obj2.equals(objArr[i9])) {
                    return objArr[i9 ^ 1];
                }
                iA3 = i8 + 1;
            }
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet d() {
        return new EntrySet(this, this.f33702f, 0, this.g);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet e() {
        return new KeySet(this, new KeysOrValuesAsList(this.f33702f, 0, this.g));
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection f() {
        return new KeysOrValuesAsList(this.f33702f, 1, this.g);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        Object objR = r(this.f33701e, this.f33702f, this.g, 0, obj);
        if (objR == null) {
            return null;
        }
        return objR;
    }

    @Override // java.util.Map
    public final int size() {
        return this.g;
    }

    @Override // com.google.common.collect.ImmutableMap
    public Object writeReplace() {
        return super.writeReplace();
    }
}
