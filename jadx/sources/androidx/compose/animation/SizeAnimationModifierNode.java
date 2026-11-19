package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B[\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012:\b\u0002\u0010\r\u001a4\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010\u0007¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Landroidx/compose/animation/SizeAnimationModifierNode;", "Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;", "Landroidx/compose/animation/core/AnimationSpec;", "Landroidx/compose/ui/unit/IntSize;", "animationSpec", "Landroidx/compose/ui/Alignment;", "alignment", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "startSize", "endSize", "", "listener", "<init>", "(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function2;)V", "AnimData", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SizeAnimationModifierNode extends LayoutModifierNodeWithPassThroughIntrinsics {
    public AnimationSpec p;
    public Alignment q;
    public Function2 r;
    public long s;
    public long t;
    public boolean u;
    public final MutableState v;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;", "", "Landroidx/compose/animation/core/Animatable;", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/animation/core/AnimationVector2D;", "anim", "startSize", "<init>", "(Landroidx/compose/animation/core/Animatable;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class AnimData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Animatable f3725a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f3726b;

        public AnimData(Animatable animatable, long j2, DefaultConstructorMarker defaultConstructorMarker) {
            this.f3725a = animatable;
            this.f3726b = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnimData)) {
                return false;
            }
            AnimData animData = (AnimData) obj;
            return Intrinsics.c(this.f3725a, animData.f3725a) && IntSize.b(this.f3726b, animData.f3726b);
        }

        public final int hashCode() {
            int iHashCode = this.f3725a.hashCode() * 31;
            long j2 = this.f3726b;
            IntSize.Companion companion = IntSize.f11020b;
            return Long.hashCode(j2) + iHashCode;
        }

        public final String toString() {
            return "AnimData(anim=" + this.f3725a + ", startSize=" + ((Object) IntSize.c(this.f3726b)) + ')';
        }
    }

    public SizeAnimationModifierNode(AnimationSpec<IntSize> animationSpec, Alignment alignment, Function2<? super IntSize, ? super IntSize, Unit> function2) {
        this.p = animationSpec;
        this.q = alignment;
        this.r = function2;
        this.s = AnimationModifierKt.f3534a;
        this.t = ConstraintsKt.b(0, 0, 0, 0, 15);
        this.v = SnapshotStateKt.g(null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        this.s = AnimationModifierKt.f3534a;
        this.u = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void b2() {
        ((SnapshotMutableStateImpl) this.v).setValue(null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(final MeasureScope measureScope, Measurable measurable, long j2) {
        Placeable placeableT;
        AnimData animData;
        long jD;
        AnimData animData2;
        if (measureScope.u0()) {
            this.t = j2;
            this.u = true;
            placeableT = measurable.T(j2);
        } else {
            placeableT = measurable.T(this.u ? this.t : j2);
        }
        final Placeable placeable = placeableT;
        char c2 = ' ';
        long j3 = (((long) placeable.f9549c) & BodyPartID.bodyIdMax) | (((long) placeable.f9548b) << 32);
        IntSize.Companion companion = IntSize.f11020b;
        if (measureScope.u0()) {
            this.s = j3;
            c2 = ' ';
            jD = j3;
            j3 = jD;
        } else {
            long j4 = AnimationModifierKt.c(this.s) ? this.s : j3;
            MutableState mutableState = this.v;
            AnimData animData3 = (AnimData) ((SnapshotMutableStateImpl) mutableState).getF10755b();
            if (animData3 != null) {
                Animatable animatable = animData3.f3725a;
                boolean z = (IntSize.b(j4, ((IntSize) animatable.d()).f11021a) || animatable.e()) ? false : true;
                if (!IntSize.b(j4, ((IntSize) ((SnapshotMutableStateImpl) animatable.f3775e).getF10755b()).f11021a) || z) {
                    animData3.f3726b = ((IntSize) animatable.d()).f11021a;
                    animData2 = animData3;
                    BuildersKt.c(V1(), null, null, new SizeAnimationModifierNode$animateTo$data$1$1(animData2, j4, this, null), 3);
                } else {
                    animData2 = animData3;
                }
                animData = animData2;
            } else {
                long j5 = j4;
                animData = new AnimData(new Animatable(new IntSize(j5), VectorConvertersKt.f4041h, new IntSize(4294967297L), null, 8, null), j5, null);
            }
            ((SnapshotMutableStateImpl) mutableState).setValue(animData);
            jD = ConstraintsKt.d(j2, ((IntSize) animData.f3725a.d()).f11021a);
        }
        final int i2 = (int) (jD >> c2);
        final int i3 = (int) (jD & BodyPartID.bodyIdMax);
        final long j6 = j3;
        return measureScope.V0(i2, i3, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SizeAnimationModifierNode$measure$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Alignment alignment = this.f3730c.q;
                long j7 = (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
                IntSize.Companion companion2 = IntSize.f11020b;
                Placeable.PlacementScope.u((Placeable.PlacementScope) obj, placeable, alignment.a(j6, j7, measureScope.getF9421c()));
                return Unit.f71739a;
            }
        });
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SizeAnimationModifierNode(AnimationSpec animationSpec, Alignment alignment, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            Alignment.f8582a.getClass();
            alignment = Alignment.Companion.f8584b;
        }
        this(animationSpec, alignment, (i2 & 4) != 0 ? null : function2);
    }
}
