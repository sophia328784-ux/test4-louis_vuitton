package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import defpackage.b21;
import defpackage.j90;
import defpackage.n60;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyStaggeredGridMeasureKt {
    public static final int a(int[] iArr) {
        int length = iArr.length;
        int i2 = -1;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            if (i3 < i5) {
                i2 = i4;
                i3 = i5;
            }
        }
        return i2;
    }

    public static int b(int[] iArr) {
        int length = iArr.length;
        int i2 = -1;
        int i3 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            if (-2147483647 <= i5 && i5 < i3) {
                i2 = i4;
                i3 = i5;
            }
        }
        return i2;
    }

    public static final int c(int[] iArr, long j2) {
        int i2 = (int) (j2 & BodyPartID.bodyIdMax);
        int iMax = Integer.MIN_VALUE;
        for (int i3 = (int) (j2 >> 32); i3 < i2; i3++) {
            iMax = Math.max(iMax, iArr[i3]);
        }
        return iMax;
    }

    /* JADX WARN: Code duplicated, block: B:332:0x0673  */
    /* JADX WARN: Code duplicated, block: B:333:0x0679  */
    /* JADX WARN: Code duplicated, block: B:427:0x085f A[LOOP:32: B:397:0x07d9->B:427:0x085f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:428:0x0868  */
    /* JADX WARN: Code duplicated, block: B:458:0x08d6  */
    /* JADX WARN: Code duplicated, block: B:496:0x09d6  */
    /* JADX WARN: Code duplicated, block: B:631:0x086d A[EDGE_INSN: B:631:0x086d->B:429:0x086d BREAK  A[LOOP:32: B:397:0x07d9->B:427:0x085f], SYNTHETIC] */
    public static final LazyStaggeredGridMeasureResult d(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int i2, int[] iArr, int[] iArr2, boolean z) {
        boolean z2;
        ArrayDeque[] arrayDequeArr;
        int iD;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int[] iArr3;
        LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext2;
        int i8;
        int[] iArr4;
        boolean z3;
        int i9;
        LazyStaggeredGridMeasureContext$measuredItemProvider$1 lazyStaggeredGridMeasureContext$measuredItemProvider$1;
        int i10;
        int[] iArr5;
        long j2;
        int iG;
        int i11;
        long j3;
        int[] iArr6;
        List list;
        List list2;
        int i12;
        ArrayList arrayList;
        int i13;
        int i14;
        boolean z4;
        int i15;
        ArrayList arrayList2;
        List list3;
        LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo;
        int f5212a;
        int iMin;
        List list4;
        Object obj;
        List arrayList3;
        int i16;
        int i17;
        int i18;
        int[] iArrE;
        int[] iArr7;
        lazyStaggeredGridMeasureContext = lazyStaggeredGridMeasureContext;
        LazyStaggeredGridSlots lazyStaggeredGridSlots = lazyStaggeredGridMeasureContext.d;
        List list5 = lazyStaggeredGridMeasureContext.f5614b;
        int i19 = lazyStaggeredGridMeasureContext.f5621k;
        List list6 = lazyStaggeredGridMeasureContext.p;
        int i20 = lazyStaggeredGridMeasureContext.m;
        boolean z5 = lazyStaggeredGridMeasureContext.f5617f;
        LazyStaggeredGridState lazyStaggeredGridState = lazyStaggeredGridMeasureContext.f5613a;
        int i21 = lazyStaggeredGridMeasureContext.t;
        int i22 = lazyStaggeredGridMeasureContext.f5618h;
        int i23 = lazyStaggeredGridMeasureContext.f5620j;
        LazyStaggeredGridMeasureContext$measuredItemProvider$1 lazyStaggeredGridMeasureContext$measuredItemProvider$2 = lazyStaggeredGridMeasureContext.r;
        List list7 = list6;
        long j4 = lazyStaggeredGridMeasureContext.f5616e;
        LazyStaggeredGridLaneInfo lazyStaggeredGridLaneInfo = lazyStaggeredGridMeasureContext.s;
        LazyLayoutMeasureScope lazyLayoutMeasureScope = lazyStaggeredGridMeasureContext.g;
        LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider = lazyStaggeredGridMeasureContext.f5615c;
        LazyStaggeredGridSlots lazyStaggeredGridSlots2 = lazyStaggeredGridSlots;
        int iB = lazyStaggeredGridItemProvider.b();
        List list8 = list5;
        long j5 = j4;
        long j6 = BodyPartID.bodyIdMax;
        if (iB <= 0 || i21 == 0) {
            int iJ = Constraints.j(j5);
            int i24 = Constraints.i(j5);
            lazyStaggeredGridState.t.d(0, iJ, i24, new ArrayList(), lazyStaggeredGridMeasureContext$measuredItemProvider$2.f5630c.getF5606c(), lazyStaggeredGridMeasureContext.r, lazyStaggeredGridMeasureContext.f5617f, lazyLayoutMeasureScope.u0(), lazyStaggeredGridMeasureContext.t, lazyStaggeredGridMeasureContext.o, 0, 0, lazyStaggeredGridMeasureContext.n, lazyStaggeredGridMeasureContext.q);
            if (!lazyLayoutMeasureScope.u0()) {
                long jB = lazyStaggeredGridState.t.b();
                IntSize.f11020b.getClass();
                if (!IntSize.b(jB, 0L)) {
                    iJ = ConstraintsKt.g((int) (jB >> 32), j5);
                    i24 = ConstraintsKt.f((int) (jB & BodyPartID.bodyIdMax), j5);
                }
            }
            MeasureResult measureResultV0 = lazyLayoutMeasureScope.V0(iJ, i24, MapsKt.c(), new n60(24));
            boolean z6 = lazyStaggeredGridMeasureContext.f5617f;
            EmptyList emptyList = EmptyList.f71768b;
            long jI = (((long) Constraints.i(j5)) & BodyPartID.bodyIdMax) | (((long) Constraints.j(j5)) << 32);
            IntSize.Companion companion = IntSize.f11020b;
            int i25 = lazyStaggeredGridMeasureContext.f5620j;
            int i26 = lazyStaggeredGridMeasureContext.f5621k;
            return new LazyStaggeredGridMeasureResult(iArr, iArr2, Call.Parameters.DEFAULT_CAMERA_ZOOM, measureResultV0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, z6, false, lazyStaggeredGridMeasureContext.d, lazyStaggeredGridItemProvider.h(), lazyLayoutMeasureScope, iB, emptyList, jI, -i25, i26 + i22, i25, i26, lazyStaggeredGridMeasureContext.m, lazyStaggeredGridMeasureContext.n, null);
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        int[] iArrCopyOf2 = Arrays.copyOf(iArr2, iArr2.length);
        int length = iArrCopyOf.length - 1;
        if (length >= 0) {
            while (true) {
                int i27 = length - 1;
                while (true) {
                    int i28 = iArrCopyOf[length];
                    if (i28 < iB && lazyStaggeredGridLaneInfo.a(i28, length)) {
                        break;
                    }
                    LazyStaggeredGridState lazyStaggeredGridState2 = lazyStaggeredGridState;
                    iArrCopyOf[length] = lazyStaggeredGridLaneInfo.d(iArrCopyOf[length], length);
                    lazyStaggeredGridState = lazyStaggeredGridState2;
                }
                int i29 = iArrCopyOf[length];
                if (i29 >= 0 && !lazyStaggeredGridItemProvider.h().a(i29)) {
                    if (lazyStaggeredGridLaneInfo.f(i29) == -2) {
                        int length2 = iArrCopyOf.length;
                        int i30 = 0;
                        while (true) {
                            if (i30 >= length2) {
                                i30 = -1;
                                break;
                            }
                            int i31 = length2;
                            if (iArrCopyOf[i30] == i29) {
                                break;
                            }
                            i30++;
                            length2 = i31;
                        }
                        int i32 = i30 + 1;
                        int i33 = i30;
                        if (i32 <= length) {
                            while (true) {
                                if (iArrCopyOf[i32] == i29) {
                                    iArrCopyOf[i32] = lazyStaggeredGridLaneInfo.d(i29, i32);
                                }
                                if (i32 == length) {
                                    break;
                                }
                                i32++;
                            }
                        }
                        length = i33;
                    }
                    lazyStaggeredGridLaneInfo.i(i29, length);
                }
                if (i27 < 0) {
                    break;
                }
                length = i27;
                lazyStaggeredGridState = lazyStaggeredGridState;
            }
        } else {
            lazyStaggeredGridState = lazyStaggeredGridState;
        }
        f(-i2, iArrCopyOf2);
        ArrayDeque[] arrayDequeArr2 = new ArrayDeque[i21];
        for (int i34 = 0; i34 < i21; i34++) {
            arrayDequeArr2[i34] = new ArrayDeque(16);
        }
        f(-i23, iArrCopyOf2);
        boolean z7 = false;
        loop5: while (true) {
            int length3 = iArrCopyOf.length;
            int i35 = 0;
            while (true) {
                if (i35 >= length3) {
                    z2 = z7;
                    arrayDequeArr = arrayDequeArr2;
                    iD = -1;
                    break loop5;
                }
                int i36 = iArrCopyOf[i35];
                z2 = z7;
                arrayDequeArr = arrayDequeArr2;
                if (iArrCopyOf2[i35] >= Math.max(-i20, 0) || i36 <= 0) {
                    i35++;
                    z7 = z2;
                    i21 = i21;
                    i22 = i22;
                    arrayDequeArr2 = arrayDequeArr;
                }
            }
            iD = a(iArrCopyOf);
            int i37 = iArrCopyOf[iD];
            int length4 = iArrCopyOf2.length;
            int i38 = 0;
            while (i38 < length4) {
                int i39 = length4;
                if (iArrCopyOf[i38] != iArrCopyOf[iD]) {
                    int i40 = iArrCopyOf2[i38];
                    int i41 = iArrCopyOf2[iD];
                    if (i40 < i41) {
                        iArrCopyOf2[i38] = i41;
                    }
                }
                i38++;
                length4 = i39;
            }
            int iD2 = lazyStaggeredGridLaneInfo.d(i37, iD);
            if (iD2 < 0) {
                break;
            }
            long jA = lazyStaggeredGridMeasureContext.a(lazyStaggeredGridItemProvider, iD2, iD);
            int i42 = i21;
            int i43 = (int) (jA & BodyPartID.bodyIdMax);
            int i44 = i22;
            int i45 = (int) (jA >> 32);
            int i46 = i43 - i45;
            lazyStaggeredGridLaneInfo.i(iD2, i46 != 1 ? -2 : i45);
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD = lazyStaggeredGridMeasureContext$measuredItemProvider$2.d(iD2, jA);
            int iC = c(iArrCopyOf2, jA);
            int[] iArrE2 = i46 != 1 ? lazyStaggeredGridLaneInfo.e(iD2) : null;
            boolean z8 = z2;
            while (i45 < i43) {
                iArrCopyOf[i45] = iD2;
                int i47 = iD2;
                int i48 = lazyStaggeredGridMeasuredItemD.n + iC + (iArrE2 == null ? 0 : iArrE2[i45]);
                iArrCopyOf2[i45] = i48;
                if (i44 + i48 <= 0) {
                    z8 = true;
                }
                i45++;
                iD2 = i47;
            }
            i21 = i42;
            z7 = z8;
            i22 = i44;
            arrayDequeArr2 = arrayDequeArr;
        }
        int i49 = i21;
        int i50 = i22;
        int i51 = -i23;
        int i52 = iArrCopyOf2[0];
        if (i52 < i51) {
            int i53 = i51 - i52;
            f(i53, iArrCopyOf2);
            i3 = i2 - i53;
        } else {
            i3 = i2;
        }
        f(i23, iArrCopyOf2);
        int i54 = -1;
        if (iD == -1) {
            iD = ArraysKt.D(0, iArrCopyOf);
        }
        if (iD != -1 && e(iArrCopyOf, lazyStaggeredGridMeasureContext, iArrCopyOf2, iD) && z) {
            lazyStaggeredGridLaneInfo.g();
            int length5 = iArrCopyOf.length;
            int[] iArr8 = new int[length5];
            int i55 = 0;
            while (i55 < length5) {
                iArr8[i55] = i54;
                i55++;
                i54 = -1;
            }
            int length6 = iArrCopyOf2.length;
            int[] iArr9 = new int[length6];
            for (int i56 = 0; i56 < length6; i56++) {
                iArr9[i56] = iArrCopyOf2[iD];
            }
            return d(lazyStaggeredGridMeasureContext, i3, iArr8, iArr9, false);
        }
        int[] iArrCopyOf3 = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length);
        int length7 = iArrCopyOf2.length;
        int[] iArr10 = new int[length7];
        for (int i57 = 0; i57 < length7; i57++) {
            iArr10[i57] = -iArrCopyOf2[i57];
        }
        int i58 = i20 + i51;
        int i59 = i19 + i50;
        if (i59 < 0) {
            i59 = 0;
        }
        int i60 = i3;
        int i61 = i51;
        int iB2 = b(iArrCopyOf3);
        int i62 = 0;
        boolean z9 = z2;
        while (true) {
            iArrCopyOf = iArrCopyOf;
            if (iB2 == -1) {
                i4 = i49;
                break;
            }
            int i63 = i49;
            if (i62 >= i63) {
                i4 = i63;
                break;
            }
            int i64 = i62;
            int i65 = iArrCopyOf3[iB2];
            i23 = i23;
            int length8 = iArrCopyOf3.length;
            iArrCopyOf2 = iArrCopyOf2;
            i20 = i20;
            int i66 = Integer.MAX_VALUE;
            int i67 = 0;
            iB2 = -1;
            while (i67 < length8) {
                int i68 = i67;
                int i69 = i65 + 1;
                int i70 = length8;
                int i71 = iArrCopyOf3[i68];
                if (i69 <= i71 && i71 < i66) {
                    i66 = i71;
                    iB2 = i68;
                }
                i67 = i68 + 1;
                length8 = i70;
            }
            int i72 = i64 + 1;
            if (i65 >= 0) {
                long jA2 = lazyStaggeredGridMeasureContext.a(lazyStaggeredGridItemProvider, i65, iB2);
                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD2 = lazyStaggeredGridMeasureContext$measuredItemProvider$2.d(i65, jA2);
                LazyStaggeredGridMeasureContext$measuredItemProvider$1 lazyStaggeredGridMeasureContext$measuredItemProvider$3 = lazyStaggeredGridMeasureContext$measuredItemProvider$2;
                LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider2 = lazyStaggeredGridItemProvider;
                int i73 = (int) (jA2 & BodyPartID.bodyIdMax);
                int i74 = (int) (jA2 >> 32);
                int i75 = i73 - i74;
                lazyStaggeredGridLaneInfo.i(i65, i75 != 1 ? -2 : i74);
                int iC2 = c(iArr10, jA2);
                for (int i76 = i74; i76 < i73; i76++) {
                    iArr10[i76] = lazyStaggeredGridMeasuredItemD2.n + iC2;
                    iArrCopyOf3[i76] = i65;
                    arrayDequeArr[i76].addLast(lazyStaggeredGridMeasuredItemD2);
                }
                if (iC2 < i58 && iArr10[i74] <= i58) {
                    lazyStaggeredGridMeasuredItemD2.l = false;
                    z9 = true;
                }
                if (i75 != 1) {
                    i49 = i63;
                    i62 = i49;
                } else {
                    i62 = i72;
                    i49 = i63;
                }
                lazyStaggeredGridMeasureContext$measuredItemProvider$2 = lazyStaggeredGridMeasureContext$measuredItemProvider$3;
                lazyStaggeredGridItemProvider = lazyStaggeredGridItemProvider2;
            } else {
                lazyStaggeredGridMeasureContext = lazyStaggeredGridMeasureContext;
                i62 = i72;
                iArrCopyOf2 = iArrCopyOf2;
                i49 = i63;
                iArrCopyOf = iArrCopyOf;
            }
        }
        loop15: while (true) {
            int i77 = 0;
            while (true) {
                if (i77 >= length7) {
                    i5 = i4;
                    for (int i78 = 0; i78 < i5; i78++) {
                        if (!arrayDequeArr[i78].isEmpty()) {
                            i6 = 1;
                            break loop15;
                        }
                    }
                    break;
                }
                int i79 = iArr10[i77];
                if (i79 < i59 || i79 <= 0) {
                    i5 = i4;
                    break;
                }
                i77++;
            }
            int iB3 = b(iArr10);
            i6 = 1;
            int iL = ArraysKt.L(iArrCopyOf3) + 1;
            if (iL >= iB) {
                break;
            }
            int[] iArr11 = iArrCopyOf3;
            int i80 = i5;
            LazyStaggeredGridLaneInfo lazyStaggeredGridLaneInfo2 = lazyStaggeredGridLaneInfo;
            long j7 = j5;
            LazyLayoutMeasureScope lazyLayoutMeasureScope2 = lazyLayoutMeasureScope;
            int i81 = i23;
            int i82 = i20;
            LazyStaggeredGridMeasureContext$measuredItemProvider$1 lazyStaggeredGridMeasureContext$measuredItemProvider$4 = lazyStaggeredGridMeasureContext$measuredItemProvider$2;
            int[] iArr12 = iArrCopyOf;
            int i83 = i59;
            int[] iArr13 = iArr10;
            int i84 = i58;
            LazyStaggeredGridSlots lazyStaggeredGridSlots3 = lazyStaggeredGridSlots2;
            LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider3 = lazyStaggeredGridItemProvider;
            List list9 = list7;
            int i85 = i50;
            int i86 = iB;
            int i87 = length7;
            LazyStaggeredGridState lazyStaggeredGridState3 = lazyStaggeredGridState;
            int i88 = i60;
            List list10 = list8;
            long j8 = j6;
            int[] iArr14 = iArrCopyOf2;
            long jA3 = lazyStaggeredGridMeasureContext.a(lazyStaggeredGridItemProvider3, iL, iB3);
            int i89 = (int) (jA3 & j8);
            int i90 = (int) (jA3 >> 32);
            int i91 = i89 - i90;
            lazyStaggeredGridLaneInfo2.i(iL, i91 != 1 ? -2 : i90);
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD3 = lazyStaggeredGridMeasureContext$measuredItemProvider$4.d(iL, jA3);
            int iC3 = c(iArr13, jA3);
            if (i91 != 1) {
                iArrE = lazyStaggeredGridLaneInfo2.e(iL);
                i18 = i80;
                if (iArrE == null) {
                    iArrE = new int[i18];
                }
            } else {
                i18 = i80;
                iArrE = null;
            }
            int i92 = i18;
            int i93 = i90;
            while (i93 < i89) {
                if (iArrE != null) {
                    iArrE[i93] = iC3 - iArr13[i93];
                }
                iArr11[i93] = iL;
                int i94 = i93;
                iArr13[i94] = lazyStaggeredGridMeasuredItemD3.n + iC3;
                arrayDequeArr[i94].addLast(lazyStaggeredGridMeasuredItemD3);
                i93 = i94 + 1;
            }
            ArrayDeque arrayDeque = lazyStaggeredGridLaneInfo2.f5610c;
            int iH = LazyStaggeredGridLaneInfo.h(iL, arrayDeque);
            if (iH >= 0) {
                iArr7 = iArr13;
                if (iArrE == null) {
                    arrayDeque.h(iH);
                } else {
                    ((LazyStaggeredGridLaneInfo.SpannedItem) arrayDeque.get(iH)).f5612b = iArrE;
                }
            } else if (iArrE == null) {
                iArr7 = iArr13;
            } else {
                iArr7 = iArr13;
                arrayDeque.add(-(iH + 1), new LazyStaggeredGridLaneInfo.SpannedItem(iL, iArrE));
            }
            if (iC3 < i84 && iArr7[i90] <= i84) {
                lazyStaggeredGridMeasuredItemD3.l = false;
            }
            lazyStaggeredGridState = lazyStaggeredGridState3;
            iB = i86;
            list7 = list9;
            lazyStaggeredGridSlots2 = lazyStaggeredGridSlots3;
            iArrCopyOf3 = iArr11;
            i58 = i84;
            iArrCopyOf = iArr12;
            iArrCopyOf2 = iArr14;
            length7 = i87;
            i59 = i83;
            i50 = i85;
            iArr10 = iArr7;
            i23 = i81;
            lazyStaggeredGridItemProvider = lazyStaggeredGridItemProvider3;
            lazyStaggeredGridMeasureContext$measuredItemProvider$2 = lazyStaggeredGridMeasureContext$measuredItemProvider$4;
            i4 = i92;
            i20 = i82;
            lazyLayoutMeasureScope = lazyLayoutMeasureScope2;
            lazyStaggeredGridLaneInfo = lazyStaggeredGridLaneInfo2;
            i60 = i88;
            j6 = j8;
            list8 = list10;
            j5 = j7;
        }
        int i95 = 0;
        while (i95 < i5) {
            ArrayDeque arrayDeque2 = arrayDequeArr[i95];
            while (arrayDeque2.getF74615i() > i6 && !((LazyStaggeredGridMeasuredItem) arrayDeque2.first()).l) {
                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) arrayDeque2.removeFirst();
                int[] iArrE3 = lazyStaggeredGridMeasuredItem.f5647f != i6 ? lazyStaggeredGridLaneInfo.e(lazyStaggeredGridMeasuredItem.f5643a) : null;
                iArrCopyOf2[i95] = iArrCopyOf2[i95] - (lazyStaggeredGridMeasuredItem.n + (iArrE3 == null ? 0 : iArrE3[i95]));
                i6 = 1;
            }
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem2 = (LazyStaggeredGridMeasuredItem) arrayDeque2.n();
            iArrCopyOf[i95] = lazyStaggeredGridMeasuredItem2 != null ? lazyStaggeredGridMeasuredItem2.f5643a : -1;
            i95++;
            i6 = 1;
        }
        int length9 = iArrCopyOf3.length;
        int i96 = 0;
        while (true) {
            if (i96 >= length9) {
                i7 = i20;
                break;
            }
            if (iArrCopyOf3[i96] == iB - 1) {
                i7 = i20;
                f(-i7, iArr10);
                break;
            }
            i96++;
        }
        int i97 = 0;
        while (true) {
            if (i97 >= length7) {
                int i98 = i50;
                int i99 = i98 - iArr10[a(iArr10)];
                iArr3 = iArrCopyOf2;
                f(-i99, iArr3);
                f(i99, iArr10);
                boolean z10 = false;
                loop43: while (true) {
                    int length10 = iArr3.length;
                    int i100 = 0;
                    while (true) {
                        if (i100 >= length10) {
                            lazyStaggeredGridMeasureContext2 = lazyStaggeredGridMeasureContext;
                            boolean z11 = z10;
                            i8 = i23;
                            iArr4 = iArrCopyOf;
                            z3 = z11;
                            break loop43;
                        }
                        i8 = i23;
                        if (iArr3[i100] < i8) {
                            break;
                        }
                        i100++;
                        i98 = i98;
                        i60 = i60;
                        lazyStaggeredGridItemProvider = lazyStaggeredGridItemProvider;
                        i23 = i8;
                        length7 = length7;
                        i99 = i99;
                        iArrCopyOf = iArrCopyOf;
                        z10 = z10;
                    }
                    int iB4 = b(iArr3);
                    int iA = a(iArrCopyOf);
                    if (iB4 != iA) {
                        boolean z12 = z10;
                        if (iArr3[iB4] == iArr3[iA]) {
                            z10 = z12;
                            iB4 = iA;
                        } else {
                            z10 = true;
                        }
                    }
                    int i101 = iArrCopyOf[iB4];
                    if (i101 == -1) {
                        i101 = iB;
                    }
                    int iD3 = lazyStaggeredGridLaneInfo.d(i101, iB4);
                    if (iD3 < 0) {
                        lazyStaggeredGridMeasureContext2 = lazyStaggeredGridMeasureContext;
                        int[] iArr15 = iArrCopyOf;
                        if ((!z10 && !e(iArr15, lazyStaggeredGridMeasureContext2, iArr3, iB4)) || !z) {
                            z3 = z10;
                            iArr4 = iArr15;
                            break;
                        }
                        lazyStaggeredGridLaneInfo.g();
                        int length11 = iArr15.length;
                        int[] iArr16 = new int[length11];
                        for (int i102 = 0; i102 < length11; i102++) {
                            iArr16[i102] = -1;
                        }
                        int length12 = iArr3.length;
                        int[] iArr17 = new int[length12];
                        for (int i103 = 0; i103 < length12; i103++) {
                            iArr17[i103] = iArr3[iB4];
                        }
                        return d(lazyStaggeredGridMeasureContext2, i60, iArr16, iArr17, false);
                    }
                    boolean z13 = z10;
                    int i104 = i59;
                    int i105 = length7;
                    int i106 = i60;
                    int[] iArr18 = iArrCopyOf;
                    int i107 = iB;
                    int i108 = i99;
                    LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider4 = lazyStaggeredGridItemProvider;
                    long jA4 = lazyStaggeredGridMeasureContext.a(lazyStaggeredGridItemProvider4, iD3, iB4);
                    int i109 = i5;
                    int i110 = i98;
                    int i111 = (int) (jA4 & j6);
                    int[] iArr19 = iArr10;
                    int i112 = (int) (jA4 >> 32);
                    int i113 = i111 - i112;
                    lazyStaggeredGridLaneInfo.i(iD3, i113 != 1 ? -2 : i112);
                    LazyStaggeredGridMeasureContext$measuredItemProvider$1 lazyStaggeredGridMeasureContext$measuredItemProvider$5 = lazyStaggeredGridMeasureContext$measuredItemProvider$2;
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD4 = lazyStaggeredGridMeasureContext$measuredItemProvider$5.d(iD3, jA4);
                    int iC4 = c(iArr3, jA4);
                    int[] iArrE4 = i113 != 1 ? lazyStaggeredGridLaneInfo.e(iD3) : null;
                    boolean z14 = z13;
                    int[] iArr20 = iArrE4;
                    int i114 = i112;
                    while (i114 < i111) {
                        int i115 = i114;
                        if (iArr3[i115] != iC4) {
                            z14 = true;
                        }
                        arrayDequeArr[i115].addFirst(lazyStaggeredGridMeasuredItemD4);
                        iArr18[i115] = iD3;
                        int i116 = iC4;
                        iArr3[i115] = lazyStaggeredGridMeasuredItemD4.n + i116 + (iArr20 == null ? 0 : iArr20[i115]);
                        i114 = i115 + 1;
                        iC4 = i116;
                    }
                    lazyStaggeredGridMeasureContext$measuredItemProvider$2 = lazyStaggeredGridMeasureContext$measuredItemProvider$5;
                    iB = i107;
                    i59 = i104;
                    i5 = i109;
                    i98 = i110;
                    i60 = i106;
                    lazyStaggeredGridItemProvider = lazyStaggeredGridItemProvider4;
                    i23 = i8;
                    length7 = i105;
                    i99 = i108;
                    iArrCopyOf = iArr18;
                    z10 = z14;
                    iArr10 = iArr19;
                }
                i9 = i98;
                lazyStaggeredGridMeasureContext$measuredItemProvider$1 = lazyStaggeredGridMeasureContext$measuredItemProvider$2;
                if (!z3 || !z) {
                    i10 = i60 + i99;
                    int i117 = iArr3[b(iArr3)];
                    if (i117 >= 0) {
                        iArr5 = iArr10;
                        break;
                    }
                    i10 += i117;
                    iArr5 = iArr10;
                    f(i117, iArr5);
                    f(-i117, iArr3);
                    break;
                }
                lazyStaggeredGridLaneInfo.g();
                return d(lazyStaggeredGridMeasureContext2, i60, iArr4, iArr3, false);
            }
            int i118 = i50;
            if (iArr10[i97] >= i118) {
                lazyStaggeredGridMeasureContext2 = lazyStaggeredGridMeasureContext;
                iArr4 = iArrCopyOf;
                iArr3 = iArrCopyOf2;
                length7 = length7;
                i5 = i5;
                iArr5 = iArr10;
                i60 = i60;
                i8 = i23;
                lazyStaggeredGridItemProvider = lazyStaggeredGridItemProvider;
                i59 = i59;
                iB = iB;
                i9 = i118;
                i10 = i60;
                lazyStaggeredGridMeasureContext$measuredItemProvider$1 = lazyStaggeredGridMeasureContext$measuredItemProvider$2;
                break;
            }
            i97++;
            i50 = i118;
        }
        LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState;
        float fFloatValue = (lazyLayoutMeasureScope.u0() || !lazyStaggeredGridState4.f5665a) ? lazyStaggeredGridState4.o : ((Number) ((SnapshotMutableStateImpl) lazyStaggeredGridState4.w.f5512b.f3818c).getF10755b()).floatValue();
        float f2 = (Integer.signum(Math.round(fFloatValue)) != Integer.signum(i10) || Math.abs(Math.round(fFloatValue)) < Math.abs(i10)) ? fFloatValue : i10;
        float f3 = fFloatValue - f2;
        boolean zU0 = lazyLayoutMeasureScope.u0();
        float f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (zU0 && i10 > i60 && f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f4 = (i10 - i60) + f3;
        }
        int[] iArrCopyOf4 = Arrays.copyOf(iArr3, iArr3.length);
        int length13 = iArrCopyOf4.length;
        for (int i119 = 0; i119 < length13; i119++) {
            iArrCopyOf4[i119] = -iArrCopyOf4[i119];
        }
        int i120 = i5;
        if (i8 > i7) {
            int i121 = 0;
            while (i121 < i120) {
                ArrayDeque arrayDeque3 = arrayDequeArr[i121];
                int f74615i = arrayDeque3.getF74615i();
                int[] iArr21 = iArr4;
                int i122 = 0;
                while (true) {
                    if (i122 >= f74615i) {
                        i16 = i121;
                        break;
                    }
                    i16 = i121;
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem3 = (LazyStaggeredGridMeasuredItem) arrayDeque3.get(i122);
                    int i123 = f74615i;
                    int[] iArrE5 = lazyStaggeredGridLaneInfo.e(lazyStaggeredGridMeasuredItem3.f5643a);
                    int i124 = lazyStaggeredGridMeasuredItem3.n + (iArrE5 == null ? 0 : iArrE5[i16]);
                    if (i122 == arrayDeque3.size() - 1 || (i17 = iArr3[i16]) == 0 || i17 < i124) {
                        break;
                    }
                    iArr3[i16] = i17 - i124;
                    i122++;
                    iArr21[i16] = ((LazyStaggeredGridMeasuredItem) arrayDeque3.get(i122)).f5643a;
                    f74615i = i123;
                    i121 = i16;
                }
                i121 = i16 + 1;
                iArr4 = iArr21;
            }
        }
        int[] iArr22 = iArr4;
        int i125 = i19 + i8;
        if (z5) {
            iG = Constraints.h(j5);
            j2 = j5;
        } else {
            j2 = j5;
            iG = ConstraintsKt.g(ArraysKt.L(iArr5) + i125, j2);
        }
        int i126 = iG;
        int iF = z5 ? ConstraintsKt.f(ArraysKt.L(iArr5) + i125, j2) : Constraints.g(j2);
        int i127 = i9;
        int iMin2 = i19 + (Math.min(z5 ? iF : i126, i127) - i8);
        int i128 = iArrCopyOf4[0];
        int size = list8.size() - 1;
        if (size >= 0) {
            int i129 = size;
            list2 = null;
            int i130 = i128;
            while (true) {
                int i131 = i129 - 1;
                iArr6 = iArr5;
                list = list8;
                int iIntValue = ((Number) list.get(i129)).intValue();
                i11 = i127;
                int iF2 = lazyStaggeredGridLaneInfo.f(iIntValue);
                j3 = j2;
                if (iF2 == -2 || iF2 == -1) {
                    int i132 = 0;
                    while (true) {
                        if (i132 >= i120) {
                            long jA5 = lazyStaggeredGridMeasureContext2.a(lazyStaggeredGridItemProvider, iIntValue, 0);
                            if (list2 == null) {
                                arrayList3 = new ArrayList();
                            } else {
                                arrayList3 = list2;
                            }
                            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD5 = lazyStaggeredGridMeasureContext$measuredItemProvider$1.d(iIntValue, jA5);
                            int i133 = i130 - lazyStaggeredGridMeasuredItemD5.n;
                            lazyStaggeredGridMeasuredItemD5.p(i133, 0, iMin2);
                            arrayList3.add(lazyStaggeredGridMeasuredItemD5);
                            i130 = i133;
                            list2 = arrayList3;
                        } else {
                            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem4 = (LazyStaggeredGridMeasuredItem) arrayDequeArr[i132].n();
                            if ((lazyStaggeredGridMeasuredItem4 != null ? lazyStaggeredGridMeasuredItem4.f5643a : -1) > iIntValue) {
                                i132++;
                            }
                        }
                    }
                } else {
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem5 = (LazyStaggeredGridMeasuredItem) arrayDequeArr[iF2].n();
                    if ((lazyStaggeredGridMeasuredItem5 != null ? lazyStaggeredGridMeasuredItem5.f5643a : -1) > iIntValue) {
                        long jA6 = lazyStaggeredGridMeasureContext2.a(lazyStaggeredGridItemProvider, iIntValue, 0);
                        if (list2 == null) {
                            arrayList3 = new ArrayList();
                        } else {
                            arrayList3 = list2;
                        }
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD6 = lazyStaggeredGridMeasureContext$measuredItemProvider$1.d(iIntValue, jA6);
                        int i134 = i130 - lazyStaggeredGridMeasuredItemD6.n;
                        lazyStaggeredGridMeasuredItemD6.p(i134, 0, iMin2);
                        arrayList3.add(lazyStaggeredGridMeasuredItemD6);
                        i130 = i134;
                        list2 = arrayList3;
                    }
                }
                if (i131 < 0) {
                    break;
                }
                j2 = j3;
                iArr3 = iArr3;
                i129 = i131;
                i127 = i11;
                list8 = list;
                iArr5 = iArr6;
            }
        } else {
            i11 = i127;
            j3 = j2;
            iArr6 = iArr5;
            list = list8;
            iArr3 = iArr3;
            list2 = null;
        }
        if (list2 == null) {
            list2 = EmptyList.f71768b;
        }
        int i135 = 0;
        for (int i136 = 0; i136 < i120; i136++) {
            i135 += arrayDequeArr[i136].d;
        }
        ArrayList arrayList4 = new ArrayList(i135);
        loop27: while (true) {
            int i137 = 0;
            while (true) {
                if (i137 >= i120) {
                    break loop27;
                }
                if (!arrayDequeArr[i137].isEmpty()) {
                    break;
                }
                i137++;
                i120 = i120;
                lazyStaggeredGridSlots2 = lazyStaggeredGridSlots2;
                f2 = f2;
            }
            int i138 = Integer.MAX_VALUE;
            int i139 = -1;
            for (int i140 = 0; i140 < i120; i140++) {
                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem6 = (LazyStaggeredGridMeasuredItem) arrayDequeArr[i140].n();
                int i141 = lazyStaggeredGridMeasuredItem6 != null ? lazyStaggeredGridMeasuredItem6.f5643a : Integer.MAX_VALUE;
                if (i138 > i141) {
                    i139 = i140;
                    i138 = i141;
                }
            }
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem7 = (LazyStaggeredGridMeasuredItem) arrayDequeArr[i139].removeFirst();
            int i142 = lazyStaggeredGridMeasuredItem7.f5646e;
            if (i142 == i139) {
                LazyStaggeredGridState lazyStaggeredGridState5 = lazyStaggeredGridState4;
                float f5 = f2;
                long j9 = (((long) (lazyStaggeredGridMeasuredItem7.f5647f + i142)) & j6) | (((long) i142) << 32);
                int iC5 = c(iArrCopyOf4, j9);
                LazyStaggeredGridSlots lazyStaggeredGridSlots4 = lazyStaggeredGridSlots2;
                int i143 = lazyStaggeredGridSlots4.f5662a[i139];
                int[] iArr23 = iArrCopyOf4;
                int i144 = i120;
                int i145 = i61;
                if (lazyStaggeredGridMeasuredItem7.m + iC5 >= i145) {
                    int i146 = i59;
                    if (iC5 <= i146) {
                        lazyStaggeredGridMeasuredItem7.p(iC5, i143, iMin2);
                        arrayList4.add(lazyStaggeredGridMeasuredItem7);
                    }
                    i59 = i146;
                }
                int i147 = (int) (j9 & j6);
                for (int i148 = (int) (j9 >> 32); i148 < i147; i148++) {
                    iArr23[i148] = lazyStaggeredGridMeasuredItem7.n + iC5;
                }
                i61 = i145;
                iArrCopyOf4 = iArr23;
                lazyStaggeredGridState4 = lazyStaggeredGridState5;
                i120 = i144;
                lazyStaggeredGridSlots2 = lazyStaggeredGridSlots4;
                f2 = f5;
            }
        }
        LazyStaggeredGridState lazyStaggeredGridState6 = lazyStaggeredGridState4;
        float f6 = f2;
        LazyStaggeredGridSlots lazyStaggeredGridSlots5 = lazyStaggeredGridSlots2;
        int i149 = i61;
        int i150 = iArrCopyOf4[0];
        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem8 = (LazyStaggeredGridMeasuredItem) CollectionsKt.N(arrayList4);
        int i151 = lazyStaggeredGridMeasuredItem8 != null ? lazyStaggeredGridMeasuredItem8.f5643a : -1;
        if (!lazyLayoutMeasureScope.u0() || list7 == null || list7.isEmpty()) {
            i12 = i149;
            lazyStaggeredGridLaneInfo = lazyStaggeredGridLaneInfo;
            arrayList = null;
        } else {
            int size2 = list7.size() - 1;
            while (true) {
                if (-1 >= size2) {
                    list3 = list7;
                    lazyStaggeredGridItemInfo = null;
                    break;
                }
                list3 = list7;
                if (((LazyStaggeredGridItemInfo) list3.get(size2)).getF5212a() > i151 && (size2 == 0 || ((LazyStaggeredGridItemInfo) list3.get(size2 - 1)).getF5212a() <= i151)) {
                    lazyStaggeredGridItemInfo = (LazyStaggeredGridItemInfo) list3.get(size2);
                    break;
                }
                size2--;
                list7 = list3;
            }
            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo2 = (LazyStaggeredGridItemInfo) CollectionsKt.M(list3);
            if (lazyStaggeredGridItemInfo != null && (f5212a = lazyStaggeredGridItemInfo.getF5212a()) <= (iMin = Math.min(lazyStaggeredGridItemInfo2.getF5212a(), iB - 1))) {
                arrayList = null;
                while (true) {
                    if (arrayList != null) {
                        int size3 = arrayList.size();
                        i12 = i149;
                        int i152 = 0;
                        while (true) {
                            if (i152 < size3) {
                                ArrayList arrayList5 = arrayList;
                                if (((LazyStaggeredGridMeasuredItem) arrayList.get(i152)).f5643a == f5212a) {
                                    list4 = list3;
                                    arrayList = arrayList5;
                                } else {
                                    i152++;
                                    arrayList = arrayList5;
                                }
                            }
                            if (f5212a != iMin) {
                                break;
                            }
                            f5212a++;
                            lazyStaggeredGridLaneInfo = lazyStaggeredGridLaneInfo;
                            list3 = list4;
                            i149 = i12;
                        }
                    } else {
                        i12 = i149;
                    }
                    ArrayList arrayList6 = arrayList;
                    ArrayList arrayList7 = arrayList6 == null ? new ArrayList() : arrayList6;
                    int size4 = list3.size();
                    int i153 = 0;
                    while (true) {
                        if (i153 >= size4) {
                            list4 = list3;
                            obj = null;
                            break;
                        }
                        obj = list3.get(i153);
                        list4 = list3;
                        if (((LazyStaggeredGridItemInfo) obj).getF5212a() == f5212a) {
                            break;
                        }
                        i153++;
                        list3 = list4;
                    }
                    LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo3 = (LazyStaggeredGridItemInfo) obj;
                    int f5646e = lazyStaggeredGridItemInfo3 != null ? lazyStaggeredGridItemInfo3.getF5646e() : 0;
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD7 = lazyStaggeredGridMeasureContext$measuredItemProvider$1.d(f5212a, lazyStaggeredGridMeasureContext2.a(lazyStaggeredGridItemProvider, f5212a, f5646e));
                    arrayList7.add(lazyStaggeredGridMeasuredItemD7);
                    int[] iArr24 = lazyStaggeredGridSlots5.f5662a;
                    ArrayList arrayList8 = arrayList7;
                    lazyStaggeredGridMeasuredItemD7.p(i150, iArr24.length > f5646e ? iArr24[f5646e] : 0, iMin2);
                    i150 = lazyStaggeredGridMeasuredItemD7.n + i150;
                    arrayList = arrayList8;
                    if (f5212a != iMin) {
                        break;
                        break;
                    }
                    f5212a++;
                    lazyStaggeredGridLaneInfo = lazyStaggeredGridLaneInfo;
                    list3 = list4;
                    i149 = i12;
                }
            } else {
                i12 = i149;
                lazyStaggeredGridLaneInfo = lazyStaggeredGridLaneInfo;
                arrayList = null;
            }
        }
        int size5 = list.size();
        ArrayList arrayList9 = null;
        int i154 = 0;
        while (i154 < size5) {
            int iIntValue2 = ((Number) list.get(i154)).intValue();
            int i155 = iB;
            if (iIntValue2 >= i155) {
                i15 = size5;
            } else {
                if (arrayList != null) {
                    int size6 = arrayList.size();
                    i15 = size5;
                    int i156 = 0;
                    while (true) {
                        if (i156 < size6) {
                            int i157 = i156;
                            if (((LazyStaggeredGridMeasuredItem) arrayList.get(i156)).f5643a != iIntValue2) {
                                i156 = i157 + 1;
                            }
                        }
                    }
                } else {
                    i15 = size5;
                }
                int iF3 = lazyStaggeredGridLaneInfo.f(iIntValue2);
                if (iF3 == -2 || iF3 == -1) {
                    int length14 = iArrCopyOf3.length;
                    int i158 = 0;
                    while (true) {
                        if (i158 < length14) {
                            int i159 = length14;
                            if (iArrCopyOf3[i158] < iIntValue2) {
                                i158++;
                                length14 = i159;
                            }
                        } else {
                            arrayList2 = arrayList9;
                            long jA7 = lazyStaggeredGridMeasureContext2.a(lazyStaggeredGridItemProvider, iIntValue2, 0);
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            ArrayList arrayList10 = arrayList2;
                            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD8 = lazyStaggeredGridMeasureContext$measuredItemProvider$1.d(iIntValue2, jA7);
                            lazyStaggeredGridMeasuredItemD8.p(i150, 0, iMin2);
                            int i160 = lazyStaggeredGridMeasuredItemD8.n + i150;
                            arrayList10.add(lazyStaggeredGridMeasuredItemD8);
                            i150 = i160;
                            arrayList9 = arrayList10;
                        }
                    }
                } else if (iArrCopyOf3[iF3] < iIntValue2) {
                    arrayList2 = arrayList9;
                    long jA8 = lazyStaggeredGridMeasureContext2.a(lazyStaggeredGridItemProvider, iIntValue2, 0);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    ArrayList arrayList11 = arrayList2;
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD9 = lazyStaggeredGridMeasureContext$measuredItemProvider$1.d(iIntValue2, jA8);
                    lazyStaggeredGridMeasuredItemD9.p(i150, 0, iMin2);
                    int i161 = lazyStaggeredGridMeasuredItemD9.n + i150;
                    arrayList11.add(lazyStaggeredGridMeasuredItemD9);
                    i150 = i161;
                    arrayList9 = arrayList11;
                }
                i154++;
                size5 = i15;
                list = list;
                iB = i155;
            }
            i154++;
            size5 = i15;
            list = list;
            iB = i155;
        }
        RandomAccess randomAccess = arrayList9;
        int i162 = iB;
        RandomAccess randomAccess2 = randomAccess == null ? EmptyList.f71768b : randomAccess;
        ArrayList arrayList12 = new ArrayList();
        arrayList12.addAll(list2);
        arrayList12.addAll(arrayList4);
        if (arrayList != null) {
            arrayList12.addAll(arrayList);
        }
        arrayList12.addAll((Collection) randomAccess2);
        LazyLayoutItemAnimator lazyLayoutItemAnimator = lazyStaggeredGridState6.t;
        int i163 = (int) f6;
        LazyLayoutKeyIndexMap f5606c = lazyStaggeredGridMeasureContext$measuredItemProvider$1.f5630c.getF5606c();
        LazyStaggeredGridMeasureContext$measuredItemProvider$1 lazyStaggeredGridMeasureContext$measuredItemProvider$6 = lazyStaggeredGridMeasureContext2.r;
        boolean z15 = lazyStaggeredGridMeasureContext2.f5617f;
        int i164 = lazyStaggeredGridMeasureContext2.t;
        boolean zU1 = lazyLayoutMeasureScope.u0();
        boolean z16 = lazyStaggeredGridMeasureContext2.o;
        int[] iArr25 = iArr3;
        if (iArr25.length == 0) {
            b21.x();
            return null;
        }
        int i165 = iArr25[0];
        int length15 = iArr25.length - 1;
        if (1 <= length15) {
            int i166 = 1;
            while (true) {
                int i167 = iArr25[i166];
                if (i165 > i167) {
                    i165 = i167;
                }
                if (i166 == length15) {
                    break;
                }
                i166++;
            }
        }
        lazyLayoutItemAnimator.d(i163, i126, iF, arrayList12, f5606c, lazyStaggeredGridMeasureContext$measuredItemProvider$6, z15, zU1, i164, z16, i165, ArraysKt.L(iArr6) + i125, lazyStaggeredGridMeasureContext2.n, lazyStaggeredGridMeasureContext2.q);
        if (lazyLayoutMeasureScope.u0()) {
            i13 = i126;
            i14 = iF;
        } else {
            long jB2 = lazyStaggeredGridState6.t.b();
            IntSize.f11020b.getClass();
            if (IntSize.b(jB2, 0L)) {
                i13 = i126;
                i14 = iF;
            } else {
                int i168 = z5 ? iF : i126;
                long j10 = j3;
                int iG2 = ConstraintsKt.g(Math.max(i126, (int) (jB2 >> 32)), j10);
                int iF4 = ConstraintsKt.f(Math.max(iF, (int) (jB2 & j6)), j10);
                int i169 = z5 ? iF4 : iG2;
                if (i169 != i168) {
                    int size7 = arrayList12.size();
                    for (int i170 = 0; i170 < size7; i170++) {
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem9 = (LazyStaggeredGridMeasuredItem) arrayList12.get(i170);
                        lazyStaggeredGridMeasuredItem9.o = i169;
                        lazyStaggeredGridMeasuredItem9.q = lazyStaggeredGridMeasuredItem9.f5648h + i169;
                    }
                }
                i13 = iG2;
                i14 = iF4;
            }
        }
        int i171 = length7;
        int i172 = 0;
        while (true) {
            if (i172 >= i171) {
                int length16 = iArrCopyOf3.length;
                int i173 = 0;
                while (true) {
                    if (i173 < length16) {
                        if (iArrCopyOf3[i173] >= i162 - 1) {
                            z4 = false;
                            break;
                        }
                        i173++;
                    }
                }
            } else {
                int i174 = i11;
                if (iArr6[i172] <= i174) {
                    i172++;
                    i11 = i174;
                }
            }
            z4 = true;
            break;
        }
        LazyLayoutMeasureScope lazyLayoutMeasureScope3 = lazyLayoutMeasureScope;
        MeasureResult measureResultV1 = lazyLayoutMeasureScope3.V0(i13, i14, MapsKt.c(), new j90(lazyStaggeredGridMeasureContext2, arrayList12, lazyStaggeredGridMeasureContext2.l, lazyStaggeredGridMeasureContext2.f5619i, lazyLayoutMeasureScope3));
        boolean z17 = lazyStaggeredGridMeasureContext2.f5617f;
        long j11 = (((long) i13) << 32) | (((long) i14) & j6);
        IntSize.Companion companion2 = IntSize.f11020b;
        return new LazyStaggeredGridMeasureResult(iArr22, iArr25, f6, measureResultV1, f4, z4, z17, z9, lazyStaggeredGridMeasureContext2.d, lazyStaggeredGridItemProvider.h(), lazyLayoutMeasureScope, i162, arrayList4, j11, i12, i59, lazyStaggeredGridMeasureContext2.f5620j, lazyStaggeredGridMeasureContext2.f5621k, lazyStaggeredGridMeasureContext2.m, lazyStaggeredGridMeasureContext2.n, null);
    }

    public static final boolean e(int[] iArr, LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int[] iArr2, int i2) {
        LazyStaggeredGridLaneInfo lazyStaggeredGridLaneInfo = lazyStaggeredGridMeasureContext.s;
        int length = iArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (lazyStaggeredGridLaneInfo.d(iArr[i3], i3) == -1 && iArr2[i3] != iArr2[i2]) {
                return true;
            }
        }
        int length2 = iArr.length;
        for (int i4 = 0; i4 < length2; i4++) {
            if (lazyStaggeredGridLaneInfo.d(iArr[i4], i4) != -1 && iArr2[i4] >= iArr2[i2]) {
                return true;
            }
        }
        int iF = lazyStaggeredGridLaneInfo.f(0);
        return (iF == 0 || iF == -1 || iF == -2) ? false : true;
    }

    public static final void f(int i2, int[] iArr) {
        int length = iArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = iArr[i3] + i2;
        }
    }
}
