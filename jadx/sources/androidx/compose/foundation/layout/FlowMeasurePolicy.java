package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.foundation.layout.FlowLineMeasurePolicy;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import defpackage.b21;
import defpackage.ck;
import defpackage.dy;
import defpackage.fc;
import defpackage.nz;
import defpackage.pq0;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u00012\u00020\u0002BO\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/compose/foundation/layout/FlowMeasurePolicy;", "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;", "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;", "", "isHorizontal", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "verticalArrangement", "Landroidx/compose/ui/unit/Dp;", "mainAxisSpacing", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "crossAxisAlignment", "crossAxisArrangementSpacing", "", "maxItemsInMainAxis", "maxLines", "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;", "overflow", "<init>", "(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class FlowMeasurePolicy implements MultiContentMeasurePolicy, FlowLineMeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Arrangement.Horizontal f4993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Arrangement.Vertical f4994c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CrossAxisAlignment f4995e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f4996f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f4997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FlowLayoutOverflowState f4998i;

    public FlowMeasurePolicy(boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, float f2, CrossAxisAlignment crossAxisAlignment, float f3, int i2, int i3, FlowLayoutOverflowState flowLayoutOverflowState, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4992a = z;
        this.f4993b = horizontal;
        this.f4994c = vertical;
        this.d = f2;
        this.f4995e = crossAxisAlignment;
        this.f4996f = f3;
        this.g = i2;
        this.f4997h = i3;
        this.f4998i = flowLayoutOverflowState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlowMeasurePolicy)) {
            return false;
        }
        FlowMeasurePolicy flowMeasurePolicy = (FlowMeasurePolicy) obj;
        return this.f4992a == flowMeasurePolicy.f4992a && Intrinsics.c(this.f4993b, flowMeasurePolicy.f4993b) && Intrinsics.c(this.f4994c, flowMeasurePolicy.f4994c) && Dp.b(this.d, flowMeasurePolicy.d) && Intrinsics.c(this.f4995e, flowMeasurePolicy.f4995e) && Dp.b(this.f4996f, flowMeasurePolicy.f4996f) && this.g == flowMeasurePolicy.g && this.f4997h == flowMeasurePolicy.f4997h && Intrinsics.c(this.f4998i, flowMeasurePolicy.f4998i);
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    /* JADX INFO: renamed from: f, reason: from getter */
    public final CrossAxisAlignment getF4995e() {
        return this.f4995e;
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getF4992a() {
        return this.f4992a;
    }

    public final int hashCode() {
        int iHashCode = (this.f4994c.hashCode() + ((this.f4993b.hashCode() + (Boolean.hashCode(this.f4992a) * 31)) * 31)) * 31;
        Dp.Companion companion = Dp.f11004c;
        return this.f4998i.hashCode() + tr.b(this.f4997h, tr.b(this.g, pq0.b((this.f4995e.hashCode() + pq0.b(iHashCode, 31, this.d)) * 31, 31, this.f4996f), 31), 31);
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    /* JADX INFO: renamed from: i, reason: from getter */
    public final Arrangement.Horizontal getF4993b() {
        return this.f4993b;
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    /* JADX INFO: renamed from: j, reason: from getter */
    public final Arrangement.Vertical getF4994c() {
        return this.f4994c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r19v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.compose.foundation.layout.FlowLayoutBuildingBlocks] */
    public final int k(List list, int i2, int i3, int i4, int i5, int i6, FlowLayoutOverflowState flowLayoutOverflowState) {
        int iH;
        int iM;
        long jA;
        int iH2;
        int iM2;
        int i7 = 0;
        if (list.isEmpty()) {
            jA = IntIntPair.a(0, 0);
        } else {
            int i8 = Integer.MAX_VALUE;
            ?? flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(i5, flowLayoutOverflowState, ConstraintsKt.a(0, i2, 0, Integer.MAX_VALUE), i6, i3, i4, null);
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) CollectionsKt.G(0, list);
            boolean z = this.f4992a;
            if (intrinsicMeasurable != null) {
                iH = z ? intrinsicMeasurable.H(i2) : intrinsicMeasurable.M(i2);
            } else {
                iH = 0;
            }
            if (intrinsicMeasurable != null) {
                iM = z ? intrinsicMeasurable.M(iH) : intrinsicMeasurable.H(iH);
            } else {
                iM = 0;
            }
            boolean z2 = true;
            if (list.size() <= 1) {
                z2 = false;
            }
            int i9 = 0;
            if (flowLayoutBuildingBlocks.b(z2, 0, IntIntPair.a(i2, Integer.MAX_VALUE), intrinsicMeasurable == null ? null : new IntIntPair(IntIntPair.a(iM, iH)), 0, 0, 0, false, false).f4976b) {
                IntIntPair intIntPairA = flowLayoutOverflowState.a(0, 0, intrinsicMeasurable != null);
                jA = IntIntPair.a(intIntPairA != null ? (int) (intIntPairA.f3254a & BodyPartID.bodyIdMax) : 0, 0);
            } else {
                int size = list.size();
                int i10 = i2;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                int i15 = 0;
                while (i11 < size) {
                    int i16 = i10 - iM;
                    int i17 = i11 + 1;
                    int iMax = Math.max(i15, iH);
                    IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) CollectionsKt.G(i17, list);
                    if (intrinsicMeasurable2 != null) {
                        iH2 = z ? intrinsicMeasurable2.H(i2) : intrinsicMeasurable2.M(i2);
                    } else {
                        iH2 = i7;
                    }
                    if (intrinsicMeasurable2 != null) {
                        iM2 = (z ? intrinsicMeasurable2.M(iH2) : intrinsicMeasurable2.H(iH2)) + i3;
                    } else {
                        iM2 = i7;
                    }
                    int i18 = i17 - i13;
                    ?? r19 = i11 + 2 < list.size() ? z2 : i7;
                    int i19 = i14;
                    int i20 = iH2;
                    int i21 = iM2;
                    FlowLayoutBuildingBlocks.WrapInfo wrapInfoB = flowLayoutBuildingBlocks.b(r19, i18, IntIntPair.a(i16, i8), intrinsicMeasurable2 == null ? null : new IntIntPair(IntIntPair.a(iM2, iH2)), i19, i9, iMax, false, false);
                    if (wrapInfoB.f4975a) {
                        int i22 = iMax + i4 + i9;
                        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfoA = flowLayoutBuildingBlocks.a(wrapInfoB, intrinsicMeasurable2 != null, i19, i22, i16, i18);
                        int i23 = i21 - i3;
                        i14 = i19 + 1;
                        if (wrapInfoB.f4976b) {
                            if (wrapEllipsisInfoA != null) {
                                long j2 = wrapEllipsisInfoA.f4974c;
                                if (!wrapEllipsisInfoA.d) {
                                    i22 += ((int) (j2 & BodyPartID.bodyIdMax)) + i4;
                                }
                            }
                            i9 = i22;
                            i12 = i17;
                            break;
                        }
                        i13 = i17;
                        i9 = i22;
                        iM = i23;
                        i15 = 0;
                        i10 = i2;
                    } else {
                        iM = i21;
                        i10 = i16;
                        i14 = i19;
                        i15 = iMax;
                    }
                    i11 = i17;
                    i12 = i11;
                    iH = i20;
                    i8 = Integer.MAX_VALUE;
                    i7 = 0;
                    z2 = true;
                }
                jA = IntIntPair.a(i9 - i4, i12);
            }
        }
        return (int) (jA >> 32);
    }

    public final int l(int i2, int i3, List list) {
        int size = list.size();
        int i4 = 0;
        int iMax = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < size) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i4);
            int iS = (this.f4992a ? intrinsicMeasurable.S(i2) : intrinsicMeasurable.l(i2)) + i3;
            int i7 = i4 + 1;
            if (i7 - i5 == this.g || i7 == list.size()) {
                iMax = Math.max(iMax, (i6 + iS) - i3);
                i6 = 0;
                i5 = i4;
            } else {
                i6 += iS;
            }
            i4 = i7;
        }
        return iMax;
    }

    public final int m(List list, int i2, int i3, int i4, int i5, int i6, FlowLayoutOverflowState flowLayoutOverflowState) {
        int i7;
        int i8;
        int i9;
        int i10;
        long jA;
        FlowLayoutOverflow.OverflowType overflowType;
        int i11 = i5;
        i6 = i6;
        int i12 = 0;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int[] iArr = new int[size];
        int size2 = list.size();
        int[] iArr2 = new int[size2];
        List list2 = list;
        int size3 = list2.size();
        int i13 = 0;
        while (i13 < size3) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i13);
            boolean z = this.f4992a;
            int i14 = i12;
            int iM = z ? intrinsicMeasurable.M(i2) : intrinsicMeasurable.H(i2);
            iArr[i13] = iM;
            iArr2[i13] = z ? intrinsicMeasurable.H(iM) : intrinsicMeasurable.M(iM);
            i13++;
            i12 = i14;
        }
        int i15 = i12;
        int i16 = (i6 == Integer.MAX_VALUE || i11 == Integer.MAX_VALUE) ? Integer.MAX_VALUE : i11 * i6;
        int iMin = Math.min(i16 - (((i16 >= list.size() || !((overflowType = flowLayoutOverflowState.f4984a) == FlowLayoutOverflow.OverflowType.ExpandIndicator || overflowType == FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator)) && (i16 < list.size() || i6 < flowLayoutOverflowState.f4985b || flowLayoutOverflowState.f4984a != FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator)) ? i15 : 1), list.size());
        int i17 = i15;
        int i18 = i17;
        while (i17 < size) {
            i18 += iArr[i17];
            i17++;
        }
        int size4 = ((list.size() - 1) * i3) + i18;
        if (size2 == 0) {
            b21.x();
            return i15;
        }
        int i19 = iArr2[i15];
        int i20 = size2 - 1;
        if (1 <= i20) {
            int i21 = 1;
            while (true) {
                int i22 = iArr2[i21];
                if (i19 < i22) {
                    i19 = i22;
                }
                if (i21 == i20) {
                    break;
                }
                i21++;
            }
        }
        if (size == 0) {
            b21.x();
            return 0;
        }
        int i23 = iArr[i15];
        int i24 = size - 1;
        if (1 <= i24) {
            int i25 = 1;
            while (true) {
                int i26 = iArr[i25];
                if (i23 < i26) {
                    i23 = i26;
                }
                if (i25 == i24) {
                    break;
                }
                i25++;
            }
        }
        int i27 = i23;
        int i28 = size4;
        while (i27 <= i28 && i19 != i2) {
            int i29 = (i27 + i28) / 2;
            int i30 = FlowLayoutKt.f4978a;
            if (list.isEmpty()) {
                int i31 = i15;
                jA = IntIntPair.a(i31, i31);
                i8 = i28;
                i7 = i27;
                iArr = iArr;
                iArr2 = iArr2;
                size4 = i29;
                iMin = iMin;
            } else {
                int i32 = i15;
                i7 = i27;
                iArr = iArr;
                iArr2 = iArr2;
                size4 = i29;
                i8 = i28;
                iMin = iMin;
                FlowLayoutBuildingBlocks flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(i11, flowLayoutOverflowState, ConstraintsKt.a(i32, i29, i32, Integer.MAX_VALUE), i6, i3, i4, null);
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) CollectionsKt.G(i32, list);
                if (intrinsicMeasurable2 != null) {
                    i9 = iArr2[i32];
                }
                if (intrinsicMeasurable2 != null) {
                    i9 = i32;
                    i10 = iArr[i32];
                } else {
                    i9 = i32;
                    i10 = 0;
                }
                int i33 = 0;
                int i34 = 0;
                if (flowLayoutBuildingBlocks.b(list.size() > 1, 0, IntIntPair.a(size4, Integer.MAX_VALUE), intrinsicMeasurable2 == null ? null : new IntIntPair(IntIntPair.a(i10, i9)), 0, 0, 0, false, false).f4976b) {
                    IntIntPair intIntPairA = flowLayoutOverflowState.a(0, 0, intrinsicMeasurable2 != null);
                    jA = IntIntPair.a(intIntPairA != null ? (int) (intIntPairA.f3254a & BodyPartID.bodyIdMax) : 0, 0);
                } else {
                    int size5 = list2.size();
                    int i35 = i9;
                    int i36 = size4;
                    int i37 = 0;
                    int i38 = 0;
                    int i39 = 0;
                    int i40 = 0;
                    while (i38 < size5) {
                        int i41 = i36 - i10;
                        i40 = i38 + 1;
                        int iMax = Math.max(i37, i35);
                        IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) CollectionsKt.G(i40, list);
                        i35 = intrinsicMeasurable3 != null ? iArr2[i40] : 0;
                        int i42 = intrinsicMeasurable3 != null ? iArr[i40] + i3 : 0;
                        int i43 = i40 - i39;
                        FlowLayoutBuildingBlocks.WrapInfo wrapInfoB = flowLayoutBuildingBlocks.b(i38 + 2 < list.size(), i43, IntIntPair.a(i41, Integer.MAX_VALUE), intrinsicMeasurable3 == null ? null : new IntIntPair(IntIntPair.a(i42, i35)), i33, i34, iMax, false, false);
                        if (wrapInfoB.f4975a) {
                            int i44 = iMax + i4 + i34;
                            int i45 = i33;
                            FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfoA = flowLayoutBuildingBlocks.a(wrapInfoB, intrinsicMeasurable3 != null, i45, i44, i41, i43);
                            int i46 = i42 - i3;
                            i33 = i45 + 1;
                            if (wrapInfoB.f4976b) {
                                if (wrapEllipsisInfoA != null) {
                                    long j2 = wrapEllipsisInfoA.f4974c;
                                    if (!wrapEllipsisInfoA.d) {
                                        i44 = ((int) (j2 & BodyPartID.bodyIdMax)) + i4 + i44;
                                    }
                                }
                                i34 = i44;
                                break;
                            }
                            i10 = i46;
                            i36 = size4;
                            i39 = i40;
                            i34 = i44;
                            i37 = 0;
                        } else {
                            i10 = i42;
                            i36 = i41;
                            i37 = iMax;
                        }
                        i38 = i40;
                    }
                    jA = IntIntPair.a(i34 - i4, i40);
                }
            }
            i19 = (int) (jA >> 32);
            int i47 = (int) (jA & BodyPartID.bodyIdMax);
            if (i19 > i2 || i47 < iMin) {
                int i48 = size4 + 1;
                if (i48 > i8) {
                    return i48;
                }
                i28 = i8;
                i15 = 0;
                i27 = i48;
            } else {
                if (i19 >= i2) {
                    return size4;
                }
                i28 = size4 - 1;
                i27 = i7;
                i15 = 0;
            }
            i11 = i5;
        }
        return size4;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        List list2 = (List) CollectionsKt.G(1, list);
        IntrinsicMeasurable intrinsicMeasurable = list2 != null ? (IntrinsicMeasurable) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) CollectionsKt.G(2, list);
        IntrinsicMeasurable intrinsicMeasurable2 = list3 != null ? (IntrinsicMeasurable) CollectionsKt.firstOrNull(list3) : null;
        this.f4998i.b(intrinsicMeasurable, intrinsicMeasurable2, this.f4992a, ConstraintsKt.b(0, i2, 0, 0, 13));
        boolean z = this.f4992a;
        float f2 = this.d;
        if (z) {
            List list4 = (List) CollectionsKt.firstOrNull(list);
            if (list4 == null) {
                list4 = EmptyList.f71768b;
            }
            return k(list4, i2, intrinsicMeasureScope.B0(f2), intrinsicMeasureScope.B0(this.f4996f), this.g, this.f4997h, this.f4998i);
        }
        List list5 = (List) CollectionsKt.firstOrNull(list);
        if (list5 == null) {
            list5 = EmptyList.f71768b;
        }
        return l(i2, intrinsicMeasureScope.B0(f2), list5);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        List list2 = (List) CollectionsKt.G(1, list);
        IntrinsicMeasurable intrinsicMeasurable = list2 != null ? (IntrinsicMeasurable) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) CollectionsKt.G(2, list);
        IntrinsicMeasurable intrinsicMeasurable2 = list3 != null ? (IntrinsicMeasurable) CollectionsKt.firstOrNull(list3) : null;
        this.f4998i.b(intrinsicMeasurable, intrinsicMeasurable2, this.f4992a, ConstraintsKt.b(0, 0, 0, i2, 7));
        boolean z = this.f4992a;
        float f2 = this.d;
        if (z) {
            List list4 = (List) CollectionsKt.firstOrNull(list);
            if (list4 == null) {
                list4 = EmptyList.f71768b;
            }
            return l(i2, intrinsicMeasureScope.B0(f2), list4);
        }
        List list5 = (List) CollectionsKt.firstOrNull(list);
        if (list5 == null) {
            list5 = EmptyList.f71768b;
        }
        return k(list5, i2, intrinsicMeasureScope.B0(f2), intrinsicMeasureScope.B0(this.f4996f), this.g, this.f4997h, this.f4998i);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0273  */
    /* JADX WARN: Code duplicated, block: B:103:0x027c  */
    /* JADX WARN: Code duplicated, block: B:104:0x027e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0284  */
    /* JADX WARN: Code duplicated, block: B:108:0x0289  */
    /* JADX WARN: Code duplicated, block: B:111:0x0291  */
    /* JADX WARN: Code duplicated, block: B:115:0x0298 A[Catch: IndexOutOfBoundsException -> 0x02aa, TryCatch #0 {IndexOutOfBoundsException -> 0x02aa, blocks: (B:113:0x0294, B:115:0x0298, B:116:0x02a3), top: B:208:0x0294 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x02a3 A[Catch: IndexOutOfBoundsException -> 0x02aa, TRY_LEAVE, TryCatch #0 {IndexOutOfBoundsException -> 0x02aa, blocks: (B:113:0x0294, B:115:0x0298, B:116:0x02a3), top: B:208:0x0294 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:123:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:125:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:126:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:129:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:130:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:133:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:134:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:137:0x0321  */
    /* JADX WARN: Code duplicated, block: B:139:0x0335  */
    /* JADX WARN: Code duplicated, block: B:141:0x033c  */
    /* JADX WARN: Code duplicated, block: B:144:0x034e  */
    /* JADX WARN: Code duplicated, block: B:145:0x0359  */
    /* JADX WARN: Code duplicated, block: B:148:0x0366  */
    /* JADX WARN: Code duplicated, block: B:149:0x0371  */
    /* JADX WARN: Code duplicated, block: B:151:0x038b  */
    /* JADX WARN: Code duplicated, block: B:155:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:157:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:158:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:161:0x0418 A[LOOP:1: B:160:0x0416->B:161:0x0418, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:164:0x0430  */
    /* JADX WARN: Code duplicated, block: B:167:0x0440  */
    /* JADX WARN: Code duplicated, block: B:169:0x0449  */
    /* JADX WARN: Code duplicated, block: B:170:0x044b  */
    /* JADX WARN: Code duplicated, block: B:173:0x0476  */
    /* JADX WARN: Code duplicated, block: B:174:0x047f  */
    /* JADX WARN: Code duplicated, block: B:178:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:179:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:181:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:183:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:186:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:188:0x04db  */
    /* JADX WARN: Code duplicated, block: B:190:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:192:0x04fb  */
    /* JADX WARN: Code duplicated, block: B:193:0x04fd  */
    /* JADX WARN: Code duplicated, block: B:197:0x0512  */
    /* JADX WARN: Code duplicated, block: B:200:0x0516  */
    /* JADX WARN: Code duplicated, block: B:202:0x0519  */
    /* JADX WARN: Code duplicated, block: B:208:0x0294 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x013e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0150  */
    /* JADX WARN: Code duplicated, block: B:61:0x0157  */
    /* JADX WARN: Code duplicated, block: B:62:0x0161  */
    /* JADX WARN: Code duplicated, block: B:65:0x016b  */
    /* JADX WARN: Code duplicated, block: B:66:0x0175  */
    /* JADX WARN: Code duplicated, block: B:69:0x01d0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:71:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:74:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:81:0x0247  */
    /* JADX WARN: Code duplicated, block: B:82:0x024a  */
    /* JADX WARN: Code duplicated, block: B:87:0x0258  */
    /* JADX WARN: Code duplicated, block: B:89:0x025b  */
    /* JADX WARN: Code duplicated, block: B:92:0x0261  */
    /* JADX WARN: Code duplicated, block: B:93:0x0263  */
    /* JADX WARN: Code duplicated, block: B:95:0x0266 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0268  */
    /* JADX WARN: Code duplicated, block: B:98:0x026e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0270  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s, reason: not valid java name */
    public final MeasureResult mo2measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        MutableVector mutableVector;
        Measurable measurableA;
        IntIntPair intIntPair;
        Integer numValueOf;
        Integer num;
        Integer numValueOf2;
        IntIntPair intIntPair2;
        FlowLayoutBuildingBlocks flowLayoutBuildingBlocks;
        int i2;
        FlowLayoutOverflowState flowLayoutOverflowState;
        int i3;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfoB;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfo;
        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfoA;
        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo;
        int i4;
        int i5;
        MutableIntList mutableIntList;
        int i6;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfo2;
        int i7;
        Measurable measurable;
        int i8;
        int i9;
        int i10;
        boolean z;
        int i11;
        Integer num2;
        MutableIntList mutableIntList2;
        int i12;
        MutableIntSet mutableIntSet;
        int i13;
        MutableIntList mutableIntList3;
        MutableIntSet mutableIntSet2;
        MutableIntList mutableIntList4;
        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo2;
        int size;
        ArrayList arrayList;
        Placeable[] placeableArr;
        int i14;
        int i15;
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int i16;
        int i17;
        int i18;
        int i19;
        MutableVector mutableVector2;
        int i20;
        int i21;
        int i22;
        int iB0;
        int i23;
        int iG;
        int i24;
        int iG2;
        int iJ;
        int iH;
        int iB1;
        int i25;
        int iB;
        MeasureResult measureResultA;
        int f9727b;
        int f9726a;
        long j3;
        int i26;
        int i27;
        int i28;
        int iMax;
        int i29;
        int i30;
        Object t;
        RowColumnParentData rowColumnParentData;
        Float fValueOf;
        int i31;
        boolean z2;
        int i32;
        Measurable measurableA2;
        Measurable measurable2;
        IntIntPair intIntPair3;
        Integer numValueOf3;
        Integer num3;
        Integer numValueOf4;
        int i33;
        Integer num4;
        IntIntPair intIntPair4;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfoB2;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfo3;
        int i34;
        MutableIntList mutableIntList5;
        MutableIntList mutableIntList6;
        MutableIntSet mutableIntSet3;
        int i35;
        boolean z3;
        Integer numValueOf5;
        int i36;
        int i37;
        int i38;
        FlowLayoutData flowLayoutData;
        boolean z4;
        final FlowMeasurePolicy flowMeasurePolicy = this;
        MeasureScope measureScope2 = measureScope;
        final int i39 = 0;
        if (flowMeasurePolicy.f4997h != 0 && flowMeasurePolicy.g != 0 && !((ArrayList) list).isEmpty()) {
            int iG3 = Constraints.g(j2);
            final FlowLayoutOverflowState flowLayoutOverflowState2 = flowMeasurePolicy.f4998i;
            if (iG3 != 0 || flowLayoutOverflowState2.f4984a == FlowLayoutOverflow.OverflowType.Visible) {
                List list2 = (List) CollectionsKt.B(list);
                if (list2.isEmpty()) {
                    return measureScope2.V0(0, 0, MapsKt.c(), new dy(10));
                }
                final int i40 = 1;
                List list3 = (List) CollectionsKt.G(1, list);
                Measurable measurable3 = list3 != null ? (Measurable) CollectionsKt.firstOrNull(list3) : null;
                List list4 = (List) CollectionsKt.G(2, list);
                Measurable measurable4 = list4 != null ? (Measurable) CollectionsKt.firstOrNull(list4) : null;
                list2.size();
                flowLayoutOverflowState2.getClass();
                boolean z5 = flowMeasurePolicy.f4992a;
                LayoutOrientation layoutOrientation = z5 ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical;
                long jC = OrientationIndependentConstraints.c(OrientationIndependentConstraints.b(10, OrientationIndependentConstraints.a(j2, layoutOrientation)), layoutOrientation);
                if (measurable3 != null) {
                    FlowLayoutKt.c(measurable3, flowMeasurePolicy, jC, new Function1() { // from class: pz
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int iE;
                            int iE2;
                            int i41 = i39;
                            int iC = 0;
                            FlowLineMeasurePolicy flowLineMeasurePolicy = flowMeasurePolicy;
                            FlowLayoutOverflowState flowLayoutOverflowState3 = flowLayoutOverflowState2;
                            Placeable placeable = (Placeable) obj;
                            switch (i41) {
                                case 0:
                                    if (placeable != null) {
                                        iC = flowLineMeasurePolicy.c(placeable);
                                        iE = flowLineMeasurePolicy.e(placeable);
                                    } else {
                                        iE = 0;
                                    }
                                    flowLayoutOverflowState3.f4989h = new IntIntPair(IntIntPair.a(iC, iE));
                                    flowLayoutOverflowState3.f4987e = placeable;
                                    break;
                                default:
                                    if (placeable != null) {
                                        iC = flowLineMeasurePolicy.c(placeable);
                                        iE2 = flowLineMeasurePolicy.e(placeable);
                                    } else {
                                        iE2 = 0;
                                    }
                                    flowLayoutOverflowState3.f4990i = new IntIntPair(IntIntPair.a(iC, iE2));
                                    flowLayoutOverflowState3.g = placeable;
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    });
                    flowLayoutOverflowState2.d = measurable3;
                }
                if (measurable4 != null) {
                    FlowLayoutKt.c(measurable4, flowMeasurePolicy, jC, new Function1() { // from class: pz
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int iE;
                            int iE2;
                            int i41 = i40;
                            int iC = 0;
                            FlowLineMeasurePolicy flowLineMeasurePolicy = flowMeasurePolicy;
                            FlowLayoutOverflowState flowLayoutOverflowState3 = flowLayoutOverflowState2;
                            Placeable placeable = (Placeable) obj;
                            switch (i41) {
                                case 0:
                                    if (placeable != null) {
                                        iC = flowLineMeasurePolicy.c(placeable);
                                        iE = flowLineMeasurePolicy.e(placeable);
                                    } else {
                                        iE = 0;
                                    }
                                    flowLayoutOverflowState3.f4989h = new IntIntPair(IntIntPair.a(iC, iE));
                                    flowLayoutOverflowState3.f4987e = placeable;
                                    break;
                                default:
                                    if (placeable != null) {
                                        iC = flowLineMeasurePolicy.c(placeable);
                                        iE2 = flowLineMeasurePolicy.e(placeable);
                                    } else {
                                        iE2 = 0;
                                    }
                                    flowLayoutOverflowState3.f4990i = new IntIntPair(IntIntPair.a(iC, iE2));
                                    flowLayoutOverflowState3.g = placeable;
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    });
                    flowLayoutOverflowState2.f4988f = measurable4;
                }
                Iterator it = list2.iterator();
                long jA = OrientationIndependentConstraints.a(j2, z5 ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical);
                int i41 = FlowLayoutKt.f4978a;
                MutableVector mutableVector3 = new MutableVector(new MeasureResult[16], 0);
                int iH2 = Constraints.h(jA);
                int iJ2 = Constraints.j(jA);
                int iG4 = Constraints.g(jA);
                MutableIntObjectMap mutableIntObjectMapA = IntObjectMapKt.a();
                ArrayList arrayList2 = new ArrayList();
                int iCeil = (int) Math.ceil(measureScope2.u1(flowMeasurePolicy.d));
                int iCeil2 = (int) Math.ceil(measureScope2.u1(flowMeasurePolicy.f4996f));
                long jA2 = ConstraintsKt.a(0, iH2, 0, iG4);
                long jC2 = OrientationIndependentConstraints.c(OrientationIndependentConstraints.b(14, jA2), z5 ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                FlowLineInfo flowLineInfo = it instanceof ContextualFlowItemIterator ? new FlowLineInfo(0, 0, measureScope2.k1(iH2), measureScope2.k1(iG4), null) : null;
                if (it.hasNext()) {
                    mutableVector = mutableVector3;
                    try {
                        if (it instanceof ContextualFlowItemIterator) {
                            flowLineInfo.getClass();
                            measurableA = ((ContextualFlowItemIterator) it).a(flowLineInfo);
                        } else {
                            measurableA = (Measurable) it.next();
                        }
                    } catch (IndexOutOfBoundsException unused) {
                        measurableA = null;
                    }
                    if (measurableA != null) {
                        intIntPair = new IntIntPair(FlowLayoutKt.c(measurableA, flowMeasurePolicy, jC2, new nz(0, ref$ObjectRef)));
                    } else {
                        intIntPair = null;
                    }
                    if (intIntPair != null) {
                        numValueOf = Integer.valueOf((int) (intIntPair.f3254a >> 32));
                    } else {
                        numValueOf = null;
                    }
                    num = numValueOf;
                    if (intIntPair != null) {
                        numValueOf2 = Integer.valueOf((int) (intIntPair.f3254a & BodyPartID.bodyIdMax));
                    } else {
                        numValueOf2 = null;
                    }
                    Measurable measurable5 = measurableA;
                    intIntPair2 = intIntPair;
                    MutableIntList mutableIntList7 = new MutableIntList(0, 1, null);
                    Integer num5 = numValueOf2;
                    MutableIntList mutableIntList8 = new MutableIntList(0, 1, null);
                    MutableIntSet mutableIntSetA = IntSetKt.a();
                    i2 = flowMeasurePolicy.g;
                    flowLayoutOverflowState = flowMeasurePolicy.f4998i;
                    flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(i2, flowLayoutOverflowState, jA, flowMeasurePolicy.f4997h, iCeil, iCeil2, null);
                    i3 = iCeil;
                    wrapInfoB = flowLayoutBuildingBlocks.b(it.hasNext(), 0, IntIntPair.a(iH2, iG4), intIntPair2, 0, 0, 0, false, false);
                    if (wrapInfoB.f4976b) {
                        if (intIntPair2 != null) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        wrapInfo = wrapInfoB;
                        wrapEllipsisInfoA = flowLayoutBuildingBlocks.a(wrapInfo, z4, -1, 0, iH2, 0);
                    } else {
                        wrapInfo = wrapInfoB;
                        wrapEllipsisInfoA = null;
                    }
                    wrapEllipsisInfo = wrapEllipsisInfoA;
                    i4 = iH2;
                    i5 = i4;
                    mutableIntList = mutableIntList8;
                    i6 = iG4;
                    wrapInfo2 = wrapInfo;
                    i7 = 0;
                    measurable = measurable5;
                    i8 = 0;
                    i9 = 0;
                    i10 = 0;
                    z = false;
                    i11 = 0;
                    num2 = num5;
                    mutableIntList2 = mutableIntList7;
                    i12 = iJ2;
                    mutableIntSet = mutableIntSetA;
                    i13 = 0;
                    while (!wrapInfo2.f4976b && measurable != null) {
                        num.getClass();
                        int iIntValue = num.intValue();
                        num2.getClass();
                        int iIntValue2 = num2.intValue();
                        i27 = i12;
                        i28 = i9 + iIntValue;
                        iMax = Math.max(i13, iIntValue2);
                        i29 = i4 - iIntValue;
                        i30 = i8 + 1;
                        flowLayoutOverflowState.getClass();
                        arrayList2.add(measurable);
                        mutableIntObjectMapA.i(i8, ref$ObjectRef.f71921b);
                        t = measurable.getT();
                        if (t instanceof RowColumnParentData) {
                            rowColumnParentData = (RowColumnParentData) t;
                        } else {
                            rowColumnParentData = null;
                        }
                        if (rowColumnParentData != null || (flowLayoutData = rowColumnParentData.d) == null) {
                            fValueOf = null;
                        } else {
                            fValueOf = Float.valueOf(flowLayoutData.f4977a);
                        }
                        if (fValueOf != null) {
                            z = true;
                        }
                        i31 = i30 - i10;
                        if (i31 < i2) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (flowLineInfo != null) {
                            if (z2) {
                                i38 = i29 - i3;
                                i32 = i31;
                                if (i38 < 0) {
                                    i36 = 0;
                                } else {
                                    i36 = i38;
                                }
                            } else {
                                i32 = i31;
                                i36 = i5;
                            }
                            measureScope2.k1(i36);
                            if (z2) {
                                i37 = i6;
                            } else {
                                i37 = (i6 - iMax) - iCeil2;
                                if (i37 < 0) {
                                    i37 = 0;
                                }
                            }
                            measureScope2.k1(i37);
                        } else {
                            i32 = i31;
                        }
                        if (it.hasNext()) {
                            try {
                                if (it instanceof ContextualFlowItemIterator) {
                                    flowLineInfo.getClass();
                                    measurableA2 = ((ContextualFlowItemIterator) it).a(flowLineInfo);
                                } else {
                                    measurableA2 = (Measurable) it.next();
                                }
                            } catch (IndexOutOfBoundsException unused2) {
                                measurableA2 = null;
                            }
                            measurable2 = measurableA2;
                        } else {
                            measurable2 = null;
                        }
                        ref$ObjectRef.f71921b = null;
                        if (measurable2 != null) {
                            intIntPair3 = new IntIntPair(FlowLayoutKt.c(measurable2, flowMeasurePolicy, jC2, new nz(1, ref$ObjectRef)));
                        } else {
                            intIntPair3 = null;
                        }
                        if (intIntPair3 != null) {
                            numValueOf3 = Integer.valueOf(((int) (intIntPair3.f3254a >> 32)) + i3);
                        } else {
                            numValueOf3 = null;
                        }
                        num3 = numValueOf3;
                        if (intIntPair3 != null) {
                            numValueOf4 = Integer.valueOf((int) (intIntPair3.f3254a & BodyPartID.bodyIdMax));
                        } else {
                            numValueOf4 = null;
                        }
                        boolean zHasNext = it.hasNext();
                        i33 = i7;
                        long jA3 = IntIntPair.a(i29, i6);
                        if (intIntPair3 == null) {
                            num4 = numValueOf4;
                            intIntPair4 = null;
                        } else {
                            num3.getClass();
                            int iIntValue3 = num3.intValue();
                            numValueOf4.getClass();
                            num4 = numValueOf4;
                            intIntPair4 = new IntIntPair(IntIntPair.a(iIntValue3, num4.intValue()));
                        }
                        wrapInfoB2 = flowLayoutBuildingBlocks.b(zHasNext, i32, jA3, intIntPair4, i33, i11, iMax, false, false);
                        if (wrapInfoB2.f4975a) {
                            int i42 = i5;
                            int iMin = Math.min(Math.max(i27, i28), i42);
                            int i43 = i11 + iMax;
                            int i44 = i32;
                            if (intIntPair3 != null) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            wrapInfo3 = wrapInfoB2;
                            FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfoA2 = flowLayoutBuildingBlocks.a(wrapInfo3, z3, i33, i43, i29, i44);
                            mutableIntList5 = mutableIntList;
                            mutableIntList5.e(iMax);
                            mutableIntSet3 = mutableIntSet;
                            if (z) {
                                mutableIntSet3.f3264b[mutableIntSet3.d(i33)] = i33;
                            }
                            int i45 = (iG4 - i43) - iCeil2;
                            MutableIntList mutableIntList9 = mutableIntList2;
                            mutableIntList9.e(i30);
                            if (num3 != 0) {
                                numValueOf5 = Integer.valueOf(num3.intValue() - i3);
                            } else {
                                numValueOf5 = null;
                            }
                            i7 = i33 + 1;
                            wrapEllipsisInfo = wrapEllipsisInfoA2;
                            i5 = i42;
                            i34 = i5;
                            i10 = i30;
                            num = numValueOf5;
                            i11 = i43 + iCeil2;
                            i13 = 0;
                            z = false;
                            i6 = i45;
                            mutableIntList6 = mutableIntList9;
                            i12 = iMin;
                            i35 = 0;
                        } else {
                            wrapInfo3 = wrapInfoB2;
                            i34 = i29;
                            mutableIntList5 = mutableIntList;
                            mutableIntList6 = mutableIntList2;
                            mutableIntSet3 = mutableIntSet;
                            i12 = i27;
                            i35 = i28;
                            i7 = i33;
                            num = num3;
                            i13 = iMax;
                        }
                        i9 = i35;
                        it = it;
                        mutableIntList2 = mutableIntList6;
                        mutableIntSet = mutableIntSet3;
                        mutableIntList = mutableIntList5;
                        measurable = measurable2;
                        i8 = i30;
                        num2 = num4;
                        wrapInfo2 = wrapInfo3;
                        i4 = i34;
                        flowMeasurePolicy = this;
                        measureScope2 = measureScope;
                    }
                    mutableIntList3 = mutableIntList2;
                    mutableIntSet2 = mutableIntSet;
                    int i46 = i12;
                    mutableIntList4 = mutableIntList;
                    wrapEllipsisInfo2 = wrapEllipsisInfo;
                    if (wrapEllipsisInfo2 != null) {
                        j3 = wrapEllipsisInfo2.f4974c;
                        arrayList2.add(wrapEllipsisInfo2.f4972a);
                        mutableIntObjectMapA.i(arrayList2.size() - 1, wrapEllipsisInfo2.f4973b);
                        i26 = mutableIntList3.f3256b - 1;
                        if (wrapEllipsisInfo2.d) {
                            mutableIntList4.h(i26, Math.max(mutableIntList4.b(i26), (int) (j3 & BodyPartID.bodyIdMax)));
                            mutableIntList3.h(i26, mutableIntList3.c() + 1);
                        } else {
                            mutableIntList4.e((int) (j3 & BodyPartID.bodyIdMax));
                            mutableIntList3.e(mutableIntList3.c() + 1);
                        }
                    }
                    size = arrayList2.size();
                    arrayList = arrayList2;
                    placeableArr = new Placeable[size];
                    for (i14 = 0; i14 < size; i14++) {
                        placeableArr[i14] = mutableIntObjectMapA.b(i14);
                    }
                    i15 = mutableIntList3.f3256b;
                    iArr = new int[i15];
                    iArr2 = new int[i15];
                    iArr3 = mutableIntList3.f3255a;
                    i16 = i46;
                    i17 = 0;
                    i18 = 0;
                    i19 = 0;
                    while (i18 < i15) {
                        int i47 = i16;
                        int i48 = iArr3[i18];
                        iB = mutableIntList4.b(i18);
                        if (!mutableIntSet2.a(i18)) {
                            if (Constraints.g(jA2) == Integer.MAX_VALUE) {
                                iB = Integer.MAX_VALUE;
                            } else {
                                iB = Constraints.g(jA2) - i19;
                            }
                        }
                        MutableIntSet mutableIntSet4 = mutableIntSet2;
                        MutableIntList mutableIntList10 = mutableIntList4;
                        ArrayList arrayList3 = arrayList;
                        int i49 = i15;
                        int i50 = i3;
                        MutableVector mutableVector4 = mutableVector;
                        measureResultA = RowColumnMeasurePolicyKt.a(this, i47, Constraints.i(jA2), Constraints.h(jA2), iB, i50, measureScope, arrayList3, placeableArr, i17, i48, iArr, i18);
                        arrayList = arrayList3;
                        if (z5) {
                            f9727b = measureResultA.getF9432a();
                            f9726a = measureResultA.getF9433b();
                        } else {
                            f9727b = measureResultA.getF9433b();
                            f9726a = measureResultA.getF9432a();
                        }
                        iArr2[i18] = f9726a;
                        i19 += f9726a;
                        int iMax2 = Math.max(i47, f9727b);
                        mutableVector4.b(measureResultA);
                        i18++;
                        i17 = i48;
                        mutableVector = mutableVector4;
                        mutableIntSet2 = mutableIntSet4;
                        i15 = i49;
                        i3 = i50;
                        mutableIntList4 = mutableIntList10;
                        i16 = iMax2;
                    }
                    mutableVector2 = mutableVector;
                    i20 = i16;
                    if (mutableVector2.d == 0) {
                        i21 = 0;
                        i22 = 0;
                    } else {
                        i21 = i20;
                        i22 = i19;
                    }
                    if (z5) {
                        Arrangement.Vertical vertical = this.f4994c;
                        iB1 = ((mutableVector2.d - 1) * measureScope.B0(vertical.getD())) + i22;
                        i25 = Constraints.i(jA);
                        iG2 = Constraints.g(jA);
                        if (iB1 < i25) {
                            iB1 = i25;
                        }
                        if (iB1 <= iG2) {
                            iG2 = iB1;
                        }
                        vertical.b(measureScope, iG2, iArr2, iArr);
                    } else {
                        Arrangement.Horizontal horizontal = this.f4993b;
                        iB0 = ((mutableVector2.d - 1) * measureScope.B0(horizontal.getD())) + i22;
                        i23 = Constraints.i(jA);
                        iG = Constraints.g(jA);
                        if (iB0 < i23) {
                            iB0 = i23;
                        }
                        if (iB0 > iG) {
                            i24 = iG;
                        } else {
                            i24 = iB0;
                        }
                        horizontal.c(measureScope, i24, iArr2, measureScope.getF9495b(), iArr);
                        iG2 = i24;
                    }
                    iJ = Constraints.j(jA);
                    iH = Constraints.h(jA);
                    if (i21 < iJ) {
                        i21 = iJ;
                    }
                    if (i21 <= iH) {
                        iH = i21;
                    }
                    if (z5) {
                        int i51 = iG2;
                        iG2 = iH;
                        iH = i51;
                    }
                    return measureScope.V0(iG2, iH, MapsKt.c(), new ck(mutableVector2, 27));
                }
                mutableVector = mutableVector3;
                measurableA = null;
                if (measurableA != null) {
                    intIntPair = new IntIntPair(FlowLayoutKt.c(measurableA, flowMeasurePolicy, jC2, new nz(0, ref$ObjectRef)));
                } else {
                    intIntPair = null;
                }
                if (intIntPair != null) {
                    numValueOf = Integer.valueOf((int) (intIntPair.f3254a >> 32));
                } else {
                    numValueOf = null;
                }
                num = numValueOf;
                if (intIntPair != null) {
                    numValueOf2 = Integer.valueOf((int) (intIntPair.f3254a & BodyPartID.bodyIdMax));
                } else {
                    numValueOf2 = null;
                }
                Measurable measurable6 = measurableA;
                intIntPair2 = intIntPair;
                MutableIntList mutableIntList11 = new MutableIntList(0, 1, null);
                Integer num6 = numValueOf2;
                MutableIntList mutableIntList12 = new MutableIntList(0, 1, null);
                MutableIntSet mutableIntSetA2 = IntSetKt.a();
                i2 = flowMeasurePolicy.g;
                flowLayoutOverflowState = flowMeasurePolicy.f4998i;
                flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(i2, flowLayoutOverflowState, jA, flowMeasurePolicy.f4997h, iCeil, iCeil2, null);
                i3 = iCeil;
                wrapInfoB = flowLayoutBuildingBlocks.b(it.hasNext(), 0, IntIntPair.a(iH2, iG4), intIntPair2, 0, 0, 0, false, false);
                if (wrapInfoB.f4976b) {
                    if (intIntPair2 != null) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    wrapInfo = wrapInfoB;
                    wrapEllipsisInfoA = flowLayoutBuildingBlocks.a(wrapInfo, z4, -1, 0, iH2, 0);
                } else {
                    wrapInfo = wrapInfoB;
                    wrapEllipsisInfoA = null;
                }
                wrapEllipsisInfo = wrapEllipsisInfoA;
                i4 = iH2;
                i5 = i4;
                mutableIntList = mutableIntList12;
                i6 = iG4;
                wrapInfo2 = wrapInfo;
                i7 = 0;
                measurable = measurable6;
                i8 = 0;
                i9 = 0;
                i10 = 0;
                z = false;
                i11 = 0;
                num2 = num6;
                mutableIntList2 = mutableIntList11;
                i12 = iJ2;
                mutableIntSet = mutableIntSetA2;
                i13 = 0;
                while (!wrapInfo2.f4976b) {
                    num.getClass();
                    int iIntValue4 = num.intValue();
                    num2.getClass();
                    int iIntValue5 = num2.intValue();
                    i27 = i12;
                    i28 = i9 + iIntValue4;
                    iMax = Math.max(i13, iIntValue5);
                    i29 = i4 - iIntValue4;
                    i30 = i8 + 1;
                    flowLayoutOverflowState.getClass();
                    arrayList2.add(measurable);
                    mutableIntObjectMapA.i(i8, ref$ObjectRef.f71921b);
                    t = measurable.getT();
                    if (t instanceof RowColumnParentData) {
                        rowColumnParentData = (RowColumnParentData) t;
                    } else {
                        rowColumnParentData = null;
                    }
                    if (rowColumnParentData != null) {
                        fValueOf = null;
                    } else {
                        fValueOf = null;
                    }
                    if (fValueOf != null) {
                        z = true;
                    }
                    i31 = i30 - i10;
                    if (i31 < i2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (flowLineInfo != null) {
                        if (z2) {
                            i38 = i29 - i3;
                            i32 = i31;
                            if (i38 < 0) {
                                i36 = 0;
                            } else {
                                i36 = i38;
                            }
                        } else {
                            i32 = i31;
                            i36 = i5;
                        }
                        measureScope2.k1(i36);
                        if (z2) {
                            i37 = i6;
                        } else {
                            i37 = (i6 - iMax) - iCeil2;
                            if (i37 < 0) {
                                i37 = 0;
                            }
                        }
                        measureScope2.k1(i37);
                    } else {
                        i32 = i31;
                    }
                    if (it.hasNext()) {
                        measurable2 = null;
                    } else {
                        if (it instanceof ContextualFlowItemIterator) {
                            flowLineInfo.getClass();
                            measurableA2 = ((ContextualFlowItemIterator) it).a(flowLineInfo);
                        } else {
                            measurableA2 = (Measurable) it.next();
                        }
                        measurable2 = measurableA2;
                    }
                    ref$ObjectRef.f71921b = null;
                    if (measurable2 != null) {
                        intIntPair3 = new IntIntPair(FlowLayoutKt.c(measurable2, flowMeasurePolicy, jC2, new nz(1, ref$ObjectRef)));
                    } else {
                        intIntPair3 = null;
                    }
                    if (intIntPair3 != null) {
                        numValueOf3 = Integer.valueOf(((int) (intIntPair3.f3254a >> 32)) + i3);
                    } else {
                        numValueOf3 = null;
                    }
                    num3 = numValueOf3;
                    if (intIntPair3 != null) {
                        numValueOf4 = Integer.valueOf((int) (intIntPair3.f3254a & BodyPartID.bodyIdMax));
                    } else {
                        numValueOf4 = null;
                    }
                    boolean zHasNext2 = it.hasNext();
                    i33 = i7;
                    long jA4 = IntIntPair.a(i29, i6);
                    if (intIntPair3 == null) {
                        num4 = numValueOf4;
                        intIntPair4 = null;
                    } else {
                        num3.getClass();
                        int iIntValue6 = num3.intValue();
                        numValueOf4.getClass();
                        num4 = numValueOf4;
                        intIntPair4 = new IntIntPair(IntIntPair.a(iIntValue6, num4.intValue()));
                    }
                    wrapInfoB2 = flowLayoutBuildingBlocks.b(zHasNext2, i32, jA4, intIntPair4, i33, i11, iMax, false, false);
                    if (wrapInfoB2.f4975a) {
                        int i410 = i5;
                        int iMin2 = Math.min(Math.max(i27, i28), i410);
                        int i411 = i11 + iMax;
                        int i412 = i32;
                        if (intIntPair3 != null) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        wrapInfo3 = wrapInfoB2;
                        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfoA3 = flowLayoutBuildingBlocks.a(wrapInfo3, z3, i33, i411, i29, i412);
                        mutableIntList5 = mutableIntList;
                        mutableIntList5.e(iMax);
                        mutableIntSet3 = mutableIntSet;
                        if (z) {
                            mutableIntSet3.f3264b[mutableIntSet3.d(i33)] = i33;
                        }
                        int i413 = (iG4 - i411) - iCeil2;
                        MutableIntList mutableIntList13 = mutableIntList2;
                        mutableIntList13.e(i30);
                        if (num3 != 0) {
                            numValueOf5 = Integer.valueOf(num3.intValue() - i3);
                        } else {
                            numValueOf5 = null;
                        }
                        i7 = i33 + 1;
                        wrapEllipsisInfo = wrapEllipsisInfoA3;
                        i5 = i410;
                        i34 = i5;
                        i10 = i30;
                        num = numValueOf5;
                        i11 = i411 + iCeil2;
                        i13 = 0;
                        z = false;
                        i6 = i413;
                        mutableIntList6 = mutableIntList13;
                        i12 = iMin2;
                        i35 = 0;
                    } else {
                        wrapInfo3 = wrapInfoB2;
                        i34 = i29;
                        mutableIntList5 = mutableIntList;
                        mutableIntList6 = mutableIntList2;
                        mutableIntSet3 = mutableIntSet;
                        i12 = i27;
                        i35 = i28;
                        i7 = i33;
                        num = num3;
                        i13 = iMax;
                    }
                    i9 = i35;
                    it = it;
                    mutableIntList2 = mutableIntList6;
                    mutableIntSet = mutableIntSet3;
                    mutableIntList = mutableIntList5;
                    measurable = measurable2;
                    i8 = i30;
                    num2 = num4;
                    wrapInfo2 = wrapInfo3;
                    i4 = i34;
                    flowMeasurePolicy = this;
                    measureScope2 = measureScope;
                }
                mutableIntList3 = mutableIntList2;
                mutableIntSet2 = mutableIntSet;
                int i414 = i12;
                mutableIntList4 = mutableIntList;
                wrapEllipsisInfo2 = wrapEllipsisInfo;
                if (wrapEllipsisInfo2 != null) {
                    j3 = wrapEllipsisInfo2.f4974c;
                    arrayList2.add(wrapEllipsisInfo2.f4972a);
                    mutableIntObjectMapA.i(arrayList2.size() - 1, wrapEllipsisInfo2.f4973b);
                    i26 = mutableIntList3.f3256b - 1;
                    if (wrapEllipsisInfo2.d) {
                        mutableIntList4.h(i26, Math.max(mutableIntList4.b(i26), (int) (j3 & BodyPartID.bodyIdMax)));
                        mutableIntList3.h(i26, mutableIntList3.c() + 1);
                    } else {
                        mutableIntList4.e((int) (j3 & BodyPartID.bodyIdMax));
                        mutableIntList3.e(mutableIntList3.c() + 1);
                    }
                }
                size = arrayList2.size();
                arrayList = arrayList2;
                placeableArr = new Placeable[size];
                while (i14 < size) {
                    placeableArr[i14] = mutableIntObjectMapA.b(i14);
                }
                i15 = mutableIntList3.f3256b;
                iArr = new int[i15];
                iArr2 = new int[i15];
                iArr3 = mutableIntList3.f3255a;
                i16 = i414;
                i17 = 0;
                i18 = 0;
                i19 = 0;
                while (i18 < i15) {
                    int i415 = i16;
                    int i416 = iArr3[i18];
                    iB = mutableIntList4.b(i18);
                    if (!mutableIntSet2.a(i18)) {
                        if (Constraints.g(jA2) == Integer.MAX_VALUE) {
                            iB = Integer.MAX_VALUE;
                        } else {
                            iB = Constraints.g(jA2) - i19;
                        }
                    }
                    MutableIntSet mutableIntSet5 = mutableIntSet2;
                    MutableIntList mutableIntList14 = mutableIntList4;
                    ArrayList arrayList4 = arrayList;
                    int i417 = i15;
                    int i52 = i3;
                    MutableVector mutableVector5 = mutableVector;
                    measureResultA = RowColumnMeasurePolicyKt.a(this, i415, Constraints.i(jA2), Constraints.h(jA2), iB, i52, measureScope, arrayList4, placeableArr, i17, i416, iArr, i18);
                    arrayList = arrayList4;
                    if (z5) {
                        f9727b = measureResultA.getF9432a();
                        f9726a = measureResultA.getF9433b();
                    } else {
                        f9727b = measureResultA.getF9433b();
                        f9726a = measureResultA.getF9432a();
                    }
                    iArr2[i18] = f9726a;
                    i19 += f9726a;
                    int iMax3 = Math.max(i415, f9727b);
                    mutableVector5.b(measureResultA);
                    i18++;
                    i17 = i416;
                    mutableVector = mutableVector5;
                    mutableIntSet2 = mutableIntSet5;
                    i15 = i417;
                    i3 = i52;
                    mutableIntList4 = mutableIntList14;
                    i16 = iMax3;
                }
                mutableVector2 = mutableVector;
                i20 = i16;
                if (mutableVector2.d == 0) {
                    i21 = 0;
                    i22 = 0;
                } else {
                    i21 = i20;
                    i22 = i19;
                }
                if (z5) {
                    Arrangement.Vertical vertical2 = this.f4994c;
                    iB1 = ((mutableVector2.d - 1) * measureScope.B0(vertical2.getD())) + i22;
                    i25 = Constraints.i(jA);
                    iG2 = Constraints.g(jA);
                    if (iB1 < i25) {
                        iB1 = i25;
                    }
                    if (iB1 <= iG2) {
                        iG2 = iB1;
                    }
                    vertical2.b(measureScope, iG2, iArr2, iArr);
                } else {
                    Arrangement.Horizontal horizontal2 = this.f4993b;
                    iB0 = ((mutableVector2.d - 1) * measureScope.B0(horizontal2.getD())) + i22;
                    i23 = Constraints.i(jA);
                    iG = Constraints.g(jA);
                    if (iB0 < i23) {
                        iB0 = i23;
                    }
                    if (iB0 > iG) {
                        i24 = iG;
                    } else {
                        i24 = iB0;
                    }
                    horizontal2.c(measureScope, i24, iArr2, measureScope.getF9495b(), iArr);
                    iG2 = i24;
                }
                iJ = Constraints.j(jA);
                iH = Constraints.h(jA);
                if (i21 < iJ) {
                    i21 = iJ;
                }
                if (i21 <= iH) {
                    iH = i21;
                }
                if (z5) {
                    int i53 = iG2;
                    iG2 = iH;
                    iH = i53;
                }
                return measureScope.V0(iG2, iH, MapsKt.c(), new ck(mutableVector2, 27));
            }
        }
        return measureScope2.V0(0, 0, MapsKt.c(), new dy(9));
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        List list2 = (List) CollectionsKt.G(1, list);
        IntrinsicMeasurable intrinsicMeasurable = list2 != null ? (IntrinsicMeasurable) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) CollectionsKt.G(2, list);
        IntrinsicMeasurable intrinsicMeasurable2 = list3 != null ? (IntrinsicMeasurable) CollectionsKt.firstOrNull(list3) : null;
        this.f4998i.b(intrinsicMeasurable, intrinsicMeasurable2, this.f4992a, ConstraintsKt.b(0, i2, 0, 0, 13));
        boolean z = this.f4992a;
        float f2 = this.f4996f;
        float f3 = this.d;
        if (z) {
            List list4 = (List) CollectionsKt.firstOrNull(list);
            if (list4 == null) {
                list4 = EmptyList.f71768b;
            }
            return k(list4, i2, intrinsicMeasureScope.B0(f3), intrinsicMeasureScope.B0(f2), this.g, this.f4997h, this.f4998i);
        }
        List list5 = (List) CollectionsKt.firstOrNull(list);
        if (list5 == null) {
            list5 = EmptyList.f71768b;
        }
        return m(list5, i2, intrinsicMeasureScope.B0(f3), intrinsicMeasureScope.B0(f2), this.g, this.f4997h, this.f4998i);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        List list2 = (List) CollectionsKt.G(1, list);
        IntrinsicMeasurable intrinsicMeasurable = list2 != null ? (IntrinsicMeasurable) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) CollectionsKt.G(2, list);
        IntrinsicMeasurable intrinsicMeasurable2 = list3 != null ? (IntrinsicMeasurable) CollectionsKt.firstOrNull(list3) : null;
        this.f4998i.b(intrinsicMeasurable, intrinsicMeasurable2, this.f4992a, ConstraintsKt.b(0, 0, 0, i2, 7));
        boolean z = this.f4992a;
        float f2 = this.f4996f;
        float f3 = this.d;
        if (z) {
            List list4 = (List) CollectionsKt.firstOrNull(list);
            if (list4 == null) {
                list4 = EmptyList.f71768b;
            }
            return m(list4, i2, intrinsicMeasureScope.B0(f3), intrinsicMeasureScope.B0(f2), this.g, this.f4997h, this.f4998i);
        }
        List list5 = (List) CollectionsKt.firstOrNull(list);
        if (list5 == null) {
            list5 = EmptyList.f71768b;
        }
        return k(list5, i2, intrinsicMeasureScope.B0(f3), intrinsicMeasureScope.B0(f2), this.g, this.f4997h, this.f4998i);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FlowMeasurePolicy(isHorizontal=");
        sb.append(this.f4992a);
        sb.append(", horizontalArrangement=");
        sb.append(this.f4993b);
        sb.append(", verticalArrangement=");
        sb.append(this.f4994c);
        sb.append(", mainAxisSpacing=");
        fc.w(this.d, ", crossAxisAlignment=", sb);
        sb.append(this.f4995e);
        sb.append(", crossAxisArrangementSpacing=");
        fc.w(this.f4996f, ", maxItemsInMainAxis=", sb);
        sb.append(this.g);
        sb.append(", maxLines=");
        sb.append(this.f4997h);
        sb.append(", overflow=");
        sb.append(this.f4998i);
        sb.append(')');
        return sb.toString();
    }
}
