package com.airbnb.lottie.compose;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import com.airbnb.lottie.LottieComposition;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/airbnb/lottie/compose/LottieAnimatableImpl;", "Lcom/airbnb/lottie/compose/LottieAnimatable;", "<init>", "()V", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class LottieAnimatableImpl implements LottieAnimatable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f21940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f21941c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f21942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableState f21943f;
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableState f21944h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final State f21945i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableState f21946j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableState f21947k;
    public final MutableState l;
    public final MutableState m;
    public final State n;
    public final State o;
    public final MutatorMutex p;

    public LottieAnimatableImpl() {
        Boolean bool = Boolean.FALSE;
        this.f21940b = SnapshotStateKt.g(bool);
        this.f21941c = SnapshotStateKt.g(1);
        this.d = SnapshotStateKt.g(1);
        this.f21942e = SnapshotStateKt.g(bool);
        this.f21943f = SnapshotStateKt.g(null);
        this.g = SnapshotStateKt.g(Float.valueOf(1.0f));
        this.f21944h = SnapshotStateKt.g(bool);
        this.f21945i = SnapshotStateKt.e(new Function0<Float>() { // from class: com.airbnb.lottie.compose.LottieAnimatableImpl$frameSpeed$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LottieAnimatableImpl lottieAnimatableImpl = this.f21965c;
                return Float.valueOf((lottieAnimatableImpl.t() && lottieAnimatableImpl.y() % 2 == 0) ? -lottieAnimatableImpl.v() : lottieAnimatableImpl.v());
            }
        });
        this.f21946j = SnapshotStateKt.g(null);
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f21947k = SnapshotStateKt.g(fValueOf);
        this.l = SnapshotStateKt.g(fValueOf);
        this.m = SnapshotStateKt.g(Long.MIN_VALUE);
        this.n = SnapshotStateKt.e(new Function0<Float>() { // from class: com.airbnb.lottie.compose.LottieAnimatableImpl$endProgress$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LottieAnimatableImpl lottieAnimatableImpl = this.f21964c;
                LottieComposition lottieCompositionA = lottieAnimatableImpl.A();
                float fA = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (lottieCompositionA != null) {
                    if (lottieAnimatableImpl.v() < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        LottieClipSpec lottieClipSpecC = lottieAnimatableImpl.C();
                        if (lottieClipSpecC != null) {
                            fA = lottieClipSpecC.b(lottieCompositionA);
                        }
                    } else {
                        LottieClipSpec lottieClipSpecC2 = lottieAnimatableImpl.C();
                        fA = lottieClipSpecC2 != null ? lottieClipSpecC2.a(lottieCompositionA) : 1.0f;
                    }
                }
                return Float.valueOf(fA);
            }
        });
        this.o = SnapshotStateKt.e(new Function0<Boolean>() { // from class: com.airbnb.lottie.compose.LottieAnimatableImpl$isAtEnd$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LottieAnimatableImpl lottieAnimatableImpl = this.f21966c;
                return Boolean.valueOf(lottieAnimatableImpl.y() == lottieAnimatableImpl.u() && lottieAnimatableImpl.c() == ((Number) lottieAnimatableImpl.n.getF10755b()).floatValue());
            }
        });
        this.p = new MutatorMutex();
    }

    public static final boolean h(LottieAnimatableImpl lottieAnimatableImpl, int i2, long j2) {
        MutableState mutableState = lottieAnimatableImpl.f21947k;
        State state = lottieAnimatableImpl.f21945i;
        MutableState mutableState2 = lottieAnimatableImpl.m;
        LottieComposition lottieCompositionA = lottieAnimatableImpl.A();
        if (lottieCompositionA == null) {
            return true;
        }
        long jLongValue = ((Number) ((SnapshotMutableStateImpl) mutableState2).getF10755b()).longValue() == Long.MIN_VALUE ? 0L : j2 - ((Number) ((SnapshotMutableStateImpl) mutableState2).getF10755b()).longValue();
        ((SnapshotMutableStateImpl) mutableState2).setValue(Long.valueOf(j2));
        LottieClipSpec lottieClipSpecC = lottieAnimatableImpl.C();
        float fB = lottieClipSpecC != null ? lottieClipSpecC.b(lottieCompositionA) : 0.0f;
        LottieClipSpec lottieClipSpecC2 = lottieAnimatableImpl.C();
        float fA = lottieClipSpecC2 != null ? lottieClipSpecC2.a(lottieCompositionA) : 1.0f;
        float fFloatValue = ((Number) state.getF10755b()).floatValue() * ((jLongValue / 1000000) / lottieCompositionA.b());
        float fFloatValue2 = ((Number) state.getF10755b()).floatValue() < Call.Parameters.DEFAULT_CAMERA_ZOOM ? fB - (((Number) ((SnapshotMutableStateImpl) mutableState).getF10755b()).floatValue() + fFloatValue) : (((Number) ((SnapshotMutableStateImpl) mutableState).getF10755b()).floatValue() + fFloatValue) - fA;
        if (fB == fA) {
            lottieAnimatableImpl.s(fB);
            return false;
        }
        if (fFloatValue2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            lottieAnimatableImpl.s(RangesKt.c(((Number) ((SnapshotMutableStateImpl) mutableState).getF10755b()).floatValue(), fB, fA) + fFloatValue);
            return true;
        }
        float f2 = fA - fB;
        int i3 = (int) (fFloatValue2 / f2);
        int i4 = i3 + 1;
        if (lottieAnimatableImpl.y() + i4 > i2) {
            lottieAnimatableImpl.s(((Number) lottieAnimatableImpl.n.getF10755b()).floatValue());
            lottieAnimatableImpl.r(i2);
            return false;
        }
        lottieAnimatableImpl.r(lottieAnimatableImpl.y() + i4);
        float f3 = fFloatValue2 - (i3 * f2);
        lottieAnimatableImpl.s(((Number) state.getF10755b()).floatValue() < Call.Parameters.DEFAULT_CAMERA_ZOOM ? fA - f3 : fB + f3);
        return true;
    }

    public static final void j(LottieAnimatableImpl lottieAnimatableImpl, boolean z) {
        ((SnapshotMutableStateImpl) lottieAnimatableImpl.f21940b).setValue(Boolean.valueOf(z));
    }

    @Override // com.airbnb.lottie.compose.LottieAnimationState
    public final LottieComposition A() {
        return (LottieComposition) ((SnapshotMutableStateImpl) this.f21946j).getF10755b();
    }

    @Override // com.airbnb.lottie.compose.LottieAnimatable
    public final Object B(LottieComposition lottieComposition, int i2, int i3, boolean z, float f2, LottieClipSpec lottieClipSpec, float f3, boolean z2, LottieCancellationBehavior lottieCancellationBehavior, boolean z3, SuspendLambda suspendLambda) {
        Object objB = this.p.b(MutatePriority.Default, new LottieAnimatableImpl$animate$2(this, i2, i3, z, f2, lottieClipSpec, lottieComposition, f3, z3, z2, lottieCancellationBehavior, null), suspendLambda);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    @Override // com.airbnb.lottie.compose.LottieAnimationState
    public final LottieClipSpec C() {
        return (LottieClipSpec) ((SnapshotMutableStateImpl) this.f21943f).getF10755b();
    }

    @Override // com.airbnb.lottie.compose.LottieAnimationState
    public final float c() {
        return ((Number) ((SnapshotMutableStateImpl) this.l).getF10755b()).floatValue();
    }

    @Override // androidx.compose.runtime.State
    /* JADX INFO: renamed from: getValue */
    public final Object getF10755b() {
        return Float.valueOf(c());
    }

    @Override // com.airbnb.lottie.compose.LottieAnimationState
    public final boolean isPlaying() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f21940b).getF10755b()).booleanValue();
    }

    @Override // com.airbnb.lottie.compose.LottieAnimationState
    public final boolean k() {
        return ((Boolean) this.o.getF10755b()).booleanValue();
    }

    public final void r(int i2) {
        ((SnapshotMutableStateImpl) this.f21941c).setValue(Integer.valueOf(i2));
    }

    public final void s(float f2) {
        LottieComposition lottieCompositionA;
        ((SnapshotMutableStateImpl) this.f21947k).setValue(Float.valueOf(f2));
        if (((Boolean) ((SnapshotMutableStateImpl) this.f21944h).getF10755b()).booleanValue() && (lottieCompositionA = A()) != null) {
            f2 -= f2 % (1.0f / lottieCompositionA.n);
        }
        ((SnapshotMutableStateImpl) this.l).setValue(Float.valueOf(f2));
    }

    @Override // com.airbnb.lottie.compose.LottieAnimationState
    public final boolean t() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f21942e).getF10755b()).booleanValue();
    }

    @Override // com.airbnb.lottie.compose.LottieAnimationState
    public final int u() {
        return ((Number) ((SnapshotMutableStateImpl) this.d).getF10755b()).intValue();
    }

    @Override // com.airbnb.lottie.compose.LottieAnimationState
    public final float v() {
        return ((Number) ((SnapshotMutableStateImpl) this.g).getF10755b()).floatValue();
    }

    @Override // com.airbnb.lottie.compose.LottieAnimationState
    public final int y() {
        return ((Number) ((SnapshotMutableStateImpl) this.f21941c).getF10755b()).intValue();
    }

    @Override // com.airbnb.lottie.compose.LottieAnimatable
    public final Object z(LottieComposition lottieComposition, float f2, int i2, boolean z, SuspendLambda suspendLambda) {
        Object objB = this.p.b(MutatePriority.Default, new LottieAnimatableImpl$snapTo$2(this, lottieComposition, f2, i2, z, null), suspendLambda);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }
}
