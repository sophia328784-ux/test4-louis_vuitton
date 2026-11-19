package androidx.collection;

import defpackage.az;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/collection/MutableIntList;", "Landroidx/collection/IntList;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableIntList extends IntList {
    public /* synthetic */ MutableIntList(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 16 : i2);
    }

    public final void d() {
        int i2 = this.f3256b;
        if (i2 < 0) {
            az.v("Index must be between 0 and size");
            return;
        }
        f(i2 + 1);
        int[] iArr = this.f3255a;
        int i3 = this.f3256b;
        if (i3 != 0) {
            ArraysKt.i(1, 0, i3, iArr, iArr);
        }
        iArr[0] = 0;
        this.f3256b++;
    }

    public final void e(int i2) {
        f(this.f3256b + 1);
        int[] iArr = this.f3255a;
        int i3 = this.f3256b;
        iArr[i3] = i2;
        this.f3256b = i3 + 1;
    }

    public final void f(int i2) {
        int[] iArr = this.f3255a;
        if (iArr.length < i2) {
            this.f3255a = Arrays.copyOf(iArr, Math.max(i2, (iArr.length * 3) / 2));
        }
    }

    public final void g(int i2) {
        int i3;
        if (i2 < 0 || i2 >= (i3 = this.f3256b)) {
            az.v("Index must be between 0 and size");
            return;
        }
        int[] iArr = this.f3255a;
        int i4 = iArr[i2];
        if (i2 != i3 - 1) {
            ArraysKt.i(i2, i2 + 1, i3, iArr, iArr);
        }
        this.f3256b--;
    }

    public final void h(int i2, int i3) {
        if (i2 < 0 || i2 >= this.f3256b) {
            az.v("Index must be between 0 and size");
            return;
        }
        int[] iArr = this.f3255a;
        int i4 = iArr[i2];
        iArr[i2] = i3;
    }

    public MutableIntList(int i2) {
        super(i2, null);
    }

    public MutableIntList() {
        this(0, 1, null);
    }
}
