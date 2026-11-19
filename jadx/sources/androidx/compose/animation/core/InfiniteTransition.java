package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import defpackage.w20;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/core/InfiniteTransition;", "", "", "label", "<init>", "(Ljava/lang/String;)V", "TransitionAnimationState", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InfiniteTransition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableVector f3877a = new MutableVector(new TransitionAnimationState[16], 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f3878b = SnapshotStateKt.g(Boolean.FALSE);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f3879c = Long.MIN_VALUE;
    public final MutableState d = SnapshotStateKt.g(Boolean.TRUE);

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0004\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0004BC\b\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/runtime/State;", "initialValue", "targetValue", "Landroidx/compose/animation/core/TwoWayConverter;", "typeConverter", "Landroidx/compose/animation/core/AnimationSpec;", "animationSpec", "", "label", "<init>", "(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class TransitionAnimationState<T, V extends AnimationVector> implements State<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f3880b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f3881c;
        public final TwoWayConverter d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MutableState f3882e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public AnimationSpec f3883f;
        public TargetBasedAnimation g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f3884h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f3885i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f3886j;

        public TransitionAnimationState(T t, T t2, TwoWayConverter<T, V> twoWayConverter, AnimationSpec<T> animationSpec, String str) {
            this.f3880b = t;
            this.f3881c = t2;
            this.d = twoWayConverter;
            this.f3882e = SnapshotStateKt.g(t);
            this.f3883f = animationSpec;
            this.g = new TargetBasedAnimation(animationSpec, twoWayConverter, this.f3880b, this.f3881c, (AnimationVector) null, 16, (DefaultConstructorMarker) null);
        }

        @Override // androidx.compose.runtime.State
        /* JADX INFO: renamed from: getValue */
        public final Object getF10755b() {
            return ((SnapshotMutableStateImpl) this.f3882e).getF10755b();
        }
    }

    public InfiniteTransition(String str) {
    }

    public final void a(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-318043801);
        int i3 = (gapComposerH.y(this) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            if (((Boolean) ((SnapshotMutableStateImpl) this.d).getF10755b()).booleanValue() || ((Boolean) ((SnapshotMutableStateImpl) this.f3878b).getF10755b()).booleanValue()) {
                gapComposerH.L(-144841960);
                boolean zY = gapComposerH.y(this);
                Object objX2 = gapComposerH.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new InfiniteTransition$run$1$1(mutableState, this, null);
                    gapComposerH.q(objX2);
                }
                EffectsKt.e(gapComposerH, this, (Function2) objX2);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-143455237);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w20(this, i2, 3);
        }
    }
}
