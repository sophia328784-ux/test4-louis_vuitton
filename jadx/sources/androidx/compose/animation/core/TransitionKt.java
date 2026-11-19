package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.b3;
import defpackage.d21;
import defpackage.m21;
import defpackage.v41;
import defpackage.z21;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TransitionKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z21 f4016a = new z21(29);

    public static final void a(Transition transition, Transition.TransitionAnimationState transitionAnimationState, Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(867041821);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(transition) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(transitionAnimationState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposerH.K(obj) : gapComposerH.y(obj) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= (i2 & 4096) == 0 ? gapComposerH.K(obj2) : gapComposerH.y(obj2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= (32768 & i2) == 0 ? gapComposerH.K(finiteAnimationSpec) : gapComposerH.y(finiteAnimationSpec) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (transition.i()) {
                transitionAnimationState.x(obj, obj2, finiteAnimationSpec);
            } else {
                transitionAnimationState.E(obj2, finiteAnimationSpec);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(transition, transitionAnimationState, obj, obj2, finiteAnimationSpec, i2, 22);
        }
    }

    public static final Transition b(Transition transition, Object obj, Object obj2, String str, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int i3 = (i2 & 14) ^ 6;
        boolean z = true;
        boolean z2 = (i3 > 4 && composer.K(transition)) || (i2 & 6) == 4;
        Object objX = composer.x();
        Object obj3 = Composer.Companion.f7939a;
        if (z2 || objX == obj3) {
            objX = new Transition(new MutableTransitionState(obj), transition, d21.p(new StringBuilder(), transition.f3990c, " > ", str));
            composer.q(objX);
        }
        Transition transition2 = (Transition) objX;
        if ((i3 <= 4 || !composer.K(transition)) && (i2 & 6) != 4) {
            z = false;
        }
        boolean zK = composer.K(transition2) | z;
        Object objX2 = composer.x();
        if (zK || objX2 == obj3) {
            objX2 = new m21(transition, transition2, 15);
            composer.q(objX2);
        }
        EffectsKt.c(transition2, (Function1) objX2, composer);
        if (transition.i()) {
            transition2.m(obj, obj2);
            return transition2;
        }
        transition2.r(obj2);
        ((SnapshotMutableStateImpl) transition2.f3996k).setValue(Boolean.FALSE);
        return transition2;
    }

    public static final Transition.DeferredAnimation c(Transition transition, TwoWayConverter twoWayConverter, String str, Composer composer, int i2, int i3) {
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData;
        if ((i3 & 2) != 0) {
            str = "DeferredAnimation";
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(transition);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zK || objX == obj) {
            objX = new Transition.DeferredAnimation(twoWayConverter, str);
            composer.q(objX);
        }
        Transition.DeferredAnimation deferredAnimation = (Transition.DeferredAnimation) objX;
        boolean zK2 = composer.K(transition) | composer.y(deferredAnimation);
        Object objX2 = composer.x();
        if (zK2 || objX2 == obj) {
            objX2 = new m21(transition, deferredAnimation, 16);
            composer.q(objX2);
        }
        EffectsKt.c(deferredAnimation, (Function1) objX2, composer);
        if (transition.i() && (deferredAnimationData = (Transition.DeferredAnimation.DeferredAnimationData) ((SnapshotMutableStateImpl) deferredAnimation.f3999c).getF10755b()) != null) {
            Transition transition2 = Transition.this;
            deferredAnimationData.f4000b.x(deferredAnimationData.d.invoke(transition2.f().getF4003a()), deferredAnimationData.d.invoke(transition2.f().getF4004b()), (FiniteAnimationSpec) deferredAnimationData.f4001c.invoke(transition2.f()));
        }
        return deferredAnimation;
    }

    public static final Transition.TransitionAnimationState d(Transition transition, Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec, TwoWayConverter twoWayConverter, String str, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(transition);
        Object objX = composer.x();
        Object obj3 = Composer.Companion.f7939a;
        if (zK || objX == obj3) {
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 f8547i = snapshotA != null ? snapshotA.getF8461f() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            try {
                AnimationVector animationVector = (AnimationVector) twoWayConverter.getF4034a().invoke(obj2);
                animationVector.d();
                Object transitionAnimationState = new Transition.TransitionAnimationState(obj, animationVector, twoWayConverter, str);
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                composer.q(transitionAnimationState);
                objX = transitionAnimationState;
            } catch (Throwable th) {
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                throw th;
            }
        }
        Transition.TransitionAnimationState transitionAnimationState2 = (Transition.TransitionAnimationState) objX;
        a(transition, transitionAnimationState2, obj, obj2, finiteAnimationSpec, composer, 0);
        boolean zK2 = composer.K(transition) | composer.K(transitionAnimationState2);
        Object objX2 = composer.x();
        if (zK2 || objX2 == obj3) {
            objX2 = new m21(transition, transitionAnimationState2, 18);
            composer.q(objX2);
        }
        EffectsKt.c(transitionAnimationState2, (Function1) objX2, composer);
        return transitionAnimationState2;
    }

    public static final Transition e(TransitionState transitionState, String str, Composer composer, int i2, int i3) {
        if ((i3 & 2) != 0) {
            str = null;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int i4 = (i2 & 14) ^ 6;
        boolean z = (i4 > 4 && composer.K(transitionState)) || (i2 & 6) == 4;
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (z || objX == obj) {
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 f8547i = snapshotA != null ? snapshotA.getF8461f() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            try {
                Object transition = new Transition(transitionState, str);
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                composer.q(transition);
                objX = transition;
            } catch (Throwable th) {
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                throw th;
            }
        }
        Transition transition2 = (Transition) objX;
        if (transitionState instanceof SeekableTransitionState) {
            composer.L(-1357590553);
            Object objX2 = composer.x();
            if (objX2 == obj) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, composer);
                composer.q(objX2);
            }
            Object obj2 = (CoroutineScope) objX2;
            boolean zY = composer.y(obj2) | ((i4 > 4 && composer.K(transitionState)) || (i2 & 6) == 4);
            Object objX3 = composer.x();
            if (zY || objX3 == obj) {
                objX3 = new m21(transitionState, obj2, 17);
                composer.q(objX3);
            }
            EffectsKt.c(obj2, (Function1) objX3, composer);
            SeekableTransitionState seekableTransitionState = (SeekableTransitionState) transitionState;
            Object f10755b = ((SnapshotMutableStateImpl) seekableTransitionState.f3922c).getF10755b();
            Object f10755b2 = ((SnapshotMutableStateImpl) seekableTransitionState.f3921b).getF10755b();
            boolean z2 = (i4 > 4 && composer.K(transitionState)) || (i2 & 6) == 4;
            Object objX4 = composer.x();
            if (z2 || objX4 == obj) {
                objX4 = new TransitionKt$rememberTransition$2$1(transitionState, null);
                composer.q(objX4);
            }
            EffectsKt.g(f10755b, f10755b2, (Function2) objX4, composer);
            composer.F();
        } else {
            composer.L(-1356604288);
            transition2.a(transitionState.b(), composer, 0);
            composer.F();
        }
        boolean zK = composer.K(transition2);
        Object objX5 = composer.x();
        if (zK || objX5 == obj) {
            objX5 = new v41(transition2, 1);
            composer.q(objX5);
        }
        EffectsKt.c(transition2, (Function1) objX5, composer);
        return transition2;
    }

    public static final Transition f(Object obj, String str, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            objX = new Transition(obj, str);
            composer.q(objX);
        }
        Transition transition = (Transition) objX;
        transition.a(obj, composer, (i2 & 8) | 48 | (i2 & 14));
        Object objX2 = composer.x();
        if (objX2 == composer$Companion$Empty$1) {
            objX2 = new v41(transition, 0);
            composer.q(objX2);
        }
        EffectsKt.c(transition, (Function1) objX2, composer);
        return transition;
    }
}
