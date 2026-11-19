package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.Map;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes3.dex */
final class bk<K, V> extends ImmutableMap<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ImmutableMap f42271h = new bk(0, null, new Object[0]);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object f42272e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient Object[] f42273f;
    public final transient int g;

    public static class a<K, V> extends ImmutableSet<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient ImmutableMap f42274e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final transient Object[] f42275f;
        public final transient int g;

        public a(ImmutableMap immutableMap, Object[] objArr, int i2) {
            this.f42274e = immutableMap;
            this.f42275f = objArr;
            this.g = i2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final int a(int i2, Object[] objArr) {
            return h().a(i2, objArr);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (value != null && value.equals(this.f42274e.get(key))) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        /* JADX INFO: renamed from: f */
        public final by iterator() {
            return h().listIterator(0);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return h().listIterator(0);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final boolean o() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.g;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet
        public final ImmutableList z() {
            return new bl(this);
        }
    }

    public static final class b<K> extends ImmutableSet<K> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient ImmutableMap f42276e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final transient ImmutableList f42277f;

        public b(ImmutableMap immutableMap, ImmutableList immutableList) {
            this.f42276e = immutableMap;
            this.f42277f = immutableList;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final int a(int i2, Object[] objArr) {
            return this.f42277f.a(i2, objArr);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return this.f42276e.get(obj) != null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        /* JADX INFO: renamed from: f */
        public final by iterator() {
            return this.f42277f.listIterator(0);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet, com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final ImmutableList h() {
            return this.f42277f;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return this.f42277f.listIterator(0);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final boolean o() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f42276e.size();
        }
    }

    public static final class c extends ImmutableList<Object> {
        public final transient Object[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient int f42278e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final transient int f42279f;

        public c(Object[] objArr, int i2, int i3) {
            this.d = objArr;
            this.f42278e = i2;
            this.f42279f = i3;
        }

        @Override // java.util.List
        public final Object get(int i2) {
            Preconditions.b(i2, this.f42279f);
            return this.d[(i2 * 2) + this.f42278e];
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final boolean o() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f42279f;
        }
    }

    public bk(int i2, Object obj, Object[] objArr) {
        this.f42272e = obj;
        this.f42273f = objArr;
        this.g = i2;
    }

    public static IllegalArgumentException g(int i2, Object obj, Object obj2, Object[] objArr) {
        return new IllegalArgumentException("Multiple entries with same key: " + obj + "=" + obj2 + " and " + objArr[i2] + "=" + objArr[i2 ^ 1]);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        Object[] objArr = this.f42273f;
        if (this.g == 1) {
            if (objArr[0].equals(obj)) {
                return objArr[1];
            }
            return null;
        }
        Object obj2 = this.f42272e;
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof byte[]) {
            byte[] bArr = (byte[]) obj2;
            int length = bArr.length - 1;
            int iA = al.a.a(obj.hashCode());
            while (true) {
                int i2 = iA & length;
                int i3 = bArr[i2] & 255;
                if (i3 == 255) {
                    return null;
                }
                if (objArr[i3].equals(obj)) {
                    return objArr[i3 ^ 1];
                }
                iA = i2 + 1;
            }
        } else if (obj2 instanceof short[]) {
            short[] sArr = (short[]) obj2;
            int length2 = sArr.length - 1;
            int iA2 = al.a.a(obj.hashCode());
            while (true) {
                int i4 = iA2 & length2;
                int i5 = sArr[i4] & HPKE.aead_EXPORT_ONLY;
                if (i5 == 65535) {
                    return null;
                }
                if (objArr[i5].equals(obj)) {
                    return objArr[i5 ^ 1];
                }
                iA2 = i4 + 1;
            }
        } else {
            int[] iArr = (int[]) obj2;
            int length3 = iArr.length - 1;
            int iA3 = al.a.a(obj.hashCode());
            while (true) {
                int i6 = iA3 & length3;
                int i7 = iArr[i6];
                if (i7 == -1) {
                    return null;
                }
                if (objArr[i7].equals(obj)) {
                    return objArr[i7 ^ 1];
                }
                iA3 = i6 + 1;
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.g;
    }
}
