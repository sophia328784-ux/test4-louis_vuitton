package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.j5;
import defpackage.m5;
import defpackage.md;
import defpackage.p;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.sync.MutexImpl;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0011B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005B\u001f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\u0004\u0010\bB4\b\u0017\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\t¢\u0006\u0004\b\u0004\u0010\u000fBD\b\u0017\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012#\b\u0002\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\t¢\u0006\u0004\b\u0004\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/gestures/AnchoredDraggableState;", "T", "", "initialValue", "<init>", "(Ljava/lang/Object;)V", "Landroidx/compose/foundation/gestures/DraggableAnchors;", "anchors", "(Ljava/lang/Object;Landroidx/compose/foundation/gestures/DraggableAnchors;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "newValue", "", "confirmValueChange", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "(Ljava/lang/Object;Landroidx/compose/foundation/gestures/DraggableAnchors;Lkotlin/jvm/functions/Function1;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnchoredDraggableState<T> {
    public static final /* synthetic */ int p = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f4397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function1 f4398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j5 f4399c;
    public AnimationSpec d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DecayAnimationSpec f4400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutatorMutex f4401f;
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableState f4402h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final State f4403i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableFloatState f4404j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final State f4405k;
    public final MutableFloatState l;
    public final MutableState m;
    public final MutableState n;
    public final AnchoredDraggableState$anchoredDragScope$1 o;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public AnchoredDraggableState(T t) {
        this.f4397a = new p(28);
        this.f4401f = new MutatorMutex();
        this.g = SnapshotStateKt.g(t);
        this.f4402h = SnapshotStateKt.g(t);
        this.f4403i = SnapshotStateKt.e(new m5(this, 0));
        this.f4404j = PrimitiveSnapshotStateKt.a(Float.NaN);
        this.f4405k = SnapshotStateKt.d(SnapshotStateKt.n(), new m5(this, 1));
        this.l = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.m = SnapshotStateKt.g(null);
        p pVar = AnchoredDraggableKt.f4345a;
        this.n = SnapshotStateKt.g(new DefaultDraggableAnchors(EmptyList.f71768b, new float[0]));
        this.o = new AnchoredDraggableState$anchoredDragScope$1(this);
    }

    public static void h(AnchoredDraggableState anchoredDraggableState, DraggableAnchors draggableAnchors) {
        Object f10755b;
        MutableFloatState mutableFloatState = anchoredDraggableState.f4404j;
        State state = anchoredDraggableState.f4403i;
        if (Float.isNaN(((SnapshotMutableFloatStateImpl) mutableFloatState).a()) || (f10755b = draggableAnchors.b(((SnapshotMutableFloatStateImpl) anchoredDraggableState.f4404j).a())) == null) {
            f10755b = state.getF10755b();
        }
        if (Intrinsics.c(anchoredDraggableState.b(), draggableAnchors)) {
            return;
        }
        ((SnapshotMutableStateImpl) anchoredDraggableState.n).setValue(draggableAnchors);
        if (anchoredDraggableState.g(f10755b)) {
            return;
        }
        ((SnapshotMutableStateImpl) anchoredDraggableState.m).setValue(f10755b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Object obj, MutatePriority mutatePriority, Function4 function4, ContinuationImpl continuationImpl) {
        AnchoredDraggableState$anchoredDrag$3 anchoredDraggableState$anchoredDrag$3;
        if (continuationImpl instanceof AnchoredDraggableState$anchoredDrag$3) {
            anchoredDraggableState$anchoredDrag$3 = (AnchoredDraggableState$anchoredDrag$3) continuationImpl;
            int i2 = anchoredDraggableState$anchoredDrag$3.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anchoredDraggableState$anchoredDrag$3.d = i2 - Integer.MIN_VALUE;
            } else {
                anchoredDraggableState$anchoredDrag$3 = new AnchoredDraggableState$anchoredDrag$3(this, continuationImpl);
            }
        } else {
            anchoredDraggableState$anchoredDrag$3 = new AnchoredDraggableState$anchoredDrag$3(this, continuationImpl);
        }
        Object obj2 = anchoredDraggableState$anchoredDrag$3.f4411b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anchoredDraggableState$anchoredDrag$3.d;
        MutableState mutableState = this.m;
        try {
            if (i3 == 0) {
                ResultKt.b(obj2);
                if (b().d(obj)) {
                    MutatorMutex mutatorMutex = this.f4401f;
                    AnchoredDraggableState$anchoredDrag$4 anchoredDraggableState$anchoredDrag$4 = new AnchoredDraggableState$anchoredDrag$4(this, obj, function4, null);
                    anchoredDraggableState$anchoredDrag$3.d = 1;
                    if (mutatorMutex.b(mutatePriority, anchoredDraggableState$anchoredDrag$4, anchoredDraggableState$anchoredDrag$3) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else if (((Boolean) this.f4397a.invoke(obj)).booleanValue()) {
                    ((SnapshotMutableStateImpl) this.f4402h).setValue(obj);
                    f(obj);
                }
                return Unit.f71739a;
            }
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj2);
            mutableState = (SnapshotMutableStateImpl) mutableState;
            mutableState.setValue(null);
            return Unit.f71739a;
        } catch (Throwable th) {
            ((SnapshotMutableStateImpl) mutableState).setValue(null);
            throw th;
        }
    }

    public final DraggableAnchors b() {
        return (DraggableAnchors) ((SnapshotMutableStateImpl) this.n).getF10755b();
    }

    public final boolean c() {
        return (this.f4398b == null || this.f4399c == null || this.d == null || this.f4400e == null) ? false : true;
    }

    public final float d(float f2) {
        SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) this.f4404j;
        return RangesKt.c((Float.isNaN(snapshotMutableFloatStateImpl.a()) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : snapshotMutableFloatStateImpl.a()) + f2, b().e(), b().f());
    }

    public final float e() {
        MutableFloatState mutableFloatState = this.f4404j;
        if (Float.isNaN(((SnapshotMutableFloatStateImpl) mutableFloatState).a())) {
            InlineClassHelperKt.c("The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?");
        }
        return ((SnapshotMutableFloatStateImpl) mutableFloatState).a();
    }

    public final void f(Object obj) {
        ((SnapshotMutableStateImpl) this.g).setValue(obj);
    }

    public final boolean g(Object obj) {
        MutatorMutex mutatorMutex = this.f4401f;
        MutexImpl mutexImpl = mutatorMutex.f4264b;
        MutexImpl mutexImpl2 = mutatorMutex.f4264b;
        boolean zG = mutexImpl.g();
        if (!zG) {
            return zG;
        }
        try {
            AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = this.o;
            float fC = b().c(obj);
            if (!Float.isNaN(fC)) {
                anchoredDraggableState$anchoredDragScope$1.a(fC, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                ((SnapshotMutableStateImpl) this.m).setValue(null);
            }
            f(obj);
            ((SnapshotMutableStateImpl) this.f4402h).setValue(obj);
            return zG;
        } finally {
            mutexImpl2.d(null);
        }
    }

    public AnchoredDraggableState(T t, DraggableAnchors<T> draggableAnchors) {
        this(t);
        ((SnapshotMutableStateImpl) this.n).setValue(draggableAnchors);
        g(t);
    }

    @Deprecated
    public AnchoredDraggableState(T t, Function1<? super T, Boolean> function1) {
        this(t);
        this.f4397a = function1;
    }

    public /* synthetic */ AnchoredDraggableState(Object obj, DraggableAnchors draggableAnchors, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, draggableAnchors, (i2 & 4) != 0 ? new p(28) : function1);
    }

    @Deprecated
    public AnchoredDraggableState(T t, DraggableAnchors<T> draggableAnchors, Function1<? super T, Boolean> function1) {
        this(t, function1);
        ((SnapshotMutableStateImpl) this.n).setValue(draggableAnchors);
        g(t);
    }
}
