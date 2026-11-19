package androidx.compose.animation.core;

import androidx.compose.animation.core.InfiniteTransition.TransitionAnimationState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import defpackage.gv;
import defpackage.r0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class InfiniteTransitionKt {
    public static final InfiniteTransition.TransitionAnimationState a(InfiniteTransition infiniteTransition, float f2, float f3, InfiniteRepeatableSpec infiniteRepeatableSpec, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return b(infiniteTransition, Float.valueOf(f2), Float.valueOf(f3), VectorConvertersKt.f4036a, infiniteRepeatableSpec, "FloatAnimation", composer, 33208);
    }

    public static final InfiniteTransition.TransitionAnimationState b(InfiniteTransition infiniteTransition, Object obj, Object obj2, TwoWayConverter twoWayConverter, InfiniteRepeatableSpec infiniteRepeatableSpec, String str, Composer composer, int i2) {
        InfiniteTransition infiniteTransition2;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            infiniteTransition2 = infiniteTransition;
            objX = infiniteTransition2.new TransitionAnimationState(obj, obj2, twoWayConverter, infiniteRepeatableSpec, str);
            composer.q(objX);
        } else {
            infiniteTransition2 = infiniteTransition;
        }
        InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) objX;
        boolean z = true;
        boolean z2 = ((((i2 & 112) ^ 48) > 32 && composer.y(obj)) || (i2 & 48) == 32) | ((((i2 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && composer.y(obj2)) || (i2 & KyberEngine.KyberPolyBytes) == 256);
        if ((((57344 & i2) ^ 24576) <= 16384 || !composer.y(infiniteRepeatableSpec)) && (i2 & 24576) != 16384) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objX2 = composer.x();
        if (z3 || objX2 == composer$Companion$Empty$1) {
            r0 r0Var = new r0(obj, transitionAnimationState, obj2, infiniteRepeatableSpec, 14);
            composer.q(r0Var);
            objX2 = r0Var;
        }
        EffectsKt.i((Function0) objX2, composer);
        boolean zY = composer.y(infiniteTransition2);
        Object objX3 = composer.x();
        if (zY || objX3 == composer$Companion$Empty$1) {
            objX3 = new gv(infiniteTransition2, transitionAnimationState, 25);
            composer.q(objX3);
        }
        EffectsKt.c(transitionAnimationState, (Function1) objX3, composer);
        return transitionAnimationState;
    }

    public static final InfiniteTransition c(int i2, Composer composer, String str) {
        if ((i2 & 1) != 0) {
            str = "InfiniteTransition";
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            objX = new InfiniteTransition(str);
            composer.q(objX);
        }
        InfiniteTransition infiniteTransition = (InfiniteTransition) objX;
        infiniteTransition.a(composer, 0);
        return infiniteTransition;
    }
}
