package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableLongStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.hg0;
import defpackage.i31;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0004\u000f\u0010\u0011\u0012B1\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0000\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB#\b\u0011\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0010\u0012\u0006\u0010\u000b\u001a\u00028\u0000\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\fB#\b\u0011\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0015²\u0006\f\u0010\u0014\u001a\u00020\u00138\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/animation/core/Transition;", "S", "", "Landroidx/compose/animation/core/TransitionState;", "transitionState", "parentTransition", "", "label", "<init>", "(Landroidx/compose/animation/core/TransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V", "(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;)V", "initialState", "(Ljava/lang/Object;Ljava/lang/String;)V", "Landroidx/compose/animation/core/MutableTransitionState;", "(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V", "TransitionAnimationState", "SegmentImpl", "Segment", "DeferredAnimation", "", "runFrameLoop", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Transition<S> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TransitionState f3988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Transition f3989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3990c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f3991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableLongState f3992f;
    public final MutableLongState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableState f3993h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SnapshotStateList f3994i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SnapshotStateList f3995j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableState f3996k;
    public final State l;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\u0004\u0018\u0000*\u0004\b\u0001\u0010\u0001*\b\b\u0002\u0010\u0003*\u00020\u00022\u00020\u0004:\u0001\u000bB%\b\u0000\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/animation/core/Transition$DeferredAnimation;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "", "Landroidx/compose/animation/core/TwoWayConverter;", "typeConverter", "", "label", "<init>", "(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V", "DeferredAnimationData", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class DeferredAnimation<T, V extends AnimationVector> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TwoWayConverter f3997a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f3998b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MutableState f3999c = SnapshotStateKt.g(null);

        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\u0004\u0018\u0000*\u0004\b\u0003\u0010\u0001*\b\b\u0004\u0010\u0003*\u00020\u00022\b\u0012\u0004\u0012\u00028\u00030\u0004Bm\u0012\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00040\u0005R\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012#\u0010\f\u001a\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00030\n0\b¢\u0006\u0002\b\u000b\u0012!\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00028\u00030\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/runtime/State;", "Landroidx/compose/animation/core/Transition$TransitionAnimationState;", "Landroidx/compose/animation/core/Transition;", "animation", "Lkotlin/Function1;", "Landroidx/compose/animation/core/Transition$Segment;", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "Lkotlin/ExtensionFunctionType;", "transitionSpec", "Lkotlin/ParameterName;", "name", "state", "targetValueByState", "<init>", "(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public final class DeferredAnimationData<T, V extends AnimationVector> implements State<T> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TransitionAnimationState f4000b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public Function1 f4001c;
            public Function1 d;

            public DeferredAnimationData(Transition<S>.TransitionAnimationState<T, V> transitionAnimationState, Function1<? super Segment<S>, ? extends FiniteAnimationSpec<T>> function1, Function1<? super S, ? extends T> function2) {
                this.f4000b = transitionAnimationState;
                this.f4001c = function1;
                this.d = function2;
            }

            @Override // androidx.compose.runtime.State
            /* JADX INFO: renamed from: getValue */
            public final Object getF10755b() {
                h(Transition.this.f());
                return ((SnapshotMutableStateImpl) this.f4000b.f4012k).getF10755b();
            }

            public final void h(Segment segment) {
                Object objInvoke = this.d.invoke(segment.getF4004b());
                boolean zI = Transition.this.i();
                TransitionAnimationState transitionAnimationState = this.f4000b;
                if (zI) {
                    transitionAnimationState.x(this.d.invoke(segment.getF4003a()), objInvoke, (FiniteAnimationSpec) this.f4001c.invoke(segment));
                } else {
                    transitionAnimationState.E(objInvoke, (FiniteAnimationSpec) this.f4001c.invoke(segment));
                }
            }
        }

        public DeferredAnimation(TwoWayConverter<T, V> twoWayConverter, String str) {
            this.f3997a = twoWayConverter;
            this.f3998b = str;
        }

        public final DeferredAnimationData a(Function1 function1, Function1 function2) {
            MutableState mutableState = this.f3999c;
            DeferredAnimationData deferredAnimationData = (DeferredAnimationData) ((SnapshotMutableStateImpl) mutableState).getF10755b();
            Transition transition = Transition.this;
            if (deferredAnimationData == null) {
                Object objInvoke = function2.invoke(transition.f3988a.a());
                AnimationVector animationVector = (AnimationVector) this.f3997a.getF4034a().invoke(function2.invoke(transition.f3988a.a()));
                animationVector.d();
                deferredAnimationData = new DeferredAnimationData(new TransitionAnimationState(objInvoke, animationVector, this.f3997a, this.f3998b), function1, function2);
                ((SnapshotMutableStateImpl) mutableState).setValue(deferredAnimationData);
                transition.f3994i.add(deferredAnimationData.f4000b);
            }
            deferredAnimationData.d = function2;
            deferredAnimationData.f4001c = function1;
            deferredAnimationData.h(transition.f());
            return deferredAnimationData;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Landroidx/compose/animation/core/Transition$Segment;", "S", "", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Segment<S> {
        default boolean e(Enum r2, Enum r3) {
            return Intrinsics.c(r2, getF4003a()) && Intrinsics.c(r3, getF4004b());
        }

        /* JADX INFO: renamed from: getInitialState */
        Object getF4003a();

        /* JADX INFO: renamed from: getTargetState */
        Object getF4004b();
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00028\u0001\u0012\u0006\u0010\u0004\u001a\u00028\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/core/Transition$SegmentImpl;", "S", "Landroidx/compose/animation/core/Transition$Segment;", "initialState", "targetState", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SegmentImpl<S> implements Segment<S> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f4003a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f4004b;

        public SegmentImpl(S s, S s2) {
            this.f4003a = s;
            this.f4004b = s2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Segment)) {
                return false;
            }
            Segment segment = (Segment) obj;
            return Intrinsics.c(this.f4003a, segment.getF4003a()) && Intrinsics.c(this.f4004b, segment.getF4004b());
        }

        @Override // androidx.compose.animation.core.Transition.Segment
        /* JADX INFO: renamed from: getInitialState, reason: from getter */
        public final Object getF4003a() {
            return this.f4003a;
        }

        @Override // androidx.compose.animation.core.Transition.Segment
        /* JADX INFO: renamed from: getTargetState, reason: from getter */
        public final Object getF4004b() {
            return this.f4004b;
        }

        public final int hashCode() {
            Object obj = this.f4003a;
            int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
            Object obj2 = this.f4004b;
            return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\u0004\u0018\u0000*\u0004\b\u0001\u0010\u0001*\b\b\u0002\u0010\u0003*\u00020\u00022\b\u0012\u0004\u0012\u00028\u00010\u0004B5\b\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0001\u0012\u0006\u0010\u0006\u001a\u00028\u0002\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/animation/core/Transition$TransitionAnimationState;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/runtime/State;", "initialValue", "initialVelocityVector", "Landroidx/compose/animation/core/TwoWayConverter;", "typeConverter", "", "label", "<init>", "(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class TransitionAnimationState<T, V extends AnimationVector> implements State<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TwoWayConverter f4005b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MutableState f4006c;
        public final MutableState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MutableState f4007e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SeekableTransitionState.SeekingAnimationState f4008f;
        public TargetBasedAnimation g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MutableState f4009h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final MutableFloatState f4010i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f4011j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final MutableState f4012k;
        public AnimationVector l;
        public final MutableLongState m;
        public boolean n;
        public final SpringSpec o;

        public TransitionAnimationState(T t, V v, TwoWayConverter<T, V> twoWayConverter, String str) {
            this.f4005b = twoWayConverter;
            MutableState mutableStateG = SnapshotStateKt.g(t);
            this.f4006c = mutableStateG;
            Object objInvoke = null;
            MutableState mutableStateG2 = SnapshotStateKt.g(AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null));
            this.d = mutableStateG2;
            this.f4007e = SnapshotStateKt.g(new TargetBasedAnimation((FiniteAnimationSpec) ((SnapshotMutableStateImpl) mutableStateG2).getF10755b(), twoWayConverter, t, ((SnapshotMutableStateImpl) mutableStateG).getF10755b(), v));
            this.f4009h = SnapshotStateKt.g(Boolean.TRUE);
            this.f4010i = PrimitiveSnapshotStateKt.a(-1.0f);
            this.f4012k = SnapshotStateKt.g(t);
            this.l = v;
            this.m = SnapshotLongStateKt.a(h().getF3859h());
            Float f2 = (Float) VisibilityThresholdsKt.f4090b.get(twoWayConverter);
            if (f2 != null) {
                float fFloatValue = f2.floatValue();
                AnimationVector animationVector = (AnimationVector) twoWayConverter.getF4034a().invoke(t);
                int f3825c = animationVector.getF3832e();
                for (int i2 = 0; i2 < f3825c; i2++) {
                    animationVector.e(fFloatValue, i2);
                }
                objInvoke = this.f4005b.getF4035b().invoke(animationVector);
            }
            this.o = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, objInvoke);
        }

        public final void E(Object obj, FiniteAnimationSpec finiteAnimationSpec) {
            if (this.f4011j) {
                TargetBasedAnimation targetBasedAnimation = this.g;
                if (Intrinsics.c(obj, targetBasedAnimation != null ? targetBasedAnimation.f3983c : null)) {
                    return;
                }
            }
            MutableState mutableState = this.f4006c;
            boolean zC = Intrinsics.c(((SnapshotMutableStateImpl) mutableState).getF10755b(), obj);
            MutableFloatState mutableFloatState = this.f4010i;
            if (zC && ((SnapshotMutableFloatStateImpl) mutableFloatState).a() == -1.0f) {
                return;
            }
            ((SnapshotMutableStateImpl) mutableState).setValue(obj);
            ((SnapshotMutableStateImpl) this.d).setValue(finiteAnimationSpec);
            SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) mutableFloatState;
            Object f10755b = snapshotMutableFloatStateImpl.a() == -3.0f ? obj : ((SnapshotMutableStateImpl) this.f4012k).getF10755b();
            MutableState mutableState2 = this.f4009h;
            s(f10755b, !((Boolean) ((SnapshotMutableStateImpl) mutableState2).getF10755b()).booleanValue());
            ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(snapshotMutableFloatStateImpl.a() == -3.0f));
            if (snapshotMutableFloatStateImpl.a() >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                r(h().f((long) (snapshotMutableFloatStateImpl.a() * h().getF3859h())));
            } else if (snapshotMutableFloatStateImpl.a() == -3.0f) {
                r(obj);
            }
            this.f4011j = false;
            ((SnapshotMutableFloatStateImpl) mutableFloatState).w(-1.0f);
        }

        @Override // androidx.compose.runtime.State
        /* JADX INFO: renamed from: getValue */
        public final Object getF10755b() {
            return ((SnapshotMutableStateImpl) this.f4012k).getF10755b();
        }

        public final TargetBasedAnimation h() {
            return (TargetBasedAnimation) ((SnapshotMutableStateImpl) this.f4007e).getF10755b();
        }

        public final void j(long j2) {
            if (((SnapshotMutableFloatStateImpl) this.f4010i).a() == -1.0f) {
                this.n = true;
                if (Intrinsics.c(h().f3983c, h().d)) {
                    r(h().f3983c);
                } else {
                    r(h().f(j2));
                    this.l = h().b(j2);
                }
            }
        }

        public final void r(Object obj) {
            ((SnapshotMutableStateImpl) this.f4012k).setValue(obj);
        }

        public final void s(Object obj, boolean z) {
            TargetBasedAnimation targetBasedAnimation = this.g;
            Object obj2 = targetBasedAnimation != null ? targetBasedAnimation.f3983c : null;
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) this.f4006c;
            boolean zC = Intrinsics.c(obj2, snapshotMutableStateImpl.getF10755b());
            MutableLongState mutableLongState = this.m;
            MutableState mutableState = this.f4007e;
            AnimationSpec animationSpec = this.o;
            if (zC) {
                ((SnapshotMutableStateImpl) mutableState).setValue(new TargetBasedAnimation((AnimationSpec<Object>) animationSpec, (TwoWayConverter<Object, AnimationVector>) this.f4005b, obj, obj, this.l.c()));
                this.f4011j = true;
                ((SnapshotMutableLongStateImpl) mutableLongState).D(h().getF3859h());
                return;
            }
            MutableState mutableState2 = this.d;
            if (!z || this.n || (((FiniteAnimationSpec) ((SnapshotMutableStateImpl) mutableState2).getF10755b()) instanceof SpringSpec)) {
                animationSpec = (FiniteAnimationSpec) ((SnapshotMutableStateImpl) mutableState2).getF10755b();
            }
            Transition transition = Transition.this;
            long jE = transition.e();
            MutableState mutableState3 = transition.f3993h;
            ((SnapshotMutableStateImpl) mutableState).setValue(new TargetBasedAnimation((AnimationSpec<Object>) (jE <= 0 ? animationSpec : new StartDelayAnimationSpec(animationSpec, transition.e())), (TwoWayConverter<Object, AnimationVector>) this.f4005b, obj, snapshotMutableStateImpl.getF10755b(), this.l));
            ((SnapshotMutableLongStateImpl) mutableLongState).D(h().getF3859h());
            this.f4011j = false;
            ((SnapshotMutableStateImpl) mutableState3).setValue(Boolean.TRUE);
            if (transition.i()) {
                SnapshotStateList snapshotStateList = transition.f3994i;
                int size = snapshotStateList.size();
                long jMax = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i2);
                    jMax = Math.max(jMax, ((SnapshotMutableLongStateImpl) transitionAnimationState.m).b());
                    transitionAnimationState.j(0L);
                }
                ((SnapshotMutableStateImpl) mutableState3).setValue(Boolean.FALSE);
            }
        }

        public final String toString() {
            return "current value: " + ((SnapshotMutableStateImpl) this.f4012k).getF10755b() + ", target: " + ((SnapshotMutableStateImpl) this.f4006c).getF10755b() + ", spec: " + ((FiniteAnimationSpec) ((SnapshotMutableStateImpl) this.d).getF10755b());
        }

        public final void x(Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec) {
            ((SnapshotMutableStateImpl) this.f4006c).setValue(obj2);
            ((SnapshotMutableStateImpl) this.d).setValue(finiteAnimationSpec);
            if (Intrinsics.c(h().d, obj) && Intrinsics.c(h().f3983c, obj2)) {
                return;
            }
            s(obj, false);
        }
    }

    public Transition(TransitionState<S> transitionState, Transition<?> transition, String str) {
        this.f3988a = transitionState;
        this.f3989b = transition;
        this.f3990c = str;
        this.d = SnapshotStateKt.g(transitionState.a());
        this.f3991e = SnapshotStateKt.g(new SegmentImpl(transitionState.a(), transitionState.a()));
        this.f3992f = SnapshotLongStateKt.a(0L);
        this.g = SnapshotLongStateKt.a(Long.MIN_VALUE);
        Boolean bool = Boolean.FALSE;
        this.f3993h = SnapshotStateKt.g(bool);
        this.f3994i = new SnapshotStateList();
        this.f3995j = new SnapshotStateList();
        this.f3996k = SnapshotStateKt.g(bool);
        this.l = SnapshotStateKt.e(new hg0(this, 1));
        transitionState.d(this);
    }

    public final void a(Object obj, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-1493585151);
        int i4 = 2;
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(obj) : gapComposerH.y(obj) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(this) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (i()) {
                gapComposerH.L(467722849);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(466062241);
                r(obj);
                int i5 = i3 & 112;
                boolean z = i5 == 32;
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z || objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.e(new hg0(this, i4));
                    gapComposerH.q(objX);
                }
                if (((Boolean) ((State) objX).getF10755b()).booleanValue()) {
                    gapComposerH.L(466470356);
                    Object objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX2);
                    }
                    CoroutineScope coroutineScope = (CoroutineScope) objX2;
                    boolean zY = gapComposerH.y(coroutineScope) | (i5 == 32);
                    Object objX3 = gapComposerH.x();
                    if (zY || objX3 == composer$Companion$Empty$1) {
                        objX3 = new a(coroutineScope, this);
                        gapComposerH.q(objX3);
                    }
                    EffectsKt.b(coroutineScope, this, (Function1) objX3, gapComposerH);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(467712929);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i31(this, obj, i2, i4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long b() {
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        long jMax = 0;
        for (int i2 = 0; i2 < size; i2++) {
            jMax = Math.max(jMax, ((SnapshotMutableLongStateImpl) ((TransitionAnimationState) snapshotStateList.get(i2)).m).b());
        }
        SnapshotStateList snapshotStateList2 = this.f3995j;
        int size2 = snapshotStateList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            jMax = Math.max(jMax, ((Transition) snapshotStateList2.get(i3)).b());
        }
        return jMax;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i2);
            transitionAnimationState.g = null;
            transitionAnimationState.f4008f = null;
            transitionAnimationState.f4011j = false;
        }
        SnapshotStateList snapshotStateList2 = this.f3995j;
        int size2 = snapshotStateList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((Transition) snapshotStateList2.get(i3)).c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d() {
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((TransitionAnimationState) snapshotStateList.get(i2)).f4008f != null) {
                return true;
            }
        }
        SnapshotStateList snapshotStateList2 = this.f3995j;
        int size2 = snapshotStateList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            if (((Transition) snapshotStateList2.get(i3)).d()) {
                return true;
            }
        }
        return false;
    }

    public final long e() {
        Transition transition = this.f3989b;
        return transition != null ? transition.e() : this.f3992f.b();
    }

    public final Segment f() {
        return (Segment) ((SnapshotMutableStateImpl) this.f3991e).getF10755b();
    }

    public final Object g() {
        return ((SnapshotMutableStateImpl) this.d).getF10755b();
    }

    public final boolean h() {
        return ((SnapshotMutableLongStateImpl) this.g).b() != Long.MIN_VALUE;
    }

    public final boolean i() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f3996k).getF10755b()).booleanValue();
    }

    public final void j(long j2, boolean z) {
        MutableLongState mutableLongState = this.g;
        long jB = ((SnapshotMutableLongStateImpl) mutableLongState).b();
        TransitionState transitionState = this.f3988a;
        if (jB == Long.MIN_VALUE) {
            ((SnapshotMutableLongStateImpl) mutableLongState).D(j2);
            ((SnapshotMutableStateImpl) transitionState.f4030a).setValue(Boolean.TRUE);
        } else if (!((Boolean) ((SnapshotMutableStateImpl) transitionState.f4030a).getF10755b()).booleanValue()) {
            ((SnapshotMutableStateImpl) transitionState.f4030a).setValue(Boolean.TRUE);
        }
        ((SnapshotMutableStateImpl) this.f3993h).setValue(Boolean.FALSE);
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        boolean z2 = true;
        for (int i2 = 0; i2 < size; i2++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i2);
            MutableState mutableState = transitionAnimationState.f4009h;
            MutableState mutableState2 = transitionAnimationState.f4009h;
            if (!((Boolean) ((SnapshotMutableStateImpl) mutableState).getF10755b()).booleanValue()) {
                long jD = z ? transitionAnimationState.h().getF3859h() : j2;
                transitionAnimationState.r(transitionAnimationState.h().f(jD));
                transitionAnimationState.l = transitionAnimationState.h().b(jD);
                if (transitionAnimationState.h().c(jD)) {
                    ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.TRUE);
                }
            }
            if (!((Boolean) ((SnapshotMutableStateImpl) mutableState2).getF10755b()).booleanValue()) {
                z2 = false;
            }
        }
        SnapshotStateList snapshotStateList2 = this.f3995j;
        int size2 = snapshotStateList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Transition transition = (Transition) snapshotStateList2.get(i3);
            MutableState mutableState3 = transition.d;
            TransitionState transitionState2 = transition.f3988a;
            if (!Intrinsics.c(((SnapshotMutableStateImpl) mutableState3).getF10755b(), transitionState2.a())) {
                transition.j(j2, z);
            }
            if (!Intrinsics.c(((SnapshotMutableStateImpl) transition.d).getF10755b(), transitionState2.a())) {
                z2 = false;
            }
        }
        if (z2) {
            k();
        }
    }

    public final void k() {
        ((SnapshotMutableLongStateImpl) this.g).D(Long.MIN_VALUE);
        TransitionState transitionState = this.f3988a;
        if (transitionState instanceof MutableTransitionState) {
            ((MutableTransitionState) transitionState).c(((SnapshotMutableStateImpl) this.d).getF10755b());
        }
        p(0L);
        ((SnapshotMutableStateImpl) transitionState.f4030a).setValue(Boolean.FALSE);
        SnapshotStateList snapshotStateList = this.f3995j;
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Transition) snapshotStateList.get(i2)).k();
        }
    }

    public final void l(float f2) {
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i2);
            transitionAnimationState.getClass();
            if (f2 == -4.0f || f2 == -5.0f) {
                TargetBasedAnimation targetBasedAnimation = transitionAnimationState.g;
                if (targetBasedAnimation != null) {
                    transitionAnimationState.h().h(targetBasedAnimation.f3983c);
                    transitionAnimationState.f4008f = null;
                    transitionAnimationState.g = null;
                }
                Object obj = f2 == -4.0f ? transitionAnimationState.h().d : transitionAnimationState.h().f3983c;
                transitionAnimationState.h().h(obj);
                transitionAnimationState.h().i(obj);
                transitionAnimationState.r(obj);
                ((SnapshotMutableLongStateImpl) transitionAnimationState.m).D(transitionAnimationState.h().getF3859h());
            } else {
                ((SnapshotMutableFloatStateImpl) transitionAnimationState.f4010i).w(f2);
            }
        }
        SnapshotStateList snapshotStateList2 = this.f3995j;
        int size2 = snapshotStateList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((Transition) snapshotStateList2.get(i3)).l(f2);
        }
    }

    public final void m(Object obj, Object obj2) {
        ((SnapshotMutableLongStateImpl) this.g).D(Long.MIN_VALUE);
        TransitionState transitionState = this.f3988a;
        ((SnapshotMutableStateImpl) transitionState.f4030a).setValue(Boolean.FALSE);
        boolean zI = i();
        MutableState mutableState = this.d;
        if (!zI || !Intrinsics.c(transitionState.a(), obj) || !Intrinsics.c(((SnapshotMutableStateImpl) mutableState).getF10755b(), obj2)) {
            if (!Intrinsics.c(transitionState.a(), obj) && (transitionState instanceof MutableTransitionState)) {
                ((MutableTransitionState) transitionState).c(obj);
            }
            ((SnapshotMutableStateImpl) mutableState).setValue(obj2);
            ((SnapshotMutableStateImpl) this.f3996k).setValue(Boolean.TRUE);
            ((SnapshotMutableStateImpl) this.f3991e).setValue(new SegmentImpl(obj, obj2));
        }
        SnapshotStateList snapshotStateList = this.f3995j;
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Transition transition = (Transition) snapshotStateList.get(i2);
            transition.getClass();
            if (transition.i()) {
                transition.m(transition.f3988a.a(), ((SnapshotMutableStateImpl) transition.d).getF10755b());
            }
        }
        SnapshotStateList snapshotStateList2 = this.f3994i;
        int size2 = snapshotStateList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((TransitionAnimationState) snapshotStateList2.get(i3)).j(0L);
        }
    }

    public final void n(long j2) {
        MutableLongState mutableLongState = this.g;
        if (((SnapshotMutableLongStateImpl) mutableLongState).b() == Long.MIN_VALUE) {
            ((SnapshotMutableLongStateImpl) mutableLongState).D(j2);
        }
        p(j2);
        ((SnapshotMutableStateImpl) this.f3993h).setValue(Boolean.FALSE);
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((TransitionAnimationState) snapshotStateList.get(i2)).j(j2);
        }
        SnapshotStateList snapshotStateList2 = this.f3995j;
        int size2 = snapshotStateList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Transition transition = (Transition) snapshotStateList2.get(i3);
            if (!Intrinsics.c(((SnapshotMutableStateImpl) transition.d).getF10755b(), transition.f3988a.a())) {
                transition.n(j2);
            }
        }
    }

    public final void o(SeekableTransitionState.SeekingAnimationState seekingAnimationState) {
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i2);
            MutableState mutableState = transitionAnimationState.f4012k;
            if (!Intrinsics.c(transitionAnimationState.h().f3983c, transitionAnimationState.h().d)) {
                transitionAnimationState.g = transitionAnimationState.h();
                transitionAnimationState.f4008f = seekingAnimationState;
            }
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
            ((SnapshotMutableStateImpl) transitionAnimationState.f4007e).setValue(new TargetBasedAnimation(transitionAnimationState.o, (TwoWayConverter<Object, AnimationVector>) transitionAnimationState.f4005b, snapshotMutableStateImpl.getF10755b(), snapshotMutableStateImpl.getF10755b(), transitionAnimationState.l.c()));
            ((SnapshotMutableLongStateImpl) transitionAnimationState.m).D(transitionAnimationState.h().getF3859h());
            transitionAnimationState.f4011j = true;
        }
        SnapshotStateList snapshotStateList2 = this.f3995j;
        int size2 = snapshotStateList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((Transition) snapshotStateList2.get(i3)).o(seekingAnimationState);
        }
    }

    public final void p(long j2) {
        if (this.f3989b == null) {
            ((SnapshotMutableLongStateImpl) this.f3992f).D(j2);
        }
    }

    public final void q() {
        TargetBasedAnimation targetBasedAnimation;
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i2);
            SeekableTransitionState.SeekingAnimationState seekingAnimationState = transitionAnimationState.f4008f;
            if (seekingAnimationState != null && (targetBasedAnimation = transitionAnimationState.g) != null) {
                long jD = MathKt.d(seekingAnimationState.g * ((double) seekingAnimationState.d));
                Object objF = targetBasedAnimation.f(jD);
                if (transitionAnimationState.f4011j) {
                    transitionAnimationState.h().i(objF);
                }
                transitionAnimationState.h().h(objF);
                ((SnapshotMutableLongStateImpl) transitionAnimationState.m).D(transitionAnimationState.h().getF3859h());
                if (((SnapshotMutableFloatStateImpl) transitionAnimationState.f4010i).a() == -2.0f || transitionAnimationState.f4011j) {
                    transitionAnimationState.r(objF);
                } else {
                    transitionAnimationState.j(Transition.this.e());
                }
                if (jD >= seekingAnimationState.g) {
                    transitionAnimationState.f4008f = null;
                    transitionAnimationState.g = null;
                } else {
                    seekingAnimationState.f3931c = false;
                }
            }
        }
        SnapshotStateList snapshotStateList2 = this.f3995j;
        int size2 = snapshotStateList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((Transition) snapshotStateList2.get(i3)).q();
        }
    }

    public final void r(Object obj) {
        MutableState mutableState = this.d;
        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
        if (Intrinsics.c(snapshotMutableStateImpl.getF10755b(), obj)) {
            return;
        }
        ((SnapshotMutableStateImpl) this.f3991e).setValue(new SegmentImpl(snapshotMutableStateImpl.getF10755b(), obj));
        TransitionState transitionState = this.f3988a;
        if (!Intrinsics.c(transitionState.a(), snapshotMutableStateImpl.getF10755b())) {
            transitionState.c(snapshotMutableStateImpl.getF10755b());
        }
        ((SnapshotMutableStateImpl) mutableState).setValue(obj);
        if (!h()) {
            ((SnapshotMutableStateImpl) this.f3993h).setValue(Boolean.TRUE);
        }
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((SnapshotMutableFloatStateImpl) ((TransitionAnimationState) snapshotStateList.get(i2)).f4010i).w(-2.0f);
        }
    }

    public final String toString() {
        SnapshotStateList snapshotStateList = this.f3994i;
        int size = snapshotStateList.size();
        String str = "Transition animation values: ";
        for (int i2 = 0; i2 < size; i2++) {
            str = str + ((TransitionAnimationState) snapshotStateList.get(i2)) + ", ";
        }
        return str;
    }

    public /* synthetic */ Transition(TransitionState transitionState, Transition transition, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(transitionState, transition, (i2 & 4) != 0 ? null : str);
    }

    public /* synthetic */ Transition(TransitionState transitionState, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(transitionState, (i2 & 2) != 0 ? null : str);
    }

    public Transition(TransitionState<S> transitionState, String str) {
        this(transitionState, null, str);
    }

    public Transition(S s, String str) {
        this(new MutableTransitionState(s), null, str);
    }

    public /* synthetic */ Transition(MutableTransitionState mutableTransitionState, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(mutableTransitionState, (i2 & 2) != 0 ? null : str);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Transition(MutableTransitionState<S> mutableTransitionState, String str) {
        this(mutableTransitionState, null, str);
        mutableTransitionState.getClass();
    }
}
