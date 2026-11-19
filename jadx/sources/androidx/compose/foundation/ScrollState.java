package androidx.compose.foundation;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import defpackage.iu0;
import defpackage.xo0;
import defpackage.yt0;
import defpackage.zt0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/ScrollState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "", "initial", "<init>", "(I)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollState implements ScrollableState {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Companion f4288j = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final SaverKt$Saver$1 f4289k = new SaverKt$Saver$1(new zt0(11), new yt0(14));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableIntState f4290a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f4294f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableIntState f4291b = SnapshotIntStateKt.a(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableIntState f4292c = SnapshotIntStateKt.a(0);
    public final MutableInteractionSource d = InteractionSourceKt.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableIntState f4293e = SnapshotIntStateKt.a(Integer.MAX_VALUE);
    public final ScrollableState g = ScrollableStateKt.a(new xo0(this, 14));

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final State f4295h = SnapshotStateKt.e(new iu0(this, 1));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final State f4296i = SnapshotStateKt.e(new iu0(this, 2));

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/ScrollState$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ScrollState(int i2) {
        this.f4290a = SnapshotIntStateKt.a(i2);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.g.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return ((Boolean) this.f4296i.getF10755b()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object c(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object objC = this.g.c(mutatePriority, function2, continuation);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return ((Boolean) this.f4295h.getF10755b()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f2) {
        return this.g.e(f2);
    }

    public final Object f(int i2, AnimationSpec animationSpec, SuspendLambda suspendLambda) {
        Object objA = ScrollExtensionsKt.a(this, i2 - ((SnapshotMutableIntStateImpl) this.f4290a).f(), animationSpec, suspendLambda);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    public final int g() {
        return ((SnapshotMutableIntStateImpl) this.f4293e).f();
    }
}
