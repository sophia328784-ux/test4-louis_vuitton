package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.IntSetKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.RememberObserverHolder;
import defpackage.az;
import defpackage.md;
import defpackage.os;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;", "", "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;", "table", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SlotWriter {
    public static final Companion y = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SlotTable f8218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f8219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f8220c;
    public ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HashMap f8221e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MutableIntObjectMap f8222f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8223h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8224i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8225j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8226k;
    public int l;
    public int m;
    public int n;
    public int o;
    public final IntStack p;
    public final IntStack q;
    public final IntStack r;
    public MutableIntObjectMap s;
    public int t;
    public int u;
    public int v;
    public boolean w;
    public MutableIntList x;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static List a(SlotWriter slotWriter, int i2, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3) {
            List list;
            List list2;
            boolean z4;
            List list3;
            int i3;
            GapAnchor gapAnchorT;
            List list4;
            List list5;
            int iU = slotWriter.u(i2);
            int i4 = i2 + iU;
            int iF = slotWriter.f(i2);
            int iF2 = slotWriter.f(i4);
            int i5 = iF2 - iF;
            boolean z5 = i2 >= 0 && (slotWriter.f8219b[(slotWriter.r(i2) * 5) + 1] & 201326592) != 0;
            slotWriter2.w(iU);
            slotWriter2.x(i5, slotWriter2.t);
            if (slotWriter.g < i4) {
                slotWriter.B(i4);
            }
            if (slotWriter.f8226k < iF2) {
                slotWriter.C(iF2, i4);
            }
            int[] iArr = slotWriter2.f8219b;
            int i6 = slotWriter2.t;
            int i7 = i6 * 5;
            ArraysKt.i(i7, i2 * 5, i4 * 5, slotWriter.f8219b, iArr);
            Object[] objArr = slotWriter2.f8220c;
            int i8 = slotWriter2.f8224i;
            System.arraycopy(slotWriter.f8220c, iF, objArr, i8, i5);
            int i9 = slotWriter2.v;
            iArr[i7 + 2] = i9;
            int i10 = i6 - i2;
            int i11 = i6 + iU;
            int iG = i8 - slotWriter2.g(i6, iArr);
            int i12 = slotWriter2.m;
            int i13 = slotWriter2.l;
            int length = objArr.length;
            boolean z6 = z5;
            int i14 = i12;
            int i15 = i6;
            while (i15 < i11) {
                if (i15 != i6) {
                    int i16 = (i15 * 5) + 2;
                    iArr[i16] = iArr[i16] + i10;
                }
                int[] iArr2 = iArr;
                iArr2[(i15 * 5) + 4] = SlotWriter.i(slotWriter2.g(i15, iArr) + iG, i14 < i15 ? 0 : slotWriter2.f8226k, i13, length);
                if (i15 == i14) {
                    i14++;
                }
                i15++;
                i6 = i6;
                iArr = iArr2;
            }
            int[] iArr3 = iArr;
            slotWriter2.m = i14;
            int iB = SlotTableKt.b(slotWriter.d, i2, slotWriter.p());
            int iB2 = SlotTableKt.b(slotWriter.d, i4, slotWriter.p());
            if (iB < iB2) {
                ArrayList arrayList = slotWriter.d;
                ArrayList arrayList2 = new ArrayList(iB2 - iB);
                for (int i17 = iB; i17 < iB2; i17++) {
                    GapAnchor gapAnchor = (GapAnchor) arrayList.get(i17);
                    gapAnchor.f8187a += i10;
                    arrayList2.add(gapAnchor);
                }
                slotWriter2.d.addAll(SlotTableKt.b(slotWriter2.d, slotWriter2.t, slotWriter2.p()), arrayList2);
                arrayList.subList(iB, iB2).clear();
                list = arrayList2;
            } else {
                list = EmptyList.f71768b;
            }
            List list6 = list;
            if (!list6.isEmpty()) {
                HashMap map = slotWriter.f8221e;
                HashMap map2 = slotWriter2.f8221e;
                if (map != null && map2 != null) {
                    int size = list6.size();
                    for (int i18 = 0; i18 < size; i18++) {
                        GapAnchor gapAnchor2 = (GapAnchor) list.get(i18);
                        GapGroupSourceInformation gapGroupSourceInformation = (GapGroupSourceInformation) map.get(gapAnchor2);
                        if (gapGroupSourceInformation != null) {
                            map.remove(gapAnchor2);
                            map2.put(gapAnchor2, gapGroupSourceInformation);
                        }
                    }
                }
            }
            int i19 = slotWriter2.v;
            GapGroupSourceInformation gapGroupSourceInformationQ = slotWriter2.Q(i9);
            if (gapGroupSourceInformationQ != null) {
                int iA = i19 + 1;
                int i20 = slotWriter2.t;
                int i21 = -1;
                while (iA < i20) {
                    i21 = iA;
                    iA = SlotTableKt.a(iA, slotWriter2.f8219b) + iA;
                }
                ArrayList arrayList3 = gapGroupSourceInformationQ.d;
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                    gapGroupSourceInformationQ.d = arrayList3;
                }
                if (i21 >= 0 && (gapAnchorT = slotWriter2.T(i21)) != null) {
                    int size2 = arrayList3.size();
                    int i22 = 0;
                    while (true) {
                        if (i22 >= size2) {
                            list4 = list;
                            list3 = list4;
                            i3 = -1;
                            break;
                        }
                        Object obj = arrayList3.get(i22);
                        if (Intrinsics.c(obj, gapAnchorT)) {
                            list4 = list;
                            list5 = list4;
                        } else {
                            list5 = list4;
                            if ((obj instanceof GapGroupSourceInformation) && ((GapGroupSourceInformation) obj).f(gapAnchorT)) {
                                list4 = list;
                            } else {
                                list4 = list;
                                i22++;
                                list4 = list5;
                            }
                        }
                        i3 = i22;
                        list3 = list5;
                        break;
                    }
                }
                list3 = list;
                i3 = 0;
                arrayList3.add(i3, slotWriter2.b(i20));
                list2 = list3;
            } else {
                list2 = list;
            }
            int iG2 = slotWriter.G(i2, slotWriter.f8219b);
            if (!z3) {
                z4 = false;
            } else if (z) {
                boolean z7 = iG2 >= 0;
                if (z7) {
                    slotWriter.R();
                    slotWriter.a(iG2 - slotWriter.t);
                    slotWriter.R();
                }
                slotWriter.a(i2 - slotWriter.t);
                boolean zJ = slotWriter.J();
                if (z7) {
                    slotWriter.O();
                    slotWriter.j();
                    slotWriter.O();
                    slotWriter.j();
                }
                z4 = zJ;
            } else {
                boolean zK = slotWriter.K(i2, iU);
                slotWriter.L(iF, i5, i2 - 1);
                z4 = zK;
            }
            if (z4) {
                ComposerKt.a("Unexpectedly removed anchors");
            }
            int i23 = slotWriter2.o;
            int i24 = iArr3[i7 + 1];
            slotWriter2.o = i23 + ((1073741824 & i24) != 0 ? 1 : i24 & 67108863);
            if (z2) {
                slotWriter2.t = i11;
                slotWriter2.f8224i = i8 + i5;
            }
            if (z6) {
                slotWriter2.W(i9);
            }
            return list2;
        }
    }

    public SlotWriter(SlotTable slotTable) {
        this.f8218a = slotTable;
        int[] iArr = slotTable.f8208b;
        this.f8219b = iArr;
        Object[] objArr = slotTable.d;
        this.f8220c = objArr;
        this.d = slotTable.f8214j;
        this.f8221e = slotTable.f8215k;
        this.f8222f = slotTable.l;
        int i2 = slotTable.f8209c;
        this.g = i2;
        this.f8223h = (iArr.length / 5) - i2;
        int i3 = slotTable.f8210e;
        this.f8226k = i3;
        this.l = objArr.length - i3;
        this.m = i2;
        this.p = new IntStack();
        this.q = new IntStack();
        this.r = new IntStack();
        this.u = slotTable.f8209c;
        this.v = -1;
    }

    public static int i(int i2, int i3, int i4, int i5) {
        return i2 > i3 ? -(((i5 - i4) - i2) + 1) : i2;
    }

    public static void z(SlotWriter slotWriter) {
        int i2 = slotWriter.v;
        int iR = slotWriter.r(i2);
        int[] iArr = slotWriter.f8219b;
        int i3 = (iR * 5) + 1;
        int i4 = iArr[i3];
        if ((i4 & 134217728) != 0) {
            return;
        }
        int i5 = (i4 & (-134217729)) | 134217728;
        iArr[i3] = i5;
        if ((67108864 & i5) != 0) {
            return;
        }
        slotWriter.W(slotWriter.G(i2, iArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void A(SlotTable slotTable, int i2) {
        if (this.n <= 0) {
            ComposerKt.a("Check failed");
        }
        boolean z = false;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (i2 == 0 && this.t == 0 && this.f8218a.f8209c == 0) {
            int iA = SlotTableKt.a(i2, slotTable.f8208b);
            int i3 = slotTable.f8209c;
            if (iA == i3) {
                int[] iArr = this.f8219b;
                Object[] objArr3 = this.f8220c;
                ArrayList arrayList = this.d;
                HashMap map = this.f8221e;
                MutableIntObjectMap mutableIntObjectMap = this.f8222f;
                int[] iArr2 = slotTable.f8208b;
                Object[] objArr4 = slotTable.d;
                int i4 = slotTable.f8210e;
                HashMap map2 = slotTable.f8215k;
                MutableIntObjectMap mutableIntObjectMap2 = slotTable.l;
                this.f8219b = iArr2;
                this.f8220c = objArr4;
                this.d = slotTable.f8214j;
                this.g = i3;
                this.f8223h = (iArr2.length / 5) - i3;
                this.f8226k = i4;
                this.l = objArr4.length - i4;
                this.m = i3;
                this.f8221e = map2;
                this.f8222f = mutableIntObjectMap2;
                slotTable.f8208b = iArr;
                slotTable.f8209c = objArr2 == true ? 1 : 0;
                slotTable.d = objArr3;
                slotTable.f8210e = objArr == true ? 1 : 0;
                slotTable.f8214j = arrayList;
                slotTable.f8215k = map;
                slotTable.l = mutableIntObjectMap;
                return;
            }
        }
        SlotWriter slotWriterO = slotTable.o();
        try {
            y.getClass();
            Companion.a(slotWriterO, i2, this, true, true, false);
            boolean z2 = true;
        } finally {
            slotWriterO.e(z);
        }
    }

    public final void B(int i2) {
        GapAnchor gapAnchor;
        int i3;
        GapAnchor gapAnchor2;
        int i4;
        int i5;
        int i6 = this.f8223h;
        int i7 = this.g;
        if (i7 != i2) {
            if (!this.d.isEmpty()) {
                int iO = o() - this.f8223h;
                ArrayList arrayList = this.d;
                if (i7 < i2) {
                    for (int iB = SlotTableKt.b(arrayList, i7, iO); iB < this.d.size() && (i4 = (gapAnchor2 = (GapAnchor) this.d.get(iB)).f8187a) < 0 && (i5 = i4 + iO) < i2; iB++) {
                        gapAnchor2.f8187a = i5;
                    }
                } else {
                    for (int iB2 = SlotTableKt.b(arrayList, i2, iO); iB2 < this.d.size() && (i3 = (gapAnchor = (GapAnchor) this.d.get(iB2)).f8187a) >= 0; iB2++) {
                        gapAnchor.f8187a = -(iO - i3);
                    }
                }
            }
            if (i6 > 0) {
                int[] iArr = this.f8219b;
                int i8 = i2 * 5;
                int i9 = i6 * 5;
                int i10 = i7 * 5;
                if (i2 < i7) {
                    ArraysKt.i(i9 + i8, i8, i10, iArr, iArr);
                } else {
                    ArraysKt.i(i10, i10 + i9, i8 + i9, iArr, iArr);
                }
            }
            if (i2 < i7) {
                i7 = i2 + i6;
            }
            int iO2 = o();
            if (i7 >= iO2) {
                ComposerKt.a("Check failed");
            }
            while (i7 < iO2) {
                int i11 = (i7 * 5) + 2;
                int i12 = this.f8219b[i11];
                int iP = i12 > -2 ? i12 : (p() + i12) - (-2);
                if (iP >= i2) {
                    iP = -((p() - iP) - (-2));
                }
                if (iP != i12) {
                    this.f8219b[i11] = iP;
                }
                i7++;
                if (i7 == i2) {
                    i7 += i6;
                }
            }
        }
        this.g = i2;
    }

    public final void C(int i2, int i3) {
        int i4 = this.l;
        int i5 = this.f8226k;
        int i6 = this.m;
        if (i5 != i2) {
            Object[] objArr = this.f8220c;
            if (i2 < i5) {
                System.arraycopy(objArr, i2, objArr, i2 + i4, i5 - i2);
            } else {
                int i7 = i5 + i4;
                System.arraycopy(objArr, i7, objArr, i5, (i2 + i4) - i7);
            }
        }
        int iMin = Math.min(i3 + 1, p());
        if (i6 != iMin) {
            int length = this.f8220c.length - i4;
            if (iMin < i6) {
                int iR = r(iMin);
                int iR2 = r(i6);
                int i8 = this.g;
                while (iR < iR2) {
                    int i9 = (iR * 5) + 4;
                    int i10 = this.f8219b[i9];
                    if (!(i10 >= 0)) {
                        ComposerKt.a("Unexpected anchor value, expected a positive anchor");
                    }
                    this.f8219b[i9] = -((length - i10) + 1);
                    iR++;
                    if (iR == i8) {
                        iR += this.f8223h;
                    }
                }
            } else {
                int iR3 = r(i6);
                int iR4 = r(iMin);
                while (iR3 < iR4) {
                    int i11 = (iR3 * 5) + 4;
                    int i12 = this.f8219b[i11];
                    if (!(i12 < 0)) {
                        ComposerKt.a("Unexpected anchor value, expected a negative anchor");
                    }
                    this.f8219b[i11] = i12 + length + 1;
                    iR3++;
                    if (iR3 == this.g) {
                        iR3 += this.f8223h;
                    }
                }
            }
            this.m = iMin;
        }
        this.f8226k = i2;
    }

    public final List D(GapAnchor gapAnchor, SlotWriter slotWriter) {
        if (slotWriter.n <= 0) {
            ComposerKt.a("Check failed");
        }
        if (this.n != 0) {
            ComposerKt.a("Check failed");
        }
        if (!gapAnchor.a()) {
            ComposerKt.a("Check failed");
        }
        int iC = c(gapAnchor) + 1;
        int i2 = this.t;
        if (i2 > iC || iC >= this.u) {
            ComposerKt.a("Check failed");
        }
        int iG = G(iC, this.f8219b);
        int iU = u(iC);
        int iF = y(iC) ? 1 : F(iC);
        y.getClass();
        List listA = Companion.a(this, iC, slotWriter, false, false, true);
        W(iG);
        boolean z = iF > 0;
        while (iG >= i2) {
            int iR = r(iG);
            int[] iArr = this.f8219b;
            int i3 = iR * 5;
            iArr[i3 + 3] = SlotTableKt.a(iR, iArr) - iU;
            if (z) {
                int[] iArr2 = this.f8219b;
                int i4 = iArr2[i3 + 1];
                if ((1073741824 & i4) != 0) {
                    z = false;
                } else {
                    SlotTableKt.d(iR, (i4 & 67108863) - iF, iArr2);
                }
            }
            iG = G(iG, this.f8219b);
        }
        if (z) {
            if (this.o < iF) {
                ComposerKt.a("Check failed");
            }
            this.o -= iF;
        }
        return listA;
    }

    public final Object E(int i2) {
        int iR = r(i2);
        int[] iArr = this.f8219b;
        if ((iArr[(iR * 5) + 1] & 1073741824) != 0) {
            return this.f8220c[h(g(iR, iArr))];
        }
        return null;
    }

    public final int F(int i2) {
        return this.f8219b[(r(i2) * 5) + 1] & 67108863;
    }

    public final int G(int i2, int[] iArr) {
        int i3 = iArr[(r(i2) * 5) + 2];
        return i3 > -2 ? i3 : (p() + i3) - (-2);
    }

    public final Object H(Object obj) {
        if (this.n > 0) {
            x(1, this.v);
        }
        Object[] objArr = this.f8220c;
        int i2 = this.f8224i;
        this.f8224i = i2 + 1;
        Object obj2 = objArr[h(i2)];
        if (this.f8224i > this.f8225j) {
            ComposerKt.a("Writing to an invalid slot");
        }
        this.f8220c[h(this.f8224i - 1)] = obj;
        return obj2;
    }

    public final void I() {
        int i2;
        MutableIntList mutableIntList = this.x;
        if (mutableIntList != null) {
            while (mutableIntList.f3256b != 0) {
                int iB = PrioritySet.b(mutableIntList);
                int iR = r(iB);
                int iU = iB + 1;
                int iU2 = u(iB) + iB;
                while (true) {
                    if (iU >= iU2) {
                        i2 = 0;
                        break;
                    } else {
                        if ((this.f8219b[(r(iU) * 5) + 1] & 201326592) != 0) {
                            i2 = 1;
                            break;
                        }
                        iU += u(iU);
                    }
                }
                int[] iArr = this.f8219b;
                int i3 = (iR * 5) + 1;
                int i4 = iArr[i3];
                if (((67108864 & i4) != 0 ? 1 : 0) != i2) {
                    iArr[i3] = (i2 << 26) | ((-67108865) & i4);
                    int iG = G(iB, iArr);
                    if (iG >= 0) {
                        PrioritySet.a(mutableIntList, iG);
                    }
                }
            }
        }
    }

    public final boolean J() {
        GapAnchor gapAnchorT;
        if (!(this.n == 0)) {
            ComposerKt.a("Cannot remove group while inserting");
        }
        int i2 = this.t;
        int i3 = this.f8224i;
        int iG = g(r(i2), this.f8219b);
        int iN = N();
        GapGroupSourceInformation gapGroupSourceInformationQ = Q(this.v);
        if (gapGroupSourceInformationQ != null && (gapAnchorT = T(i2)) != null) {
            gapGroupSourceInformationQ.h(gapAnchorT);
        }
        MutableIntList mutableIntList = this.x;
        if (mutableIntList != null) {
            while (true) {
                int i4 = mutableIntList.f3256b;
                if (i4 == 0) {
                    break;
                }
                if (i4 == 0) {
                    zy0.c("IntList is empty.");
                    return false;
                }
                if (mutableIntList.f3255a[0] < i2) {
                    break;
                }
                PrioritySet.b(mutableIntList);
            }
        }
        boolean zK = K(i2, this.t - i2);
        L(iG, this.f8224i - iG, i2 - 1);
        this.t = i2;
        this.f8224i = i3;
        this.o -= iN;
        return zK;
    }

    public final boolean K(int i2, int i3) {
        boolean z = false;
        if (i3 > 0) {
            ArrayList arrayList = this.d;
            B(i2);
            if (!arrayList.isEmpty()) {
                HashMap map = this.f8221e;
                int i4 = i2 + i3;
                int iB = SlotTableKt.b(this.d, i4, o() - this.f8223h);
                if (iB >= this.d.size()) {
                    iB--;
                }
                int i5 = iB + 1;
                int i6 = 0;
                while (iB >= 0) {
                    GapAnchor gapAnchor = (GapAnchor) this.d.get(iB);
                    int iC = c(gapAnchor);
                    if (iC < i2) {
                        break;
                    }
                    if (iC < i4) {
                        gapAnchor.f8187a = Integer.MIN_VALUE;
                        if (map != null) {
                        }
                        if (i6 == 0) {
                            i6 = iB + 1;
                        }
                        i5 = iB;
                    }
                    iB--;
                }
                z = i5 < i6;
                if (z) {
                    this.d.subList(i5, i6).clear();
                }
            }
            this.g = i2;
            this.f8223h += i3;
            int i7 = this.m;
            if (i7 > i2) {
                this.m = Math.max(i2, i7 - i3);
            }
            int i8 = this.u;
            if (i8 >= this.g) {
                this.u = i8 - i3;
            }
            int i9 = this.v;
            if (i9 >= 0 && (this.f8219b[(r(i9) * 5) + 1] & 67108864) != 0) {
                W(i9);
            }
        }
        return z;
    }

    public final void L(int i2, int i3, int i4) {
        if (i3 > 0) {
            int i5 = this.l;
            int i6 = i2 + i3;
            C(i6, i4);
            this.f8226k = i2;
            this.l = i5 + i3;
            ArraysKt.r(this.f8220c, i2, i6, null);
            int i7 = this.f8225j;
            if (i7 >= i2) {
                this.f8225j = i7 - i3;
            }
        }
    }

    public final Object M(int i2, int i3, Object obj) {
        int iP = P(r(i2), this.f8219b);
        int iG = g(r(i2 + 1), this.f8219b);
        int i4 = iP + i3;
        if (i4 < iP || i4 >= iG) {
            ComposerKt.a("Write to an invalid slot index " + i3 + " for group " + i2);
        }
        int iH = h(i4);
        Object[] objArr = this.f8220c;
        Object obj2 = objArr[iH];
        objArr[iH] = obj;
        return obj2;
    }

    public final int N() {
        int iR = r(this.t);
        int iA = SlotTableKt.a(iR, this.f8219b) + this.t;
        this.t = iA;
        this.f8224i = g(r(iA), this.f8219b);
        int i2 = this.f8219b[(iR * 5) + 1];
        if ((1073741824 & i2) != 0) {
            return 1;
        }
        return i2 & 67108863;
    }

    public final void O() {
        int i2 = this.u;
        this.t = i2;
        this.f8224i = g(r(i2), this.f8219b);
    }

    public final int P(int i2, int[] iArr) {
        if (i2 >= o()) {
            return this.f8220c.length - this.l;
        }
        int iC = SlotTableKt.c(i2, iArr);
        return iC < 0 ? (this.f8220c.length - this.l) + iC + 1 : iC;
    }

    public final GapGroupSourceInformation Q(int i2) {
        GapAnchor gapAnchorT;
        HashMap map = this.f8221e;
        if (map == null || (gapAnchorT = T(i2)) == null) {
            return null;
        }
        return (GapGroupSourceInformation) map.get(gapAnchorT);
    }

    public final void R() {
        if (this.n != 0) {
            ComposerKt.a("Key must be supplied when inserting");
        }
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        S(composer$Companion$Empty$1, composer$Companion$Empty$1, false, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void S(Object obj, Object obj2, boolean z, int i2) {
        int i3;
        GapGroupSourceInformation gapGroupSourceInformationQ;
        int i4 = this.v;
        Object[] objArr = this.n > 0;
        this.r.c(this.o);
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objArr == true) {
            int i5 = this.t;
            int iG = g(r(i5), this.f8219b);
            w(1);
            this.f8224i = iG;
            this.f8225j = iG;
            int iR = r(i5);
            int i6 = obj != composer$Companion$Empty$1 ? 1 : 0;
            int i7 = (z || obj2 == composer$Companion$Empty$1) ? 0 : 1;
            int i8 = i(iG, this.f8226k, this.l, this.f8220c.length);
            if (i8 >= 0 && this.m < i5) {
                i8 = -(((this.f8220c.length - this.l) - i8) + 1);
            }
            int[] iArr = this.f8219b;
            int i9 = this.v;
            int i10 = iR * 5;
            iArr[i10] = i2;
            iArr[i10 + 1] = ((z ? 1 : 0) << 30) | (i6 << 29) | (i7 << 28);
            iArr[i10 + 2] = i9;
            iArr[i10 + 3] = 0;
            iArr[i10 + 4] = i8;
            int i11 = (z ? 1 : 0) + i6 + i7;
            if (i11 > 0) {
                x(i11, i5);
                Object[] objArr2 = this.f8220c;
                int i12 = this.f8224i;
                if (z) {
                    objArr2[i12] = obj2;
                    i12++;
                }
                if (i6 != 0) {
                    objArr2[i12] = obj;
                    i12++;
                }
                if (i7 != 0) {
                    objArr2[i12] = obj2;
                    i12++;
                }
                this.f8224i = i12;
            }
            this.o = 0;
            i3 = i5 + 1;
            this.v = i5;
            this.t = i3;
            if (i4 >= 0 && (gapGroupSourceInformationQ = Q(i4)) != null) {
                GapGroupSourceInformation gapGroupSourceInformationG = gapGroupSourceInformationQ.g();
                GapAnchor gapAnchorB = b(i5);
                ArrayList arrayList = gapGroupSourceInformationG.d;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                gapGroupSourceInformationG.d = arrayList;
                arrayList.add(gapAnchorB);
            }
        } else {
            this.p.c(i4);
            this.q.c((o() - this.f8223h) - this.u);
            int i13 = this.t;
            int iR2 = r(i13);
            if (!Intrinsics.c(obj2, composer$Companion$Empty$1)) {
                if (z) {
                    X(this.t, obj2);
                } else {
                    V(obj2);
                }
            }
            this.f8224i = P(iR2, this.f8219b);
            this.f8225j = g(r(this.t + 1), this.f8219b);
            int[] iArr2 = this.f8219b;
            int i14 = iR2 * 5;
            this.o = iArr2[i14 + 1] & 67108863;
            this.v = i13;
            this.t = i13 + 1;
            i3 = i13 + iArr2[i14 + 3];
        }
        this.u = i3;
    }

    public final GapAnchor T(int i2) {
        ArrayList arrayList;
        int iF;
        if (i2 < 0 || i2 >= p() || (iF = SlotTableKt.f((arrayList = this.d), i2, p())) < 0) {
            return null;
        }
        return (GapAnchor) arrayList.get(iF);
    }

    public final void U(Object obj) {
        if (this.n <= 0 || this.f8224i == this.f8226k) {
            H(obj);
            return;
        }
        MutableIntObjectMap mutableIntObjectMap = this.s;
        if (mutableIntObjectMap == null) {
            mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        }
        this.s = mutableIntObjectMap;
        int i2 = this.v;
        Object objB = mutableIntObjectMap.b(i2);
        if (objB == null) {
            objB = new MutableObjectList(0, 1, null);
            mutableIntObjectMap.i(i2, objB);
        }
        ((MutableObjectList) objB).g(obj);
    }

    public final void V(Object obj) {
        int iR = r(this.t);
        int i2 = (iR * 5) + 1;
        if ((this.f8219b[i2] & 268435456) == 0) {
            ComposerKt.a("Updating the data of a group that was not created with a data slot");
        }
        Object[] objArr = this.f8220c;
        int[] iArr = this.f8219b;
        objArr[h(Integer.bitCount(iArr[i2] >> 29) + g(iR, iArr))] = obj;
    }

    public final void W(int i2) {
        if (i2 >= 0) {
            MutableIntList mutableIntList = this.x;
            if (mutableIntList == null) {
                mutableIntList = new MutableIntList(0, 1, null);
                this.x = mutableIntList;
            }
            PrioritySet.a(mutableIntList, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final void X(int i2, Object obj) {
        boolean z;
        int iR = r(i2);
        int[] iArr = this.f8219b;
        if (iR < iArr.length) {
            z = (iArr[(iR * 5) + 1] & 1073741824) != 0;
        }
        if (!z) {
            ComposerKt.a("Updating the node of a group at " + i2 + " that was not created with as a node group");
        }
        this.f8220c[h(g(iR, this.f8219b))] = obj;
    }

    public final void a(int i2) {
        boolean z = false;
        if (!(i2 >= 0)) {
            ComposerKt.a("Cannot seek backwards");
        }
        if (!(this.n <= 0)) {
            PreconditionsKt.b("Cannot call seek() while inserting");
        }
        if (i2 == 0) {
            return;
        }
        int i3 = this.t + i2;
        if (i3 >= this.v && i3 <= this.u) {
            z = true;
        }
        if (!z) {
            ComposerKt.a("Cannot seek outside the current group (" + this.v + '-' + this.u + ')');
        }
        this.t = i3;
        int iG = g(r(i3), this.f8219b);
        this.f8224i = iG;
        this.f8225j = iG;
    }

    public final GapAnchor b(int i2) {
        ArrayList arrayList = this.d;
        int iF = SlotTableKt.f(arrayList, i2, p());
        if (iF >= 0) {
            return (GapAnchor) arrayList.get(iF);
        }
        if (i2 > this.g) {
            i2 = -(p() - i2);
        }
        GapAnchor gapAnchor = new GapAnchor(i2);
        arrayList.add(-(iF + 1), gapAnchor);
        return gapAnchor;
    }

    public final int c(GapAnchor gapAnchor) {
        int i2 = gapAnchor.f8187a;
        return i2 < 0 ? p() + i2 : i2;
    }

    public final void d() {
        int i2 = this.n;
        this.n = i2 + 1;
        if (i2 == 0) {
            this.q.c((o() - this.f8223h) - this.u);
        }
    }

    public final void e(boolean z) {
        this.w = true;
        if (z && this.p.f8005b == 0) {
            B(p());
            C(this.f8220c.length - this.l, this.g);
            int i2 = this.f8226k;
            ArraysKt.r(this.f8220c, i2, this.l + i2, null);
            I();
        }
        int[] iArr = this.f8219b;
        int i3 = this.g;
        Object[] objArr = this.f8220c;
        int i4 = this.f8226k;
        ArrayList arrayList = this.d;
        HashMap map = this.f8221e;
        MutableIntObjectMap mutableIntObjectMap = this.f8222f;
        SlotTable slotTable = this.f8218a;
        slotTable.getClass();
        if (!slotTable.f8212h) {
            PreconditionsKt.a("Unexpected writer close()");
        }
        slotTable.f8212h = false;
        slotTable.f8208b = iArr;
        slotTable.f8209c = i3;
        slotTable.d = objArr;
        slotTable.f8210e = i4;
        slotTable.f8214j = arrayList;
        slotTable.f8215k = map;
        slotTable.l = mutableIntObjectMap;
    }

    public final int f(int i2) {
        return g(r(i2), this.f8219b);
    }

    public final int g(int i2, int[] iArr) {
        if (i2 >= o()) {
            return this.f8220c.length - this.l;
        }
        int i3 = iArr[(i2 * 5) + 4];
        return i3 < 0 ? (this.f8220c.length - this.l) + i3 + 1 : i3;
    }

    public final int h(int i2) {
        return (this.l * (i2 < this.f8226k ? 0 : 1)) + i2;
    }

    public final void j() {
        MutableObjectList mutableObjectList;
        boolean z = this.n > 0;
        int i2 = this.t;
        int i3 = this.u;
        int i4 = this.v;
        int iR = r(i4);
        int i5 = this.o;
        int i6 = i2 - i4;
        int i7 = iR * 5;
        int i8 = i7 + 1;
        boolean z2 = (this.f8219b[i8] & 1073741824) != 0;
        IntStack intStack = this.r;
        if (z) {
            MutableIntObjectMap mutableIntObjectMap = this.s;
            if (mutableIntObjectMap != null && (mutableObjectList = (MutableObjectList) mutableIntObjectMap.b(i4)) != null) {
                Object[] objArr = mutableObjectList.f3345a;
                int i9 = mutableObjectList.f3346b;
                for (int i10 = 0; i10 < i9; i10++) {
                    H(objArr[i10]);
                }
            }
            int[] iArr = this.f8219b;
            iArr[i7 + 3] = i6;
            SlotTableKt.d(iR, i5, iArr);
            int iB = intStack.b();
            if (z2) {
                i5 = 1;
            }
            this.o = iB + i5;
            int iG = G(i4, this.f8219b);
            this.v = iG;
            int iP = iG < 0 ? p() : r(iG + 1);
            int iG2 = iP >= 0 ? g(iP, this.f8219b) : 0;
            this.f8224i = iG2;
            this.f8225j = iG2;
            return;
        }
        if (i2 != i3) {
            ComposerKt.a("Expected to be at the end of a group");
        }
        int iA = SlotTableKt.a(iR, this.f8219b);
        int[] iArr2 = this.f8219b;
        int i11 = iArr2[i8] & 67108863;
        iArr2[i7 + 3] = i6;
        SlotTableKt.d(iR, i5, iArr2);
        int iB2 = this.p.b();
        this.u = (o() - this.f8223h) - this.q.b();
        this.v = iB2;
        int iG3 = G(i4, this.f8219b);
        int iB3 = intStack.b();
        this.o = iB3;
        if (iG3 == iB2) {
            this.o = iB3 + (z2 ? 0 : i5 - i11);
            return;
        }
        int i12 = i6 - iA;
        int i13 = z2 ? 0 : i5 - i11;
        if (i12 != 0 || i13 != 0) {
            while (iG3 != 0 && iG3 != iB2 && (i13 != 0 || i12 != 0)) {
                int iR2 = r(iG3);
                if (i12 != 0) {
                    this.f8219b[(iR2 * 5) + 3] = SlotTableKt.a(iR2, this.f8219b) + i12;
                }
                if (i13 != 0) {
                    int[] iArr3 = this.f8219b;
                    SlotTableKt.d(iR2, (iArr3[(iR2 * 5) + 1] & 67108863) + i13, iArr3);
                }
                int[] iArr4 = this.f8219b;
                if ((iArr4[(iR2 * 5) + 1] & 1073741824) != 0) {
                    i13 = 0;
                }
                iG3 = G(iG3, iArr4);
            }
        }
        this.o += i13;
    }

    public final void k() {
        if (this.n <= 0) {
            PreconditionsKt.b("Unbalanced begin/end insert");
        }
        int i2 = this.n - 1;
        this.n = i2;
        if (i2 == 0) {
            if (this.r.f8005b != this.p.f8005b) {
                ComposerKt.a("startGroup/endGroup mismatch while inserting");
            }
            this.u = (o() - this.f8223h) - this.q.b();
        }
    }

    public final void l(int i2) {
        boolean z = false;
        if (!(this.n <= 0)) {
            ComposerKt.a("Cannot call ensureStarted() while inserting");
        }
        int i3 = this.v;
        if (i3 != i2) {
            if (i2 >= i3 && i2 < this.u) {
                z = true;
            }
            if (!z) {
                ComposerKt.a("Started group at " + i2 + " must be a subgroup of the group at " + i3);
            }
            int i4 = this.t;
            int i5 = this.f8224i;
            int i6 = this.f8225j;
            this.t = i2;
            R();
            this.t = i4;
            this.f8224i = i5;
            this.f8225j = i6;
        }
    }

    public final void m(int i2, int i3, int i4) {
        if (i2 >= this.g) {
            i2 = -((p() - i2) + 2);
        }
        while (i4 < i3) {
            this.f8219b[(r(i4) * 5) + 2] = i2;
            int iA = SlotTableKt.a(r(i4), this.f8219b) + i4;
            m(i4, iA, i4 + 1);
            i4 = iA;
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0095  */
    public final void n(int i2, Function2 function2) {
        int i3;
        int i4;
        int iG = G(i2, this.f8219b);
        int iP = p();
        int iU = u(i2) + i2;
        int i5 = i2;
        MutableIntSet mutableIntSetA = null;
        MutableIntList mutableIntList = null;
        while (i5 < iU) {
            int iF = f(i5);
            int i6 = i5 + 1;
            int iF2 = f(i6);
            while (iF < iF2) {
                Object obj = this.f8220c[h(iF)];
                if (obj instanceof RememberObserverHolder) {
                    RememberObserverHolder rememberObserverHolder = (RememberObserverHolder) obj;
                    GapRememberObserverHolder gapRememberObserverHolder = rememberObserverHolder instanceof GapRememberObserverHolder ? (GapRememberObserverHolder) rememberObserverHolder : null;
                    if (gapRememberObserverHolder == null) {
                        ComposerKt.b("Inconsistent composition");
                        os.d();
                        return;
                    }
                    int i7 = gapRememberObserverHolder.f8002b;
                    if (i7 >= 0) {
                        int iU2 = u(i5) + i5;
                        int iA = i6;
                        int i8 = 0;
                        while (iA < iU2 && i8 < i7) {
                            int iR = r(iA);
                            int i9 = iU;
                            iA += SlotTableKt.a(iR, this.f8219b);
                            if (iA < iU2 && (this.f8219b[(iR * 5) + 1] & PKIFailureInfo.duplicateCertReq) == 0) {
                                i8++;
                            }
                            iU = i9;
                        }
                        i4 = iU;
                        if (mutableIntSetA == null) {
                            mutableIntSetA = IntSetKt.a();
                        }
                        if (mutableIntList == null) {
                            mutableIntList = new MutableIntList(0, 1, null);
                        }
                        mutableIntSetA.b(iA);
                        mutableIntList.e(iA);
                        mutableIntList.e(iF);
                    } else {
                        i4 = iU;
                        function2.invoke(Integer.valueOf(iF), obj);
                    }
                } else {
                    i4 = iU;
                    function2.invoke(Integer.valueOf(iF), obj);
                }
                iF++;
                iG = iG;
                iU = i4;
            }
            int i10 = iG;
            int i11 = iU;
            int i12 = 0;
            int iG2 = i6 < iP ? G(i6, this.f8219b) : -1;
            if (iG2 != i5) {
                int i13 = i5;
                int iG3 = i10;
                while (true) {
                    if (mutableIntList != null && mutableIntSetA != null && mutableIntSetA.g(i13)) {
                        int i14 = mutableIntList.f3256b;
                        int i15 = i14 / 2;
                        int i16 = i12;
                        int i17 = i16;
                        while (i16 < i15) {
                            int i18 = i16 * 2;
                            int iB = mutableIntList.b(i18);
                            if (iB == i13) {
                                int iB2 = mutableIntList.b(i18 + 1);
                                function2.invoke(Integer.valueOf(iB2), this.f8220c[h(iB2)]);
                            } else if (i18 != i17) {
                                int i19 = i17 + 1;
                                mutableIntList.h(i17, iB);
                                i17 += 2;
                                mutableIntList.h(i19, mutableIntList.b(i18 + 1));
                            } else {
                                i17 += 2;
                            }
                            i16++;
                            function2 = function2;
                        }
                        if (i17 != i14) {
                            if (i17 < 0 || i17 > (i3 = mutableIntList.f3256b) || i14 < 0 || i14 > i3) {
                                az.v("Index must be between 0 and size");
                                return;
                            }
                            if (i14 < i17) {
                                md.n("The end index must be < start index");
                                return;
                            } else if (i14 != i17) {
                                if (i14 < i3) {
                                    int[] iArr = mutableIntList.f3255a;
                                    ArraysKt.i(i17, i14, i3, iArr, iArr);
                                }
                                mutableIntList.f3256b -= i14 - i17;
                            }
                        }
                    }
                    if (i13 == i2 || iG3 == iG2) {
                        break;
                    }
                    function2 = function2;
                    i13 = iG3;
                    iG3 = G(iG3, this.f8219b);
                    i12 = 0;
                }
            }
            iG = iG2;
            i5 = i6;
            iU = i11;
        }
    }

    public final int o() {
        return this.f8219b.length / 5;
    }

    public final int p() {
        return o() - this.f8223h;
    }

    public final Object q(int i2) {
        int iR = r(i2);
        int[] iArr = this.f8219b;
        int i3 = (iR * 5) + 1;
        if ((iArr[i3] & 268435456) == 0) {
            return Composer.Companion.f7939a;
        }
        return this.f8220c[Integer.bitCount(iArr[i3] >> 29) + g(iR, iArr)];
    }

    public final int r(int i2) {
        return (this.f8223h * (i2 < this.g ? 0 : 1)) + i2;
    }

    public final int s(int i2) {
        return this.f8219b[r(i2) * 5];
    }

    public final Object t(int i2) {
        int iR = r(i2);
        int[] iArr = this.f8219b;
        int i3 = iR * 5;
        int i4 = iArr[i3 + 1];
        if ((536870912 & i4) == 0) {
            return null;
        }
        return this.f8220c[Integer.bitCount(i4 >> 30) + iArr[i3 + 4]];
    }

    public final String toString() {
        return "SlotWriter(current = " + this.t + " end=" + this.u + " size = " + p() + " gap=" + this.g + '-' + (this.g + this.f8223h) + ')';
    }

    public final int u(int i2) {
        return SlotTableKt.a(r(i2), this.f8219b);
    }

    public final boolean v(int i2, int i3) {
        int iO;
        int iU;
        if (i3 == this.v) {
            iO = this.u;
        } else {
            IntStack intStack = this.p;
            if (i3 > intStack.a(0)) {
                iU = u(i3);
            } else {
                int[] iArr = intStack.f8004a;
                int iMin = Math.min(iArr.length, intStack.f8005b);
                int i4 = 0;
                while (true) {
                    if (i4 >= iMin) {
                        i4 = -1;
                        break;
                    }
                    if (iArr[i4] == i3) {
                        break;
                    }
                    i4++;
                }
                if (i4 < 0) {
                    iU = u(i3);
                } else {
                    iO = (o() - this.f8223h) - this.q.f8004a[i4];
                }
            }
            iO = iU + i3;
        }
        return i2 > i3 && i2 < iO;
    }

    public final void w(int i2) {
        if (i2 > 0) {
            int i3 = this.t;
            B(i3);
            int i4 = this.g;
            int i5 = this.f8223h;
            int[] iArr = this.f8219b;
            int length = iArr.length / 5;
            int i6 = length - i5;
            if (i5 < i2) {
                int iMax = Math.max(Math.max(length * 2, i6 + i2), 32);
                int[] iArr2 = new int[iMax * 5];
                int i7 = iMax - i6;
                ArraysKt.i(0, 0, i4 * 5, iArr, iArr2);
                ArraysKt.i((i4 + i7) * 5, (i5 + i4) * 5, length * 5, iArr, iArr2);
                this.f8219b = iArr2;
                i5 = i7;
            }
            int i8 = this.u;
            if (i8 >= i4) {
                this.u = i8 + i2;
            }
            int i9 = i4 + i2;
            this.g = i9;
            this.f8223h = i5 - i2;
            int i10 = i(i6 > 0 ? f(i3 + i2) : 0, this.m >= i4 ? this.f8226k : 0, this.l, this.f8220c.length);
            for (int i11 = i4; i11 < i9; i11++) {
                this.f8219b[(i11 * 5) + 4] = i10;
            }
            int i12 = this.m;
            if (i12 >= i4) {
                this.m = i12 + i2;
            }
        }
    }

    public final void x(int i2, int i3) {
        if (i2 > 0) {
            C(this.f8224i, i3);
            int i4 = this.f8226k;
            int i5 = this.l;
            if (i5 < i2) {
                Object[] objArr = this.f8220c;
                int length = objArr.length;
                int i6 = length - i5;
                int iMax = Math.max(Math.max(length * 2, i6 + i2), 32);
                Object[] objArr2 = new Object[iMax];
                for (int i7 = 0; i7 < iMax; i7++) {
                    objArr2[i7] = null;
                }
                int i8 = iMax - i6;
                int i9 = i5 + i4;
                System.arraycopy(objArr, 0, objArr2, 0, i4);
                System.arraycopy(objArr, i9, objArr2, i4 + i8, length - i9);
                this.f8220c = objArr2;
                i5 = i8;
            }
            int i10 = this.f8225j;
            if (i10 >= i4) {
                this.f8225j = i10 + i2;
            }
            this.f8226k = i4 + i2;
            this.l = i5 - i2;
        }
    }

    public final boolean y(int i2) {
        return (this.f8219b[(r(i2) * 5) + 1] & 1073741824) != 0;
    }
}
