package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/SparseArrayCompat;", "E", "", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class SparseArrayCompat<E> implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ boolean f3383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ int[] f3384c;
    public /* synthetic */ Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ int f3385e;

    public SparseArrayCompat(int i2) {
        if (i2 == 0) {
            this.f3384c = ContainerHelpersKt.f3399a;
            this.d = ContainerHelpersKt.f3401c;
            return;
        }
        int i3 = i2 * 4;
        for (int i4 = 4; i4 < 32; i4++) {
            int i5 = (1 << i4) - 12;
            if (i3 <= i5) {
                i3 = i5;
                break;
            }
        }
        int i6 = i3 / 4;
        this.f3384c = new int[i6];
        this.d = new Object[i6];
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final SparseArrayCompat clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        objClone.getClass();
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) objClone;
        sparseArrayCompat.f3384c = (int[]) this.f3384c.clone();
        sparseArrayCompat.d = (Object[]) this.d.clone();
        return sparseArrayCompat;
    }

    public final Object b(int i2) {
        Object obj;
        int iA = ContainerHelpersKt.a(this.f3385e, i2, this.f3384c);
        if (iA < 0 || (obj = this.d[iA]) == SparseArrayCompatKt.f3386a) {
            return null;
        }
        return obj;
    }

    public final int c(int i2) {
        if (this.f3383b) {
            SparseArrayCompatKt.a(this);
        }
        return this.f3384c[i2];
    }

    public final void d(int i2, Object obj) {
        int iA = ContainerHelpersKt.a(this.f3385e, i2, this.f3384c);
        if (iA >= 0) {
            this.d[iA] = obj;
            return;
        }
        int i3 = ~iA;
        int i4 = this.f3385e;
        if (i3 < i4) {
            Object[] objArr = this.d;
            if (objArr[i3] == SparseArrayCompatKt.f3386a) {
                this.f3384c[i3] = i2;
                objArr[i3] = obj;
                return;
            }
        }
        if (this.f3383b && i4 >= this.f3384c.length) {
            SparseArrayCompatKt.a(this);
            i3 = ~ContainerHelpersKt.a(this.f3385e, i2, this.f3384c);
        }
        int i5 = this.f3385e;
        if (i5 >= this.f3384c.length) {
            int i6 = (i5 + 1) * 4;
            for (int i7 = 4; i7 < 32; i7++) {
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
            }
            int i9 = i6 / 4;
            this.f3384c = Arrays.copyOf(this.f3384c, i9);
            this.d = Arrays.copyOf(this.d, i9);
        }
        int i10 = this.f3385e;
        if (i10 - i3 != 0) {
            int[] iArr = this.f3384c;
            int i11 = i3 + 1;
            ArraysKt.i(i11, i3, i10, iArr, iArr);
            Object[] objArr2 = this.d;
            ArraysKt.l(objArr2, objArr2, i11, i3, this.f3385e);
        }
        this.f3384c[i3] = i2;
        this.d[i3] = obj;
        this.f3385e++;
    }

    public final int e() {
        if (this.f3383b) {
            SparseArrayCompatKt.a(this);
        }
        return this.f3385e;
    }

    public final Object f(int i2) {
        if (this.f3383b) {
            SparseArrayCompatKt.a(this);
        }
        Object[] objArr = this.d;
        if (i2 < objArr.length) {
            return objArr[i2];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final String toString() {
        if (e() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3385e * 28);
        sb.append('{');
        int i2 = this.f3385e;
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append(c(i3));
            sb.append('=');
            Object objF = f(i3);
            if (objF != this) {
                sb.append(objF);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public SparseArrayCompat() {
        this(0, 1, null);
    }

    public /* synthetic */ SparseArrayCompat(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 10 : i2);
    }
}
