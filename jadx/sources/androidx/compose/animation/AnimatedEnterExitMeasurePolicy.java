package androidx.compose.animation;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "Landroidx/compose/animation/AnimatedVisibilityScopeImpl;", "scope", "<init>", "(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AnimatedEnterExitMeasurePolicy implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnimatedVisibilityScopeImpl f3478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3479b;

    public AnimatedEnterExitMeasurePolicy(AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl) {
        this.f3478a = animatedVisibilityScopeImpl;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        if (list.isEmpty()) {
            return 0;
        }
        int iL = ((IntrinsicMeasurable) list.get(0)).l(i2);
        int i3 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int iL2 = ((IntrinsicMeasurable) list.get(i3)).l(i2);
                if (iL2 > iL) {
                    iL = iL2;
                }
                if (i3 == size) {
                    break;
                }
                i3++;
            }
        }
        return iL;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        if (list.isEmpty()) {
            return 0;
        }
        int iS = ((IntrinsicMeasurable) list.get(0)).S(i2);
        int i3 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int iS2 = ((IntrinsicMeasurable) list.get(i3)).S(i2);
                if (iS2 > iS) {
                    iS = iS2;
                }
                if (i3 == size) {
                    break;
                }
                i3++;
            }
        }
        return iS;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        final ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Placeable placeableT = ((Measurable) list.get(i2)).T(j2);
            iMax = Math.max(iMax, placeableT.f9548b);
            iMax2 = Math.max(iMax2, placeableT.f9549c);
            arrayList.add(placeableT);
        }
        boolean zU0 = measureScope.u0();
        AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl = this.f3478a;
        if (zU0) {
            this.f3479b = true;
            ((SnapshotMutableStateImpl) animatedVisibilityScopeImpl.f3533b).setValue(new IntSize((((long) iMax2) & BodyPartID.bodyIdMax) | (((long) iMax) << 32)));
        } else if (!this.f3479b) {
            ((SnapshotMutableStateImpl) animatedVisibilityScopeImpl.f3533b).setValue(new IntSize((((long) iMax2) & BodyPartID.bodyIdMax) | (((long) iMax) << 32)));
        }
        return measureScope.V0(iMax, iMax2, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                ArrayList arrayList2 = arrayList;
                int size2 = arrayList2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    placementScope.j((Placeable) arrayList2.get(i3), 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        if (list.isEmpty()) {
            return 0;
        }
        int iH = ((IntrinsicMeasurable) list.get(0)).H(i2);
        int i3 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int iH2 = ((IntrinsicMeasurable) list.get(i3)).H(i2);
                if (iH2 > iH) {
                    iH = iH2;
                }
                if (i3 == size) {
                    break;
                }
                i3++;
            }
        }
        return iH;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        if (list.isEmpty()) {
            return 0;
        }
        int iM = ((IntrinsicMeasurable) list.get(0)).M(i2);
        int i3 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int iM2 = ((IntrinsicMeasurable) list.get(i3)).M(i2);
                if (iM2 > iM) {
                    iM = iM2;
                }
                if (i3 == size) {
                    break;
                }
                i3++;
            }
        }
        return iM;
    }
}
