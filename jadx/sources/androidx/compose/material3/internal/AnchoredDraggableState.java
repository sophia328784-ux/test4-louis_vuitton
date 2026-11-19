package androidx.compose.material3.internal;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.runtime.FloatState;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.l5;
import defpackage.md;
import defpackage.p;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.sync.MutexImpl;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0016By\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n\u0012\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\f0\n\u0012#\b\u0002\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\u0004¢\u0006\u0004\b\u0011\u0010\u0012B\u0089\u0001\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\u0012!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n\u0012\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\f0\n\u0012#\b\u0002\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\u0004¢\u0006\u0004\b\u0011\u0010\u0015¨\u0006\u0017"}, d2 = {"Landroidx/compose/material3/internal/AnchoredDraggableState;", "T", "", "initialValue", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "totalDistance", "positionalThreshold", "Lkotlin/Function0;", "velocityThreshold", "Landroidx/compose/animation/core/AnimationSpec;", "animationSpec", "newValue", "", "confirmValueChange", "<init>", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "Landroidx/compose/material3/internal/DraggableAnchors;", "anchors", "(Ljava/lang/Object;Landroidx/compose/material3/internal/DraggableAnchors;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "Companion", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AnchoredDraggableState<T> {
    public static final /* synthetic */ int p = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f7516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f7517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f7518c;
    public final Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InternalMutatorMutex f7519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnchoredDraggableState$draggableState$1 f7520f;
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final State f7521h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final State f7522i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableFloatState f7523j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final State f7524k;
    public final MutableFloatState l;
    public final MutableState m;
    public final MutableState n;
    public final AnchoredDraggableState$anchoredDragScope$1 o;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public AnchoredDraggableState(T t, Function1<? super Float, Float> function1, Function0<Float> function0, Function0<? extends AnimationSpec<Float>> function2, Function1<? super T, Boolean> function3) {
        this.f7516a = function1;
        this.f7517b = function0;
        this.f7518c = function2;
        this.d = function3;
        this.f7519e = new InternalMutatorMutex();
        this.f7520f = new AnchoredDraggableState$draggableState$1(this);
        this.g = SnapshotStateKt.g(t);
        this.f7521h = SnapshotStateKt.e(new l5(this, 0));
        this.f7522i = SnapshotStateKt.e(new l5(this, 1));
        this.f7523j = PrimitiveSnapshotStateKt.a(Float.NaN);
        this.f7524k = SnapshotStateKt.d(SnapshotStateKt.n(), new l5(this, 2));
        this.l = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.m = SnapshotStateKt.g(null);
        this.n = SnapshotStateKt.g(new MapDraggableAnchors(MapsKt.c()));
        this.o = new AnchoredDraggableState$anchoredDragScope$1(this);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(MutatePriority mutatePriority, Function3 function3, ContinuationImpl continuationImpl) {
        AnchoredDraggableState$anchoredDrag$1 anchoredDraggableState$anchoredDrag$1;
        if (continuationImpl instanceof AnchoredDraggableState$anchoredDrag$1) {
            anchoredDraggableState$anchoredDrag$1 = (AnchoredDraggableState$anchoredDrag$1) continuationImpl;
            int i2 = anchoredDraggableState$anchoredDrag$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anchoredDraggableState$anchoredDrag$1.d = i2 - Integer.MIN_VALUE;
            } else {
                anchoredDraggableState$anchoredDrag$1 = new AnchoredDraggableState$anchoredDrag$1(this, continuationImpl);
            }
        } else {
            anchoredDraggableState$anchoredDrag$1 = new AnchoredDraggableState$anchoredDrag$1(this, continuationImpl);
        }
        Object obj = anchoredDraggableState$anchoredDrag$1.f7525b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anchoredDraggableState$anchoredDrag$1.d;
        Function1 function1 = this.d;
        FloatState floatState = this.f7523j;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                InternalMutatorMutex internalMutatorMutex = this.f7519e;
                AnchoredDraggableState$anchoredDrag$2 anchoredDraggableState$anchoredDrag$2 = new AnchoredDraggableState$anchoredDrag$2(this, null, function3);
                anchoredDraggableState$anchoredDrag$1.d = 1;
                internalMutatorMutex.getClass();
                if (CoroutineScopeKt.d(new InternalMutatorMutex$mutate$2(mutatePriority, internalMutatorMutex, anchoredDraggableState$anchoredDrag$2, null), anchoredDraggableState$anchoredDrag$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            floatState = (SnapshotMutableFloatStateImpl) floatState;
            Object objB = e().b(floatState.a());
            if (objB != null && Math.abs(floatState.a() - e().c(objB)) <= 0.5f && ((Boolean) function1.invoke(objB)).booleanValue()) {
                h(objB);
            }
            return Unit.f71739a;
        } catch (Throwable th) {
            SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) floatState;
            Object objB2 = e().b(snapshotMutableFloatStateImpl.a());
            if (objB2 != null && Math.abs(snapshotMutableFloatStateImpl.a() - e().c(objB2)) <= 0.5f && ((Boolean) function1.invoke(objB2)).booleanValue()) {
                h(objB2);
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Object obj, MutatePriority mutatePriority, Function4 function4, ContinuationImpl continuationImpl) {
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
        Object obj2 = anchoredDraggableState$anchoredDrag$3.f7532b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anchoredDraggableState$anchoredDrag$3.d;
        MutableState mutableState = this.m;
        Function1 function1 = this.d;
        FloatState floatState = this.f7523j;
        try {
            if (i3 == 0) {
                ResultKt.b(obj2);
                if (e().d(obj)) {
                    InternalMutatorMutex internalMutatorMutex = this.f7519e;
                    AnchoredDraggableState$anchoredDrag$4 anchoredDraggableState$anchoredDrag$4 = new AnchoredDraggableState$anchoredDrag$4(this, obj, function4, null);
                    anchoredDraggableState$anchoredDrag$3.d = 1;
                    internalMutatorMutex.getClass();
                    if (CoroutineScopeKt.d(new InternalMutatorMutex$mutate$2(mutatePriority, internalMutatorMutex, anchoredDraggableState$anchoredDrag$4, null), anchoredDraggableState$anchoredDrag$3) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    h(obj);
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
            floatState = (SnapshotMutableFloatStateImpl) floatState;
            Object objB = e().b(floatState.a());
            if (objB != null && Math.abs(floatState.a() - e().c(objB)) <= 0.5f && ((Boolean) function1.invoke(objB)).booleanValue()) {
                h(objB);
            }
            return Unit.f71739a;
        } catch (Throwable th) {
            ((SnapshotMutableStateImpl) mutableState).setValue(null);
            SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) floatState;
            Object objB2 = e().b(snapshotMutableFloatStateImpl.a());
            if (objB2 != null && Math.abs(snapshotMutableFloatStateImpl.a() - e().c(objB2)) <= 0.5f && ((Boolean) function1.invoke(objB2)).booleanValue()) {
                h(objB2);
            }
            throw th;
        }
    }

    public final Object c(float f2, float f3, Object obj) {
        DraggableAnchors draggableAnchorsE = e();
        float fC = draggableAnchorsE.c(obj);
        float fFloatValue = ((Number) this.f7517b.mo47invoke()).floatValue();
        if (fC != f2 && !Float.isNaN(fC)) {
            Function1 function1 = this.f7516a;
            if (fC < f2) {
                if (f3 >= fFloatValue) {
                    Object objA = draggableAnchorsE.a(f2, true);
                    objA.getClass();
                    return objA;
                }
                Object objA2 = draggableAnchorsE.a(f2, true);
                objA2.getClass();
                if (f2 >= Math.abs(Math.abs(((Number) function1.invoke(Float.valueOf(Math.abs(draggableAnchorsE.c(objA2) - fC)))).floatValue()) + fC)) {
                    return objA2;
                }
            } else {
                if (f3 <= (-fFloatValue)) {
                    Object objA3 = draggableAnchorsE.a(f2, false);
                    objA3.getClass();
                    return objA3;
                }
                Object objA4 = draggableAnchorsE.a(f2, false);
                objA4.getClass();
                float fAbs = Math.abs(fC - Math.abs(((Number) function1.invoke(Float.valueOf(Math.abs(fC - draggableAnchorsE.c(objA4))))).floatValue()));
                if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM ? f2 <= fAbs : Math.abs(f2) >= fAbs) {
                    return objA4;
                }
            }
        }
        return obj;
    }

    public final float d(float f2) {
        float f3 = f(f2);
        MutableFloatState mutableFloatState = this.f7523j;
        SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) mutableFloatState;
        float fA = Float.isNaN(snapshotMutableFloatStateImpl.a()) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : snapshotMutableFloatStateImpl.a();
        ((SnapshotMutableFloatStateImpl) mutableFloatState).w(f3);
        return f3 - fA;
    }

    public final DraggableAnchors e() {
        return (DraggableAnchors) ((SnapshotMutableStateImpl) this.n).getF10755b();
    }

    public final float f(float f2) {
        SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) this.f7523j;
        return RangesKt.c((Float.isNaN(snapshotMutableFloatStateImpl.a()) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : snapshotMutableFloatStateImpl.a()) + f2, e().e(), e().f());
    }

    public final float g() {
        MutableFloatState mutableFloatState = this.f7523j;
        if (!Float.isNaN(((SnapshotMutableFloatStateImpl) mutableFloatState).a())) {
            return ((SnapshotMutableFloatStateImpl) mutableFloatState).a();
        }
        md.k("The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?");
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final void h(Object obj) {
        ((SnapshotMutableStateImpl) this.g).setValue(obj);
    }

    public final Object i(float f2, SuspendLambda suspendLambda) {
        Object f10755b = ((SnapshotMutableStateImpl) this.g).getF10755b();
        Object objC = c(g(), f2, f10755b);
        if (((Boolean) this.d.invoke(objC)).booleanValue()) {
            Object objB = b(objC, MutatePriority.Default, new AnchoredDraggableKt$animateTo$2(this, f2, null), suspendLambda);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (objB != coroutineSingletons) {
                objB = Unit.f71739a;
            }
            return objB == coroutineSingletons ? objB : Unit.f71739a;
        }
        Object objB2 = b(f10755b, MutatePriority.Default, new AnchoredDraggableKt$animateTo$2(this, f2, null), suspendLambda);
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (objB2 != coroutineSingletons2) {
            objB2 = Unit.f71739a;
        }
        return objB2 == coroutineSingletons2 ? objB2 : Unit.f71739a;
    }

    public final boolean j(Object obj) {
        MutexImpl mutexImpl = this.f7519e.f7625b;
        boolean zG = mutexImpl.g();
        if (!zG) {
            return zG;
        }
        try {
            AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = this.o;
            float fC = e().c(obj);
            if (!Float.isNaN(fC)) {
                anchoredDraggableState$anchoredDragScope$1.a(fC, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                ((SnapshotMutableStateImpl) this.m).setValue(null);
            }
            h(obj);
            return zG;
        } finally {
            mutexImpl.d(null);
        }
    }

    public /* synthetic */ AnchoredDraggableState(Object obj, Function1 function1, Function0 function0, Function0 function2, Function1 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, function1, function0, function2, (i2 & 16) != 0 ? new p(27) : function3);
    }

    public /* synthetic */ AnchoredDraggableState(Object obj, DraggableAnchors draggableAnchors, Function1 function1, Function0 function0, Function0 function2, Function1 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, draggableAnchors, function1, function0, function2, (i2 & 32) != 0 ? new p(27) : function3);
    }

    public AnchoredDraggableState(T t, DraggableAnchors<T> draggableAnchors, Function1<? super Float, Float> function1, Function0<Float> function0, Function0<? extends AnimationSpec<Float>> function2, Function1<? super T, Boolean> function3) {
        this(t, function1, function0, function2, function3);
        ((SnapshotMutableStateImpl) this.n).setValue(draggableAnchors);
        j(t);
    }
}
