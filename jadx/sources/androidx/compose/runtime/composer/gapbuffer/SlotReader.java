package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.PreconditionsKt;
import defpackage.tr;
import java.util.ArrayList;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/SlotReader;", "", "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;", "table", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SlotReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SlotTable f8199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f8200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8201c;
    public Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f8202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f8203f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8204h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8205i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final IntStack f8206j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8207k;
    public int l;
    public int m;
    public boolean n;

    public SlotReader(SlotTable slotTable) {
        this.f8199a = slotTable;
        this.f8200b = slotTable.f8208b;
        int i2 = slotTable.f8209c;
        this.f8201c = i2;
        this.d = slotTable.d;
        this.f8202e = slotTable.f8210e;
        this.f8204h = i2;
        this.f8205i = -1;
        this.f8206j = new IntStack();
    }

    public final GapAnchor a(int i2) {
        ArrayList arrayList = this.f8199a.f8214j;
        int iF = SlotTableKt.f(arrayList, i2, this.f8201c);
        if (iF >= 0) {
            return (GapAnchor) arrayList.get(iF);
        }
        GapAnchor gapAnchor = new GapAnchor(i2);
        arrayList.add(-(iF + 1), gapAnchor);
        return gapAnchor;
    }

    public final Object b(int i2, int[] iArr) {
        int i3 = i2 * 5;
        int i4 = iArr[i3 + 1];
        if ((268435456 & i4) != 0) {
            return this.d[i3 >= iArr.length ? iArr.length : iArr[i3 + 4] + Integer.bitCount(i4 >> 29)];
        }
        return Composer.Companion.f7939a;
    }

    public final void c() {
        this.f8203f = true;
        SlotTable slotTable = this.f8199a;
        slotTable.getClass();
        if (slotTable.f8211f <= 0) {
            ComposerKt.a("Unexpected reader close()");
        }
        slotTable.f8211f--;
        this.d = new Object[0];
    }

    public final boolean d(int i2) {
        return (this.f8200b[(i2 * 5) + 1] & 67108864) != 0;
    }

    public final void e() {
        if (this.f8207k == 0) {
            if (!(this.g == this.f8204h)) {
                ComposerKt.a("endGroup() not called at the end of a group");
            }
            int i2 = (this.f8205i * 5) + 2;
            int[] iArr = this.f8200b;
            int i3 = iArr[i2];
            this.f8205i = i3;
            int i4 = this.f8201c;
            this.f8204h = i3 < 0 ? i4 : SlotTableKt.a(i3, iArr) + i3;
            int iB = this.f8206j.b();
            if (iB < 0) {
                this.l = 0;
                this.m = 0;
            } else {
                this.l = iB;
                this.m = i3 >= i4 - 1 ? this.f8202e : iArr[((i3 + 1) * 5) + 4];
            }
        }
    }

    public final Object f() {
        int i2 = this.g;
        if (i2 < this.f8204h) {
            return b(i2, this.f8200b);
        }
        return 0;
    }

    public final int g() {
        int i2 = this.g;
        if (i2 >= this.f8204h) {
            return 0;
        }
        return this.f8200b[i2 * 5];
    }

    public final Object h(int i2, int i3) {
        int[] iArr = this.f8200b;
        int iC = SlotTableKt.c(i2, iArr);
        int i4 = i2 + 1;
        int i5 = iC + i3;
        return i5 < (i4 < this.f8201c ? iArr[(i4 * 5) + 4] : this.f8202e) ? this.d[i5] : Composer.Companion.f7939a;
    }

    public final int i(int i2) {
        return this.f8200b[i2 * 5];
    }

    public final boolean j(int i2) {
        return (this.f8200b[(i2 * 5) + 1] & 134217728) != 0;
    }

    public final boolean k(int i2) {
        return (this.f8200b[(i2 * 5) + 1] & PKIFailureInfo.duplicateCertReq) != 0;
    }

    public final boolean l(int i2) {
        return (this.f8200b[(i2 * 5) + 1] & 1073741824) != 0;
    }

    public final Object m() {
        int i2;
        if (this.f8207k > 0 || (i2 = this.l) >= this.m) {
            this.n = false;
            return Composer.Companion.f7939a;
        }
        this.n = true;
        Object[] objArr = this.d;
        this.l = i2 + 1;
        return objArr[i2];
    }

    public final Object n(int i2) {
        int i3 = i2 * 5;
        int[] iArr = this.f8200b;
        int i4 = iArr[i3 + 1] & 1073741824;
        if (i4 != 0) {
            return i4 != 0 ? this.d[iArr[i3 + 4]] : Composer.Companion.f7939a;
        }
        return null;
    }

    public final int o(int i2) {
        return this.f8200b[(i2 * 5) + 1] & 67108863;
    }

    public final Object p(int i2, int[] iArr) {
        int i3 = i2 * 5;
        int i4 = iArr[i3 + 1];
        if ((536870912 & i4) == 0) {
            return null;
        }
        return this.d[Integer.bitCount(i4 >> 30) + iArr[i3 + 4]];
    }

    public final int q(int i2) {
        return this.f8200b[(i2 * 5) + 2];
    }

    public final void r(int i2) {
        if (!(this.f8207k == 0)) {
            ComposerKt.a("Cannot reposition while in an empty region");
        }
        this.g = i2;
        int[] iArr = this.f8200b;
        int i3 = this.f8201c;
        int i4 = i2 < i3 ? iArr[(i2 * 5) + 2] : -1;
        if (i4 != this.f8205i) {
            this.f8205i = i4;
            if (i4 < 0) {
                this.f8204h = i3;
            } else {
                this.f8204h = SlotTableKt.a(i4, iArr) + i4;
            }
            this.l = 0;
            this.m = 0;
        }
    }

    public final int s() {
        if (!(this.f8207k == 0)) {
            ComposerKt.a("Cannot skip while in an empty region");
        }
        int i2 = this.g;
        int[] iArr = this.f8200b;
        int i3 = (iArr[(i2 * 5) + 1] & 1073741824) == 0 ? iArr[(i2 * 5) + 1] & 67108863 : 1;
        this.g = SlotTableKt.a(i2, iArr) + i2;
        return i3;
    }

    public final void t() {
        if (!(this.f8207k == 0)) {
            ComposerKt.a("Cannot skip the enclosing group while in an empty region");
        }
        this.g = this.f8204h;
        this.l = 0;
        this.m = 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SlotReader(current=");
        sb.append(this.g);
        sb.append(", key=");
        sb.append(g());
        sb.append(", parent=");
        sb.append(this.f8205i);
        sb.append(", end=");
        return tr.k(sb, this.f8204h, ')');
    }

    public final void u() {
        if (this.f8207k <= 0) {
            int i2 = this.f8205i;
            int i3 = this.g;
            int[] iArr = this.f8200b;
            if (iArr[(i3 * 5) + 2] != i2) {
                PreconditionsKt.a("Invalid slot table detected");
            }
            int i4 = this.l;
            int i5 = this.m;
            IntStack intStack = this.f8206j;
            if (i4 == 0 && i5 == 0) {
                intStack.c(-1);
            } else {
                intStack.c(i4);
            }
            this.f8205i = i3;
            this.f8204h = SlotTableKt.a(i3, iArr) + i3;
            int i6 = i3 + 1;
            this.g = i6;
            this.l = SlotTableKt.c(i3, iArr);
            this.m = i3 >= this.f8201c + (-1) ? this.f8202e : iArr[(i6 * 5) + 4];
        }
    }
}
