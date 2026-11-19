package androidx.collection;

import defpackage.md;
import defpackage.v7;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/CircularArray;", "E", "", "", "minCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CircularArray<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f3232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3234c;
    public int d;

    public CircularArray(int i2) {
        if (!(i2 >= 1)) {
            md.n("capacity must be >= 1");
            throw null;
        }
        if (!(i2 <= 1073741824)) {
            md.n("capacity must be <= 2^30");
            throw null;
        }
        i2 = Integer.bitCount(i2) != 1 ? Integer.highestOneBit(i2 - 1) << 1 : i2;
        this.d = i2 - 1;
        this.f3232a = new Object[i2];
    }

    public final void a(Object obj) {
        Object[] objArr = this.f3232a;
        int i2 = this.f3234c;
        objArr[i2] = obj;
        int i3 = this.d & (i2 + 1);
        this.f3234c = i3;
        int i4 = this.f3233b;
        if (i3 == i4) {
            int length = objArr.length;
            int i5 = length - i4;
            int i6 = length << 1;
            if (i6 < 0) {
                v7.h("Max array capacity exceeded");
                return;
            }
            Object[] objArr2 = new Object[i6];
            ArraysKt.l(objArr, objArr2, 0, i4, length);
            ArraysKt.l(this.f3232a, objArr2, i5, 0, this.f3233b);
            this.f3232a = objArr2;
            this.f3233b = 0;
            this.f3234c = length;
            this.d = i6 - 1;
        }
    }

    public CircularArray() {
        this(0, 1, null);
    }

    public /* synthetic */ CircularArray(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 8 : i2);
    }
}
