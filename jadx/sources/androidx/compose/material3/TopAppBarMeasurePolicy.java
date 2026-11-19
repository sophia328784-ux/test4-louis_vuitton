package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import defpackage.os;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/material3/TopAppBarMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "Landroidx/compose/material3/internal/FloatProducer;", "scrolledOffset", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "titleVerticalArrangement", "Landroidx/compose/ui/Alignment$Horizontal;", "titleHorizontalAlignment", "", "titleBottomPadding", "Landroidx/compose/ui/unit/Dp;", "height", "<init>", "(Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;IFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class TopAppBarMeasurePolicy implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FloatProducer f7434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Arrangement.Vertical f7435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Alignment.Horizontal f7436c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f7437e;

    public TopAppBarMeasurePolicy(FloatProducer floatProducer, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, int i2, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7434a = floatProducer;
        this.f7435b = vertical;
        this.f7436c = horizontal;
        this.d = i2;
        this.f7437e = f2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        Integer numValueOf;
        int iB0 = intrinsicMeasureScope.B0(this.f7437e);
        if (!list.isEmpty()) {
            numValueOf = Integer.valueOf(((IntrinsicMeasurable) list.get(0)).l(i2));
            int i3 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((IntrinsicMeasurable) list.get(i3)).l(i2));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i3 == size) {
                        break;
                    }
                    i3++;
                }
            }
        } else {
            numValueOf = null;
        }
        return Math.max(iB0, numValueOf != null ? numValueOf.intValue() : 0);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        int size = list.size();
        int iS = 0;
        for (int i3 = 0; i3 < size; i3++) {
            iS += ((IntrinsicMeasurable) list.get(i3)).S(i2);
        }
        return iS;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(final MeasureScope measureScope, List list, final long j2) {
        int iH;
        int size = list.size();
        final int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Measurable measurable = (Measurable) list.get(i3);
            if (Intrinsics.c(LayoutIdKt.a(measurable), "navigationIcon")) {
                final Placeable placeableT = measurable.T(Constraints.a(j2, 0, 0, 0, 0, 14));
                List list2 = list;
                int size2 = list2.size();
                int i4 = 0;
                while (i4 < size2) {
                    Measurable measurable2 = (Measurable) list.get(i4);
                    if (Intrinsics.c(LayoutIdKt.a(measurable2), "actionIcons")) {
                        final Placeable placeableT2 = measurable2.T(Constraints.a(j2, 0, 0, 0, 0, 14));
                        if (Constraints.h(j2) == Integer.MAX_VALUE) {
                            iH = Constraints.h(j2);
                        } else {
                            iH = (Constraints.h(j2) - placeableT.f9548b) - placeableT2.f9548b;
                            if (iH < 0) {
                                iH = 0;
                            }
                        }
                        int i5 = iH;
                        int size3 = list2.size();
                        int i6 = 0;
                        while (i6 < size3) {
                            Measurable measurable3 = (Measurable) list.get(i6);
                            if (Intrinsics.c(LayoutIdKt.a(measurable3), "title")) {
                                final Placeable placeableT3 = measurable3.T(Constraints.a(j2, 0, i5, 0, 0, 12));
                                HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.f9417b;
                                final int iW = placeableT3.W(horizontalAlignmentLine) != Integer.MIN_VALUE ? placeableT3.W(horizontalAlignmentLine) : 0;
                                float fInvoke = this.f7434a.invoke();
                                int iC = Float.isNaN(fInvoke) ? 0 : MathKt.c(fInvoke);
                                final int iMax = Math.max(measureScope.B0(this.f7437e), placeableT3.f9549c);
                                if (Constraints.g(j2) == Integer.MAX_VALUE) {
                                    i2 = iMax;
                                } else {
                                    int i7 = iC + iMax;
                                    if (i7 >= 0) {
                                        i2 = i7;
                                    }
                                }
                                return measureScope.V0(Constraints.h(j2), i2, MapsKt.c(), new Function1() { // from class: androidx.compose.material3.u
                                    /* JADX WARN: Code duplicated, block: B:11:0x0059  */
                                    /* JADX WARN: Code duplicated, block: B:12:0x0060  */
                                    /* JADX WARN: Code duplicated, block: B:14:0x0068  */
                                    /* JADX WARN: Code duplicated, block: B:16:0x006e  */
                                    /* JADX WARN: Code duplicated, block: B:17:0x0071  */
                                    /* JADX WARN: Code duplicated, block: B:19:0x007c  */
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        int iH2;
                                        Arrangement.Vertical vertical;
                                        int i8;
                                        int i9;
                                        int i10;
                                        int i11;
                                        int i12;
                                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                                        Placeable placeable = placeableT;
                                        int i13 = placeable.f9549c;
                                        int i14 = i2;
                                        int iMax2 = 0;
                                        Placeable.PlacementScope.y(placementScope, placeable, 0, (i14 - i13) / 2);
                                        int iMax3 = Math.max(measureScope.B0(AppBarKt.f6563c), placeable.f9548b);
                                        Placeable placeable2 = placeableT2;
                                        int i15 = placeable2.f9548b;
                                        TopAppBarMeasurePolicy topAppBarMeasurePolicy = this;
                                        Alignment.Horizontal horizontal = topAppBarMeasurePolicy.f7436c;
                                        Placeable placeable3 = placeableT3;
                                        int i16 = placeable3.f9548b;
                                        long j3 = j2;
                                        int iA = horizontal.a(i16, Constraints.h(j3), LayoutDirection.Ltr);
                                        if (iA >= iMax3) {
                                            if (placeable3.f9548b + iA > Constraints.h(j3) - i15) {
                                                iH2 = (Constraints.h(j3) - i15) - (placeable3.f9548b + iA);
                                            }
                                            vertical = topAppBarMeasurePolicy.f7435b;
                                            if (Intrinsics.c(vertical, Arrangement.f4921e)) {
                                                iMax2 = (i14 - placeable3.f9549c) / 2;
                                            } else if (Intrinsics.c(vertical, Arrangement.d)) {
                                                i8 = topAppBarMeasurePolicy.d;
                                                i9 = placeable3.f9549c;
                                                if (i8 == 0) {
                                                    iMax2 = i14 - i9;
                                                } else {
                                                    i10 = i8 - (i9 - iW);
                                                    i11 = i10 + i9;
                                                    i12 = iMax;
                                                    if (i11 > i12) {
                                                        i10 -= i11 - i12;
                                                    }
                                                    iMax2 = (i14 - i9) - Math.max(0, i10);
                                                }
                                            }
                                            Placeable.PlacementScope.y(placementScope, placeable3, iA, iMax2);
                                            Placeable.PlacementScope.y(placementScope, placeable2, Constraints.h(j3) - placeable2.f9548b, (i14 - placeable2.f9549c) / 2);
                                            return Unit.f71739a;
                                        }
                                        iH2 = iMax3 - iA;
                                        iA += iH2;
                                        vertical = topAppBarMeasurePolicy.f7435b;
                                        if (Intrinsics.c(vertical, Arrangement.f4921e)) {
                                            iMax2 = (i14 - placeable3.f9549c) / 2;
                                        } else if (Intrinsics.c(vertical, Arrangement.d)) {
                                            i8 = topAppBarMeasurePolicy.d;
                                            i9 = placeable3.f9549c;
                                            if (i8 == 0) {
                                                iMax2 = i14 - i9;
                                            } else {
                                                i10 = i8 - (i9 - iW);
                                                i11 = i10 + i9;
                                                i12 = iMax;
                                                if (i11 > i12) {
                                                    i10 -= i11 - i12;
                                                }
                                                iMax2 = (i14 - i9) - Math.max(0, i10);
                                            }
                                        }
                                        Placeable.PlacementScope.y(placementScope, placeable3, iA, iMax2);
                                        Placeable.PlacementScope.y(placementScope, placeable2, Constraints.h(j3) - placeable2.f9548b, (i14 - placeable2.f9549c) / 2);
                                        return Unit.f71739a;
                                    }
                                });
                            }
                            i6++;
                            this = this;
                        }
                        ListUtilsKt.b("Collection contains no element matching the predicate.");
                        os.d();
                        return null;
                    }
                    i4++;
                    this = this;
                }
                ListUtilsKt.b("Collection contains no element matching the predicate.");
                os.d();
                return null;
            }
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        os.d();
        return null;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        Integer numValueOf;
        int iB0 = intrinsicMeasureScope.B0(this.f7437e);
        if (!list.isEmpty()) {
            numValueOf = Integer.valueOf(((IntrinsicMeasurable) list.get(0)).H(i2));
            int i3 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((IntrinsicMeasurable) list.get(i3)).H(i2));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i3 == size) {
                        break;
                    }
                    i3++;
                }
            }
        } else {
            numValueOf = null;
        }
        return Math.max(iB0, numValueOf != null ? numValueOf.intValue() : 0);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        int size = list.size();
        int iM = 0;
        for (int i3 = 0; i3 < size; i3++) {
            iM += ((IntrinsicMeasurable) list.get(i3)).M(i2);
        }
        return iM;
    }
}
