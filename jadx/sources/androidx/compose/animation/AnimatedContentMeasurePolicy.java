package androidx.compose.animation;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/AnimatedContentMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;", "rootScope", "<init>", "(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AnimatedContentMeasurePolicy implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnimatedContentTransitionScopeImpl f3446a;

    public AnimatedContentMeasurePolicy(AnimatedContentTransitionScopeImpl<?> animatedContentTransitionScopeImpl) {
        this.f3446a = animatedContentTransitionScopeImpl;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        Integer numValueOf;
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
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        Integer numValueOf;
        if (!list.isEmpty()) {
            numValueOf = Integer.valueOf(((IntrinsicMeasurable) list.get(0)).S(i2));
            int i3 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((IntrinsicMeasurable) list.get(i3)).S(i2));
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
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s, reason: not valid java name */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        Placeable placeable;
        int i2;
        Placeable placeable2;
        final int i3;
        final int i4;
        int size = list.size();
        final Placeable[] placeableArr = new Placeable[size];
        IntSize.f11020b.getClass();
        List list2 = list;
        int size2 = list2.size();
        long j3 = 0;
        int i5 = 0;
        while (true) {
            placeable = null;
            i2 = 1;
            if (i5 >= size2) {
                break;
            }
            Measurable measurable = (Measurable) list.get(i5);
            Object z = measurable.getZ();
            AnimatedContentTransitionScopeImpl.ChildData childData = z instanceof AnimatedContentTransitionScopeImpl.ChildData ? (AnimatedContentTransitionScopeImpl.ChildData) z : null;
            if (childData != null && ((Boolean) ((SnapshotMutableStateImpl) childData.f3463b).getF10755b()).booleanValue()) {
                Placeable placeableT = measurable.T(j2);
                long j4 = (((long) placeableT.f9549c) & BodyPartID.bodyIdMax) | (((long) placeableT.f9548b) << 32);
                placeableArr[i5] = placeableT;
                j3 = j4;
            }
            i5++;
        }
        int size3 = list2.size();
        for (int i6 = 0; i6 < size3; i6++) {
            Measurable measurable2 = (Measurable) list.get(i6);
            if (placeableArr[i6] == null) {
                placeableArr[i6] = measurable2.T(j2);
            }
        }
        if (measureScope.u0()) {
            i3 = (int) (j3 >> 32);
        } else {
            if (size != 0) {
                placeable2 = placeableArr[0];
                int i7 = size - 1;
                if (i7 != 0) {
                    int i8 = placeable2 != null ? placeable2.f9548b : 0;
                    if (1 <= i7) {
                        int i9 = 1;
                        while (true) {
                            Placeable placeable3 = placeableArr[i9];
                            int i10 = placeable3 != null ? placeable3.f9548b : 0;
                            if (i8 < i10) {
                                placeable2 = placeable3;
                                i8 = i10;
                            }
                            if (i9 == i7) {
                                break;
                            }
                            i9++;
                        }
                    }
                }
            } else {
                placeable2 = null;
            }
            i3 = placeable2 != null ? placeable2.f9548b : 0;
        }
        if (measureScope.u0()) {
            i4 = (int) (j3 & BodyPartID.bodyIdMax);
        } else {
            if (size != 0) {
                placeable = placeableArr[0];
                int i11 = size - 1;
                if (i11 != 0) {
                    int i12 = placeable != null ? placeable.f9549c : 0;
                    if (1 <= i11) {
                        while (true) {
                            Placeable placeable4 = placeableArr[i2];
                            int i13 = placeable4 != null ? placeable4.f9549c : 0;
                            if (i12 < i13) {
                                placeable = placeable4;
                                i12 = i13;
                            }
                            if (i2 == i11) {
                                break;
                            }
                            i2++;
                        }
                    }
                }
            }
            i4 = placeable != null ? placeable.f9549c : 0;
        }
        if (!measureScope.u0()) {
            ((SnapshotMutableStateImpl) this.f3446a.d).setValue(new IntSize((((long) i3) << 32) | (((long) i4) & BodyPartID.bodyIdMax)));
        }
        return measureScope.V0(i3, i4, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedContentMeasurePolicy$measure$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                for (Placeable placeable5 : placeableArr) {
                    if (placeable5 != null) {
                        Alignment alignment = this.f3446a.f3459b;
                        long j5 = (((long) placeable5.f9548b) << 32) | (((long) placeable5.f9549c) & BodyPartID.bodyIdMax);
                        IntSize.Companion companion = IntSize.f11020b;
                        long jA = alignment.a(j5, (((long) i3) << 32) | (((long) i4) & BodyPartID.bodyIdMax), LayoutDirection.Ltr);
                        IntOffset.Companion companion2 = IntOffset.f11012b;
                        placementScope.j(placeable5, (int) (jA >> 32), (int) (jA & BodyPartID.bodyIdMax), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        Integer numValueOf;
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
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        Integer numValueOf;
        if (!list.isEmpty()) {
            numValueOf = Integer.valueOf(((IntrinsicMeasurable) list.get(0)).M(i2));
            int i3 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((IntrinsicMeasurable) list.get(i3)).M(i2));
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
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }
}
