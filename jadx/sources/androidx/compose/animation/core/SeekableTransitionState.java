package androidx.compose.animation.core;

import androidx.collection.MutableObjectList;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.j00;
import defpackage.ll0;
import defpackage.md;
import defpackage.xn0;
import defpackage.xu0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002\u0006\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/compose/animation/core/SeekableTransitionState;", "S", "Landroidx/compose/animation/core/TransitionState;", "initialState", "<init>", "(Ljava/lang/Object;)V", "SeekingAnimationState", "Companion", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SeekableTransitionState<S> extends TransitionState<S> {
    public static final Companion s = new Companion(null);
    public static final int t = 8;
    public static final AnimationVector1D u = new AnimationVector1D(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    public static final AnimationVector1D v = new AnimationVector1D(1.0f);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f3921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f3922c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Transition f3923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3924f;
    public final xn0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SnapshotStateObserver f3925h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableFloatState f3926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CancellableContinuationImpl f3927j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutexImpl f3928k;
    public final MutatorMutex l;
    public long m;
    public final MutableObjectList n;
    public SeekingAnimationState o;
    public final xu0 p;
    public float q;
    public final xu0 r;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/animation/core/SeekableTransitionState$Companion;", "", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;", "", "<init>", "()V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SeekingAnimationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f3929a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public VectorizedFiniteAnimationSpec f3930b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f3931c;
        public float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AnimationVector1D f3932e = new AnimationVector1D(Call.Parameters.DEFAULT_CAMERA_ZOOM);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public AnimationVector1D f3933f;
        public long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f3934h;

        public final String toString() {
            return "progress nanos: " + this.f3929a + ", animationSpec: " + this.f3930b + ", isComplete: " + this.f3931c + ", value: " + this.d + ", start: " + this.f3932e + ", initialVelocity: " + this.f3933f + ", durationNanos: " + this.g + ", animationSpecDuration: " + this.f3934h;
        }
    }

    /* JADX WARN: Type inference failed for: r4v7, types: [xu0] */
    /* JADX WARN: Type inference failed for: r4v8, types: [xu0] */
    public SeekableTransitionState(S s2) {
        super(null);
        this.f3921b = SnapshotStateKt.g(s2);
        this.f3922c = SnapshotStateKt.g(s2);
        this.d = s2;
        this.g = new xn0(this, 25);
        this.f3926i = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f3928k = MutexKt.a();
        this.l = new MutatorMutex();
        this.m = Long.MIN_VALUE;
        final int i2 = 0;
        final int i3 = 1;
        this.n = new MutableObjectList(0, 1, null);
        this.p = new Function1(this) { // from class: xu0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SeekableTransitionState f81205c;

            {
                this.f81205c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i2;
                SeekableTransitionState seekableTransitionState = this.f81205c;
                Long l = (Long) obj;
                switch (i4) {
                    case 0:
                        seekableTransitionState.m = l.longValue();
                        break;
                    default:
                        long jLongValue = l.longValue();
                        long j2 = jLongValue - seekableTransitionState.m;
                        seekableTransitionState.m = jLongValue;
                        long jD = MathKt.d(j2 / ((double) seekableTransitionState.q));
                        MutableObjectList mutableObjectList = seekableTransitionState.n;
                        if (mutableObjectList.e()) {
                            Object[] objArr = mutableObjectList.f3345a;
                            int i5 = mutableObjectList.f3346b;
                            int i6 = 0;
                            for (int i7 = 0; i7 < i5; i7++) {
                                SeekableTransitionState.SeekingAnimationState seekingAnimationState = (SeekableTransitionState.SeekingAnimationState) objArr[i7];
                                SeekableTransitionState.m(seekingAnimationState, jD);
                                seekingAnimationState.f3931c = true;
                            }
                            Transition transition = seekableTransitionState.f3923e;
                            if (transition != null) {
                                transition.q();
                            }
                            int i8 = mutableObjectList.f3346b;
                            Object[] objArr2 = mutableObjectList.f3345a;
                            IntRange intRangeJ = RangesKt.j(0, i8);
                            int i9 = intRangeJ.f71951b;
                            int i10 = intRangeJ.f71952c;
                            if (i9 <= i10) {
                                while (true) {
                                    objArr2[i9 - i6] = objArr2[i9];
                                    if (((SeekableTransitionState.SeekingAnimationState) objArr2[i9]).f3931c) {
                                        i6++;
                                    }
                                    if (i9 != i10) {
                                        i9++;
                                    }
                                }
                            }
                            ArraysKt.r(objArr2, i8 - i6, i8, null);
                            mutableObjectList.f3346b -= i6;
                        }
                        SeekableTransitionState.SeekingAnimationState seekingAnimationState2 = seekableTransitionState.o;
                        if (seekingAnimationState2 != null) {
                            seekingAnimationState2.g = seekableTransitionState.f3924f;
                            SeekableTransitionState.m(seekingAnimationState2, jD);
                            seekableTransitionState.p(seekingAnimationState2.d);
                            if (seekingAnimationState2.d == 1.0f) {
                                seekableTransitionState.o = null;
                            }
                            seekableTransitionState.o();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        };
        this.r = new Function1(this) { // from class: xu0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SeekableTransitionState f81205c;

            {
                this.f81205c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                SeekableTransitionState seekableTransitionState = this.f81205c;
                Long l = (Long) obj;
                switch (i4) {
                    case 0:
                        seekableTransitionState.m = l.longValue();
                        break;
                    default:
                        long jLongValue = l.longValue();
                        long j2 = jLongValue - seekableTransitionState.m;
                        seekableTransitionState.m = jLongValue;
                        long jD = MathKt.d(j2 / ((double) seekableTransitionState.q));
                        MutableObjectList mutableObjectList = seekableTransitionState.n;
                        if (mutableObjectList.e()) {
                            Object[] objArr = mutableObjectList.f3345a;
                            int i5 = mutableObjectList.f3346b;
                            int i6 = 0;
                            for (int i7 = 0; i7 < i5; i7++) {
                                SeekableTransitionState.SeekingAnimationState seekingAnimationState = (SeekableTransitionState.SeekingAnimationState) objArr[i7];
                                SeekableTransitionState.m(seekingAnimationState, jD);
                                seekingAnimationState.f3931c = true;
                            }
                            Transition transition = seekableTransitionState.f3923e;
                            if (transition != null) {
                                transition.q();
                            }
                            int i8 = mutableObjectList.f3346b;
                            Object[] objArr2 = mutableObjectList.f3345a;
                            IntRange intRangeJ = RangesKt.j(0, i8);
                            int i9 = intRangeJ.f71951b;
                            int i10 = intRangeJ.f71952c;
                            if (i9 <= i10) {
                                while (true) {
                                    objArr2[i9 - i6] = objArr2[i9];
                                    if (((SeekableTransitionState.SeekingAnimationState) objArr2[i9]).f3931c) {
                                        i6++;
                                    }
                                    if (i9 != i10) {
                                        i9++;
                                    }
                                }
                            }
                            ArraysKt.r(objArr2, i8 - i6, i8, null);
                            mutableObjectList.f3346b -= i6;
                        }
                        SeekableTransitionState.SeekingAnimationState seekingAnimationState2 = seekableTransitionState.o;
                        if (seekingAnimationState2 != null) {
                            seekingAnimationState2.g = seekableTransitionState.f3924f;
                            SeekableTransitionState.m(seekingAnimationState2, jD);
                            seekableTransitionState.p(seekingAnimationState2.d);
                            if (seekingAnimationState2.d == 1.0f) {
                                seekableTransitionState.o = null;
                            }
                            seekableTransitionState.o();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        };
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0062  */
    public static final void f(SeekableTransitionState seekableTransitionState) {
        MutableFloatState mutableFloatState = seekableTransitionState.f3926i;
        Transition transition = seekableTransitionState.f3923e;
        if (transition == null) {
            return;
        }
        SeekingAnimationState seekingAnimationState = seekableTransitionState.o;
        if (seekingAnimationState == null) {
            if (seekableTransitionState.f3924f > 0) {
                SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) mutableFloatState;
                if (snapshotMutableFloatStateImpl.a() == 1.0f || Intrinsics.c(((SnapshotMutableStateImpl) seekableTransitionState.f3922c).getF10755b(), ((SnapshotMutableStateImpl) seekableTransitionState.f3921b).getF10755b())) {
                    seekingAnimationState = null;
                } else {
                    seekingAnimationState = new SeekingAnimationState();
                    seekingAnimationState.d = snapshotMutableFloatStateImpl.a();
                    long j2 = seekableTransitionState.f3924f;
                    seekingAnimationState.g = j2;
                    seekingAnimationState.f3934h = MathKt.d((1.0d - ((double) snapshotMutableFloatStateImpl.a())) * j2);
                    seekingAnimationState.f3932e.e(snapshotMutableFloatStateImpl.a(), 0);
                }
            } else {
                seekingAnimationState = null;
            }
        }
        if (seekingAnimationState != null) {
            seekingAnimationState.g = seekableTransitionState.f3924f;
            seekableTransitionState.n.g(seekingAnimationState);
            transition.o(seekingAnimationState);
        }
        seekableTransitionState.o = null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object g(SeekableTransitionState seekableTransitionState, ContinuationImpl continuationImpl) {
        SeekableTransitionState$runAnimations$1 seekableTransitionState$runAnimations$1;
        MutableObjectList mutableObjectList = seekableTransitionState.n;
        if (continuationImpl instanceof SeekableTransitionState$runAnimations$1) {
            seekableTransitionState$runAnimations$1 = (SeekableTransitionState$runAnimations$1) continuationImpl;
            int i2 = seekableTransitionState$runAnimations$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                seekableTransitionState$runAnimations$1.d = i2 - Integer.MIN_VALUE;
            } else {
                seekableTransitionState$runAnimations$1 = new SeekableTransitionState$runAnimations$1(seekableTransitionState, continuationImpl);
            }
        } else {
            seekableTransitionState$runAnimations$1 = new SeekableTransitionState$runAnimations$1(seekableTransitionState, continuationImpl);
        }
        Object obj = seekableTransitionState$runAnimations$1.f3942b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = seekableTransitionState$runAnimations$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (mutableObjectList.d() && seekableTransitionState.o == null) {
                return Unit.f71739a;
            }
            if (SuspendAnimationKt.i(seekableTransitionState$runAnimations$1.getContext()) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                seekableTransitionState.l();
                seekableTransitionState.m = Long.MIN_VALUE;
                return Unit.f71739a;
            }
            if (seekableTransitionState.m == Long.MIN_VALUE) {
                xu0 xu0Var = seekableTransitionState.p;
                seekableTransitionState$runAnimations$1.d = 1;
                if (MonotonicFrameClockKt.a(seekableTransitionState$runAnimations$1.getContext()).c(seekableTransitionState$runAnimations$1, xu0Var) != obj2) {
                }
            }
            return obj2;
        }
        if (i3 != 1 && i3 != 2) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        do {
            if (!mutableObjectList.e() && seekableTransitionState.o == null) {
                seekableTransitionState.m = Long.MIN_VALUE;
                return Unit.f71739a;
            }
            seekableTransitionState$runAnimations$1.d = 2;
        } while (seekableTransitionState.j(seekableTransitionState$runAnimations$1) != obj2);
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0077  */
    /* JADX WARN: Code duplicated, block: B:27:0x007a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object h(SeekableTransitionState seekableTransitionState, ContinuationImpl continuationImpl) {
        SeekableTransitionState$waitForComposition$1 seekableTransitionState$waitForComposition$1;
        Object f10755b;
        Object obj;
        MutexImpl mutexImpl = seekableTransitionState.f3928k;
        if (continuationImpl instanceof SeekableTransitionState$waitForComposition$1) {
            seekableTransitionState$waitForComposition$1 = (SeekableTransitionState$waitForComposition$1) continuationImpl;
            int i2 = seekableTransitionState$waitForComposition$1.f3960e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                seekableTransitionState$waitForComposition$1.f3960e = i2 - Integer.MIN_VALUE;
            } else {
                seekableTransitionState$waitForComposition$1 = new SeekableTransitionState$waitForComposition$1(seekableTransitionState, continuationImpl);
            }
        } else {
            seekableTransitionState$waitForComposition$1 = new SeekableTransitionState$waitForComposition$1(seekableTransitionState, continuationImpl);
        }
        Object obj2 = seekableTransitionState$waitForComposition$1.f3959c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = seekableTransitionState$waitForComposition$1.f3960e;
        if (i3 == 0) {
            ResultKt.b(obj2);
            f10755b = ((SnapshotMutableStateImpl) seekableTransitionState.f3921b).getF10755b();
            seekableTransitionState$waitForComposition$1.f3958b = f10755b;
            seekableTransitionState$waitForComposition$1.f3960e = 1;
            if (mutexImpl.c(seekableTransitionState$waitForComposition$1) != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            Object obj3 = seekableTransitionState$waitForComposition$1.f3958b;
            ResultKt.b(obj2);
            f10755b = obj3;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj = seekableTransitionState$waitForComposition$1.f3958b;
            ResultKt.b(obj2);
        }
        if (Intrinsics.c(obj2, obj)) {
            return Unit.f71739a;
        }
        seekableTransitionState.m = Long.MIN_VALUE;
        throw new CancellationException("targetState while waiting for composition");
        seekableTransitionState$waitForComposition$1.f3958b = f10755b;
        seekableTransitionState$waitForComposition$1.f3960e = 2;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(seekableTransitionState$waitForComposition$1), 1);
        cancellableContinuationImpl.initCancellability();
        seekableTransitionState.f3927j = cancellableContinuationImpl;
        mutexImpl.d(null);
        Object result = cancellableContinuationImpl.getResult();
        if (result != coroutineSingletons) {
            obj = f10755b;
            obj2 = result;
            if (Intrinsics.c(obj2, obj)) {
                return Unit.f71739a;
            }
            seekableTransitionState.m = Long.MIN_VALUE;
            throw new CancellationException("targetState while waiting for composition");
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0086  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Instruction removed from duplicated block: B:30:0x0086, please report this as an issue */
    public static final Object i(SeekableTransitionState seekableTransitionState, ContinuationImpl continuationImpl) {
        SeekableTransitionState$waitForCompositionAfterTargetStateChange$1 seekableTransitionState$waitForCompositionAfterTargetStateChange$1;
        Object f10755b;
        Object obj;
        MutexImpl mutexImpl = seekableTransitionState.f3928k;
        if (continuationImpl instanceof SeekableTransitionState$waitForCompositionAfterTargetStateChange$1) {
            seekableTransitionState$waitForCompositionAfterTargetStateChange$1 = (SeekableTransitionState$waitForCompositionAfterTargetStateChange$1) continuationImpl;
            int i2 = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3963e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3963e = i2 - Integer.MIN_VALUE;
            } else {
                seekableTransitionState$waitForCompositionAfterTargetStateChange$1 = new SeekableTransitionState$waitForCompositionAfterTargetStateChange$1(seekableTransitionState, continuationImpl);
            }
        } else {
            seekableTransitionState$waitForCompositionAfterTargetStateChange$1 = new SeekableTransitionState$waitForCompositionAfterTargetStateChange$1(seekableTransitionState, continuationImpl);
        }
        Object obj2 = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3962c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3963e;
        if (i3 == 0) {
            ResultKt.b(obj2);
            f10755b = ((SnapshotMutableStateImpl) seekableTransitionState.f3921b).getF10755b();
            seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3961b = f10755b;
            seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3963e = 1;
            if (mutexImpl.c(seekableTransitionState$waitForCompositionAfterTargetStateChange$1) != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            Object obj3 = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3961b;
            ResultKt.b(obj2);
            f10755b = obj3;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3961b;
            ResultKt.b(obj2);
        }
        if (!Intrinsics.c(obj2, obj)) {
            seekableTransitionState.m = Long.MIN_VALUE;
            throw new CancellationException("snapTo() was canceled because state was changed to " + obj2 + " instead of " + obj);
        }
        return Unit.f71739a;
        if (!Intrinsics.c(f10755b, seekableTransitionState.d)) {
            seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3961b = f10755b;
            seekableTransitionState$waitForCompositionAfterTargetStateChange$1.f3963e = 2;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(seekableTransitionState$waitForCompositionAfterTargetStateChange$1), 1);
            cancellableContinuationImpl.initCancellability();
            seekableTransitionState.f3927j = cancellableContinuationImpl;
            mutexImpl.d(null);
            Object result = cancellableContinuationImpl.getResult();
            if (result != coroutineSingletons) {
                obj = f10755b;
                obj2 = result;
                if (!Intrinsics.c(obj2, obj)) {
                    seekableTransitionState.m = Long.MIN_VALUE;
                    throw new CancellationException("snapTo() was canceled because state was changed to " + obj2 + " instead of " + obj);
                }
            }
            return coroutineSingletons;
        }
        mutexImpl.d(null);
        return Unit.f71739a;
    }

    public static Object k(SeekableTransitionState seekableTransitionState, Object obj, SuspendLambda suspendLambda) {
        Object objA;
        Transition transition = seekableTransitionState.f3923e;
        return (transition != null && (objA = MutatorMutex.a(seekableTransitionState.l, new SeekableTransitionState$animateTo$2(seekableTransitionState, transition, obj, null), suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objA : Unit.f71739a;
    }

    public static void m(SeekingAnimationState seekingAnimationState, long j2) {
        long j3 = seekingAnimationState.f3929a + j2;
        seekingAnimationState.f3929a = j3;
        long j4 = seekingAnimationState.f3934h;
        if (j3 >= j4) {
            seekingAnimationState.d = 1.0f;
            return;
        }
        VectorizedFiniteAnimationSpec vectorizedFiniteAnimationSpec = seekingAnimationState.f3930b;
        AnimationVector1D animationVector1D = seekingAnimationState.f3932e;
        if (vectorizedFiniteAnimationSpec == null) {
            float f2 = j3 / j4;
            seekingAnimationState.d = (f2 * 1.0f) + ((1.0f - f2) * animationVector1D.a(0));
            return;
        }
        AnimationVector1D animationVector1D2 = seekingAnimationState.f3933f;
        if (animationVector1D2 == null) {
            animationVector1D2 = u;
        }
        seekingAnimationState.d = RangesKt.c(((AnimationVector1D) vectorizedFiniteAnimationSpec.g(j3, animationVector1D, v, animationVector1D2)).a(0), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final Object a() {
        return ((SnapshotMutableStateImpl) this.f3922c).getF10755b();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final Object b() {
        return ((SnapshotMutableStateImpl) this.f3921b).getF10755b();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void c(Object obj) {
        ((SnapshotMutableStateImpl) this.f3922c).setValue(obj);
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void d(Transition transition) {
        Transition transition2 = this.f3923e;
        if (transition2 != null && transition != transition2) {
            PreconditionsKt.b("An instance of SeekableTransitionState has been used in different Transitions. Previous instance: " + this.f3923e + ", new instance: " + transition);
        }
        this.f3923e = transition;
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void e() {
        this.f3923e = null;
        SnapshotStateObserver snapshotStateObserver = this.f3925h;
        if (snapshotStateObserver != null) {
            snapshotStateObserver.b(this);
        }
    }

    public final Object j(ContinuationImpl continuationImpl) {
        float fI = SuspendAnimationKt.i(continuationImpl.getContext());
        if (fI <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            l();
            return Unit.f71739a;
        }
        this.q = fI;
        Object objC = MonotonicFrameClockKt.a(continuationImpl.getContext()).c(continuationImpl, this.r);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
    }

    public final void l() {
        Transition transition = this.f3923e;
        if (transition != null) {
            transition.c();
        }
        this.n.k();
        if (this.o != null) {
            this.o = null;
            p(1.0f);
            o();
        }
    }

    public final Object n(float f2, Object obj, SuspendLambda suspendLambda) {
        if (Call.Parameters.DEFAULT_CAMERA_ZOOM > f2 || f2 > 1.0f) {
            PreconditionsKt.a("Expecting fraction between 0 and 1. Got " + f2);
        }
        Transition transition = this.f3923e;
        if (transition == null) {
            return Unit.f71739a;
        }
        Object objA = MutatorMutex.a(this.l, new SeekableTransitionState$seekTo$3(obj, ((SnapshotMutableStateImpl) this.f3921b).getF10755b(), this, transition, f2, null), suspendLambda);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    public final void o() {
        Transition transition = this.f3923e;
        if (transition == null) {
            return;
        }
        transition.n(MathKt.d(((double) ((SnapshotMutableFloatStateImpl) this.f3926i).a()) * ((Number) transition.l.getF10755b()).longValue()));
    }

    public final void p(float f2) {
        ((SnapshotMutableFloatStateImpl) this.f3926i).w(f2);
    }

    public final void q(SnapshotStateObserver snapshotStateObserver) {
        j00 j00Var;
        if (Intrinsics.c(this.f3925h, snapshotStateObserver)) {
            return;
        }
        SnapshotStateObserver snapshotStateObserver2 = this.f3925h;
        if (snapshotStateObserver2 != null) {
            snapshotStateObserver2.b(this);
        }
        SnapshotStateObserver snapshotStateObserver3 = this.f3925h;
        if (snapshotStateObserver3 != null && (j00Var = snapshotStateObserver3.f8503h) != null) {
            j00Var.dispose();
        }
        this.f3925h = snapshotStateObserver;
        if (snapshotStateObserver != null) {
            Snapshot.Companion companion = Snapshot.f8462e;
            ll0 ll0Var = snapshotStateObserver.d;
            companion.getClass();
            snapshotStateObserver.f8503h = Snapshot.Companion.d(ll0Var);
        }
        SnapshotStateObserver snapshotStateObserver4 = this.f3925h;
        if (snapshotStateObserver4 != null) {
            snapshotStateObserver4.e(this, TransitionKt.f4016a, this.g);
        }
    }

    public final Object r(Object obj, SuspendLambda suspendLambda) {
        Transition transition = this.f3923e;
        if (transition == null) {
            return Unit.f71739a;
        }
        if (Intrinsics.c(((SnapshotMutableStateImpl) this.f3922c).getF10755b(), obj) && Intrinsics.c(((SnapshotMutableStateImpl) this.f3921b).getF10755b(), obj)) {
            return Unit.f71739a;
        }
        Object objA = MutatorMutex.a(this.l, new SeekableTransitionState$snapTo$2(this, transition, obj, null), suspendLambda);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }
}
