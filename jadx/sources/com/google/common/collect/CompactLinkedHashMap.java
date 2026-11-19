package com.google.common.collect;

import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
final class CompactLinkedHashMap<K, V> extends CompactHashMap<K, V> {
    public transient long[] l;
    public transient int m;
    public transient int n;

    public final void A(int i2, int i3) {
        if (i2 == -2) {
            this.m = i3;
        } else {
            z()[i2] = (z()[i2] & (-4294967296L)) | (((long) (i3 + 1)) & BodyPartID.bodyIdMax);
        }
        if (i3 == -2) {
            this.n = i2;
        } else {
            z()[i3] = (BodyPartID.bodyIdMax & z()[i3]) | (((long) (i2 + 1)) << 32);
        }
    }

    @Override // com.google.common.collect.CompactHashMap
    public final void a(int i2) {
    }

    @Override // com.google.common.collect.CompactHashMap
    public final int c(int i2, int i3) {
        return i2 >= size() ? i3 : i2;
    }

    @Override // com.google.common.collect.CompactHashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (r()) {
            return;
        }
        this.m = -2;
        this.n = -2;
        long[] jArr = this.l;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }

    @Override // com.google.common.collect.CompactHashMap
    public final int d() {
        int iD = super.d();
        this.l = new long[iD];
        return iD;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final Map e() {
        Map mapE = super.e();
        this.l = null;
        return mapE;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final LinkedHashMap g(int i2) {
        return new LinkedHashMap(i2, 1.0f, false);
    }

    @Override // com.google.common.collect.CompactHashMap
    public final int i() {
        return this.m;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final int j(int i2) {
        return ((int) z()[i2]) - 1;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final void o(int i2) {
        super.o(i2);
        this.m = -2;
        this.n = -2;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final void p(Object obj, int i2, int i3, Object obj2, int i4) {
        super.p(obj, i2, i3, obj2, i4);
        A(this.n, i2);
        A(i2, -2);
    }

    @Override // com.google.common.collect.CompactHashMap
    public final void q(int i2, int i3) {
        int size = size() - 1;
        super.q(i2, i3);
        A(((int) (z()[i2] >>> 32)) - 1, j(i2));
        if (i2 < size) {
            A(((int) (z()[size] >>> 32)) - 1, i2);
            A(i2, j(size));
        }
        z()[size] = 0;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final void x(int i2) {
        super.x(i2);
        this.l = Arrays.copyOf(z(), i2);
    }

    public final long[] z() {
        long[] jArr = this.l;
        Objects.requireNonNull(jArr);
        return jArr;
    }
}
