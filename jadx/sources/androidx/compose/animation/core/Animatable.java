package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0004B;\b\u0007\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00018\u0000\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB1\b\u0017\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u000b\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/animation/core/Animatable;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "", "initialValue", "Landroidx/compose/animation/core/TwoWayConverter;", "typeConverter", "visibilityThreshold", "", "label", "<init>", "(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;)V", "(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Animatable<T, V extends AnimationVector> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwoWayConverter f3772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnimationState f3774c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f3775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutatorMutex f3776f;
    public final SpringSpec g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AnimationVector f3777h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AnimationVector f3778i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AnimationVector f3779j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnimationVector f3780k;

    public Animatable(T t, TwoWayConverter<T, V> twoWayConverter, T t2, String str) {
        this.f3772a = twoWayConverter;
        this.f3773b = t2;
        AnimationState animationState = new AnimationState(twoWayConverter, t, null, 0L, 0L, false, 60, null);
        this.f3774c = animationState;
        this.d = SnapshotStateKt.g(Boolean.FALSE);
        this.f3775e = SnapshotStateKt.g(t);
        this.f3776f = new MutatorMutex();
        this.g = new SpringSpec(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, t2, 3, null);
        AnimationVector animationVector = animationState.d;
        AnimationVector animationVector2 = animationVector instanceof AnimationVector1D ? AnimatableKt.f3793e : animationVector instanceof AnimationVector2D ? AnimatableKt.f3794f : animationVector instanceof AnimationVector3D ? AnimatableKt.g : AnimatableKt.f3795h;
        animationVector2.getClass();
        this.f3777h = animationVector2;
        AnimationVector animationVector3 = animationState.d;
        AnimationVector animationVector4 = animationVector3 instanceof AnimationVector1D ? AnimatableKt.f3790a : animationVector3 instanceof AnimationVector2D ? AnimatableKt.f3791b : animationVector3 instanceof AnimationVector3D ? AnimatableKt.f3792c : AnimatableKt.d;
        animationVector4.getClass();
        this.f3778i = animationVector4;
        this.f3779j = animationVector2;
        this.f3780k = animationVector4;
    }

    public static final Object a(Animatable animatable, Object obj) {
        TwoWayConverter twoWayConverter = animatable.f3772a;
        AnimationVector animationVector = animatable.f3780k;
        AnimationVector animationVector2 = animatable.f3779j;
        if (!Intrinsics.c(animationVector2, animatable.f3777h) || !Intrinsics.c(animationVector, animatable.f3778i)) {
            AnimationVector animationVector3 = (AnimationVector) twoWayConverter.getF4034a().invoke(obj);
            int f3832e = animationVector3.getF3832e();
            boolean z = false;
            for (int i2 = 0; i2 < f3832e; i2++) {
                if (animationVector3.a(i2) < animationVector2.a(i2) || animationVector3.a(i2) > animationVector.a(i2)) {
                    animationVector3.e(RangesKt.c(animationVector3.a(i2), animationVector2.a(i2), animationVector.a(i2)), i2);
                    z = true;
                }
            }
            if (z) {
                return twoWayConverter.getF4035b().invoke(animationVector3);
            }
        }
        return obj;
    }

    public static final void b(Animatable animatable) {
        AnimationState animationState = animatable.f3774c;
        animationState.d.d();
        animationState.f3819e = Long.MIN_VALUE;
        ((SnapshotMutableStateImpl) animatable.d).setValue(Boolean.FALSE);
    }

    public static Object c(Animatable animatable, Object obj, AnimationSpec animationSpec, Float f2, Function1 function1, Continuation continuation, int i2) {
        if ((i2 & 2) != 0) {
            animationSpec = animatable.g;
        }
        AnimationSpec animationSpec2 = animationSpec;
        Object objInvoke = f2;
        if ((i2 & 4) != 0) {
            objInvoke = animatable.f3772a.getF4035b().invoke(animatable.f3774c.d);
        }
        if ((i2 & 8) != 0) {
            function1 = null;
        }
        Object objD = animatable.d();
        TwoWayConverter twoWayConverter = animatable.f3772a;
        return MutatorMutex.a(animatable.f3776f, new Animatable$runAnimation$2(animatable, objInvoke, new TargetBasedAnimation((AnimationSpec<Object>) animationSpec2, (TwoWayConverter<Object, AnimationVector>) twoWayConverter, objD, obj, (AnimationVector) twoWayConverter.getF4034a().invoke(objInvoke)), animatable.f3774c.f3819e, function1, null), continuation);
    }

    public final Object d() {
        return ((SnapshotMutableStateImpl) this.f3774c.f3818c).getF10755b();
    }

    public final boolean e() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.d).getF10755b()).booleanValue();
    }

    public final Object f(Object obj, Continuation continuation) {
        Object objA = MutatorMutex.a(this.f3776f, new Animatable$snapTo$2(this, obj, null), continuation);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    public final Object g(SuspendLambda suspendLambda) {
        Object objA = MutatorMutex.a(this.f3776f, new Animatable$stop$2(this, null), suspendLambda);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    public /* synthetic */ Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, twoWayConverter, (i2 & 4) != 0 ? null : obj2, (i2 & 8) != 0 ? "Animatable" : str);
    }

    public /* synthetic */ Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, twoWayConverter, (i2 & 4) != 0 ? null : obj2);
    }

    @Deprecated
    public /* synthetic */ Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2) {
        this(obj, twoWayConverter, obj2, "Animatable");
    }
}
