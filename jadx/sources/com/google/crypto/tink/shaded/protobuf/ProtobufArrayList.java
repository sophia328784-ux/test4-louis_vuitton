package com.google.crypto.tink.shaded.protobuf;

import defpackage.ct0;
import defpackage.fc;
import defpackage.no0;
import defpackage.pq0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class ProtobufArrayList<E> extends AbstractProtobufList<E> implements RandomAccess {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ProtobufArrayList f34230e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f34231c;
    public int d;

    static {
        ProtobufArrayList protobufArrayList = new ProtobufArrayList(new Object[0], 0);
        f34230e = protobufArrayList;
        protobufArrayList.f34135b = false;
    }

    public ProtobufArrayList(Object[] objArr, int i2) {
        this.f34231c = objArr;
        this.d = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int i3;
        f();
        if (i2 < 0 || i2 > (i3 = this.d)) {
            no0.s(fc.q(i2, "Index:", ", Size:"), this.d);
            return;
        }
        Object[] objArr = this.f34231c;
        if (i3 < objArr.length) {
            System.arraycopy(objArr, i2, objArr, i2 + 1, i3 - i2);
        } else {
            Object[] objArr2 = new Object[pq0.c(i3, 3, 2, 1)];
            System.arraycopy(objArr, 0, objArr2, 0, i2);
            System.arraycopy(this.f34231c, i2, objArr2, i2 + 1, this.d - i2);
            this.f34231c = objArr2;
        }
        this.f34231c[i2] = obj;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Internal.ProtobufList
    public final Internal.ProtobufList c(int i2) {
        if (i2 >= this.d) {
            return new ProtobufArrayList(Arrays.copyOf(this.f34231c, i2), this.d);
        }
        ct0.c();
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        h(i2);
        return this.f34231c[i2];
    }

    public final void h(int i2) {
        if (i2 < 0 || i2 >= this.d) {
            no0.s(fc.q(i2, "Index:", ", Size:"), this.d);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public final Object remove(int i2) {
        f();
        h(i2);
        Object[] objArr = this.f34231c;
        Object obj = objArr[i2];
        int i3 = this.d;
        if (i2 < i3 - 1) {
            System.arraycopy(objArr, i2 + 1, objArr, i2, (i3 - i2) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        f();
        h(i2);
        Object[] objArr = this.f34231c;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        f();
        int i2 = this.d;
        Object[] objArr = this.f34231c;
        if (i2 == objArr.length) {
            this.f34231c = Arrays.copyOf(objArr, ((i2 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f34231c;
        int i3 = this.d;
        this.d = i3 + 1;
        objArr2[i3] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
