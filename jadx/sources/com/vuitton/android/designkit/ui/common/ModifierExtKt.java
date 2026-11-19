package com.vuitton.android.designkit.ui.common;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.ba0;
import defpackage.hd0;
import defpackage.lt;
import defpackage.na;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "enableAgain", "", "scale", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ModifierExtKt {
    public static final Modifier a(DTFunctionNameModifier dTFunctionNameModifier, final Function0 function0, Composer composer, int i2) {
        Object objA;
        Modifier modifierO = dTFunctionNameModifier.o(new DTFunctionNameModifier("bounceOnPress"));
        function0.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (objX == obj) {
            objX = SnapshotStateKt.g(BounceState.Released);
            composer.q(objX);
        }
        final MutableState mutableState = (MutableState) objX;
        final Transition transitionF = TransitionKt.f(mutableState.getF10755b(), "Bounce Animation", composer, 48);
        TransitionState transitionState = transitionF.f3988a;
        TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
        if (transitionF.i()) {
            composer.L(1666827533);
            composer.F();
            objA = transitionState.a();
        } else {
            composer.L(1666573488);
            boolean zK = composer.K(transitionF);
            objA = composer.x();
            if (zK || objA == obj) {
                Snapshot.f8462e.getClass();
                Snapshot snapshotA = Snapshot.Companion.a();
                Function1 f8547i = snapshotA != null ? snapshotA.getF8461f() : null;
                Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                try {
                    Object objA2 = transitionState.a();
                    Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                    composer.q(objA2);
                    objA = objA2;
                } catch (Throwable th) {
                    Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                    throw th;
                }
            }
            composer.F();
        }
        BounceState bounceState = (BounceState) objA;
        composer.L(837904477);
        BounceState bounceState2 = BounceState.Pressed;
        float f2 = bounceState == bounceState2 ? 0.95f : 1.0f;
        composer.F();
        Float fValueOf = Float.valueOf(f2);
        boolean zK2 = composer.K(transitionF);
        Object objX2 = composer.x();
        if (zK2 || objX2 == obj) {
            objX2 = SnapshotStateKt.e(new Function0<BounceState>() { // from class: com.vuitton.android.designkit.ui.common.ModifierExtKt$bounceOnPress$$inlined$animateFloat$1
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return ((SnapshotMutableStateImpl) transitionF.d).getF10755b();
                }
            });
            composer.q(objX2);
        }
        BounceState bounceState3 = (BounceState) ((State) objX2).getF10755b();
        composer.L(837904477);
        float f3 = bounceState3 == bounceState2 ? 0.95f : 1.0f;
        composer.F();
        Float fValueOf2 = Float.valueOf(f3);
        boolean zK3 = composer.K(transitionF);
        Object objX3 = composer.x();
        if (zK3 || objX3 == obj) {
            objX3 = SnapshotStateKt.e(new Function0<Transition.Segment<BounceState>>() { // from class: com.vuitton.android.designkit.ui.common.ModifierExtKt$bounceOnPress$$inlined$animateFloat$2
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return transitionF.f();
                }
            });
            composer.q(objX3);
        }
        ((Transition.Segment) ((State) objX3).getF10755b()).getClass();
        composer.L(350523139);
        SpringSpec springSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 200.0f, 5, null);
        composer.F();
        Transition.TransitionAnimationState transitionAnimationStateD = TransitionKt.d(transitionF, fValueOf, fValueOf2, springSpecB, twoWayConverter, "bounce effect", composer, ImageMetadata.EDGE_MODE);
        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("bounceOnPress");
        Unit unit = Unit.f71739a;
        boolean z = (((i2 & 112) ^ 48) > 32 && composer.K(function0)) || (i2 & 48) == 32;
        Object objX4 = composer.x();
        if (z || objX4 == obj) {
            objX4 = new PointerInputEventHandler() { // from class: com.vuitton.android.designkit.ui.common.ModifierExtKt$bounceOnPress$1$1

                /* JADX INFO: renamed from: com.vuitton.android.designkit.ui.common.ModifierExtKt$bounceOnPress$1$1$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.designkit.ui.common.ModifierExtKt$bounceOnPress$1$1$1", f = "ModifierExt.kt", l = {159, 162}, m = "invokeSuspend", v = 2)
                final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f48311c;
                    public /* synthetic */ Object d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ MutableState f48312e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ Function0 f48313f;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(MutableState mutableState, Continuation continuation, Function0 function0) {
                        super(2, continuation);
                        this.f48312e = mutableState;
                        this.f48313f = function0;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48312e, continuation, this.f48313f);
                        anonymousClass1.d = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
                    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
                    
                        if (r8 == r1) goto L16;
                     */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0041 -> B:17:0x0044). Please report as a decompilation issue!!! */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
                        /*
                            r7 = this;
                            java.lang.Object r0 = r7.d
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r0 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r0
                            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                            int r2 = r7.f48311c
                            r3 = 0
                            androidx.compose.runtime.MutableState r4 = r7.f48312e
                            r5 = 2
                            r6 = 1
                            if (r2 == 0) goto L21
                            if (r2 == r6) goto L1d
                            if (r2 != r5) goto L17
                            kotlin.ResultKt.b(r8)
                            goto L44
                        L17:
                            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                            defpackage.md.k(r7)
                            return r3
                        L1d:
                            kotlin.ResultKt.b(r8)
                            goto L30
                        L21:
                            kotlin.ResultKt.b(r8)
                        L24:
                            r7.d = r0
                            r7.f48311c = r6
                            r8 = 3
                            java.lang.Object r8 = androidx.compose.foundation.gestures.TapGestureDetectorKt.b(r0, r3, r7, r8)
                            if (r8 != r1) goto L30
                            goto L43
                        L30:
                            com.vuitton.android.designkit.ui.common.BounceState r8 = com.vuitton.android.designkit.ui.common.BounceState.Pressed
                            r4.setValue(r8)
                            r7.d = r0
                            r7.f48311c = r5
                            kotlin.jvm.functions.Function3 r8 = androidx.compose.foundation.gestures.TapGestureDetectorKt.f4734a
                            androidx.compose.ui.input.pointer.PointerEventPass r8 = androidx.compose.ui.input.pointer.PointerEventPass.Main
                            java.lang.Object r8 = androidx.compose.foundation.gestures.TapGestureDetectorKt.j(r0, r8, r7)
                            if (r8 != r1) goto L44
                        L43:
                            return r1
                        L44:
                            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
                            com.vuitton.android.designkit.ui.common.BounceState r2 = com.vuitton.android.designkit.ui.common.BounceState.Released
                            r4.setValue(r2)
                            if (r8 == 0) goto L24
                            kotlin.jvm.functions.Function0 r8 = r7.f48313f
                            r8.mo47invoke()
                            goto L24
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.designkit.ui.common.ModifierExtKt$bounceOnPress$1$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    Object objC0 = pointerInputScope.c0(new AnonymousClass1(mutableState, null, function0), continuation);
                    return objC0 == CoroutineSingletons.COROUTINE_SUSPENDED ? objC0 : Unit.f71739a;
                }
            };
            composer.q(objX4);
        }
        Modifier modifierA = SuspendingPointerInputFilterKt.a(dTFunctionNameModifier2, unit, (PointerInputEventHandler) objX4);
        float fFloatValue = ((Number) transitionAnimationStateD.getF10755b()).floatValue();
        return modifierO.o(ScaleKt.a(modifierA, fFloatValue, fFloatValue));
    }

    public static Modifier b(Modifier modifier, String str, Function1 function1, int i2) {
        if ((i2 & 1) != 0) {
            str = "";
        }
        if ((i2 & 4) != 0) {
            function1 = new ba0(11);
        }
        modifier.getClass();
        function1.getClass();
        return modifier.o(SemanticsModifierKt.a(Modifier.Companion.f8607b, new hd0(0, str, function1)));
    }

    public static Modifier c(Modifier modifier, boolean z, MutableInteractionSource mutableInteractionSource, String str, final Function0 function0, int i2) {
        if ((i2 & 1) != 0) {
            z = true;
        }
        final boolean z2 = z;
        final DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = (i2 & 4) != 0 ? IndicationKt.f4231a : null;
        if ((i2 & 8) != 0) {
            mutableInteractionSource = InteractionSourceKt.a();
        }
        final MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
        final String str2 = (i2 & 16) != 0 ? null : str;
        modifier.getClass();
        mutableInteractionSource2.getClass();
        function0.getClass();
        return ComposedModifierKt.a(modifier, new y2(function0, 22), new Function3() { // from class: com.vuitton.android.designkit.ui.common.c
            @Override // kotlin.jvm.functions.Function3
            public final Object A(Object obj, Object obj2, Object obj3) {
                Modifier modifierE = (Modifier) obj;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                if (modifierE != null) {
                    modifierE = defpackage.a.e(modifierE, "clickableOnce$lambda$1");
                }
                Modifier modifier2 = modifierE;
                modifier2.getClass();
                composer.L(-2119306462);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Object objX = composer.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.TRUE);
                    composer.q(objX);
                }
                MutableState mutableState = (MutableState) objX;
                Boolean bool = (Boolean) mutableState.getF10755b();
                bool.booleanValue();
                boolean zE = composer.e(1000L);
                Object objX2 = composer.x();
                Indication indication = null;
                if (zE || objX2 == composer$Companion$Empty$1) {
                    objX2 = new ModifierExtKt$clickableOnce$2$1$1(mutableState, null);
                    composer.q(objX2);
                }
                EffectsKt.e(composer, bool, (Function2) objX2);
                ProvidableCompositionLocal providableCompositionLocal = dynamicProvidableCompositionLocal;
                if (providableCompositionLocal == null) {
                    composer.L(-239221736);
                } else {
                    composer.L(-839000823);
                    indication = (Indication) composer.k(providableCompositionLocal);
                }
                composer.F();
                Indication indication2 = indication;
                Function0 function1 = function0;
                boolean zK = composer.K(function1);
                Object objX3 = composer.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    objX3 = new na(function1, mutableState, 8);
                    composer.q(objX3);
                }
                Modifier modifierB = ClickableKt.b(modifier2, mutableInteractionSource2, indication2, z2, str2, null, (Function0) objX3, 16);
                composer.F();
                return modifierB;
            }
        });
    }

    public static final Modifier d(Modifier modifier, MutableInteractionSource mutableInteractionSource, final Function0 function0, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "forceKeyboardFocusForAccessibility");
        }
        modifier.getClass();
        mutableInteractionSource.getClass();
        function0.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z = true;
        Modifier modifierA = IndicationKt.a(FocusableKt.c(modifier, mutableInteractionSource, 1), mutableInteractionSource, (Indication) composer.k(IndicationKt.f4231a));
        if ((((i2 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 || !composer.K(function0)) && (i2 & KyberEngine.KyberPolyBytes) != 256) {
            z = false;
        }
        Object objX = composer.x();
        if (z || objX == Composer.Companion.f7939a) {
            objX = new Function1<KeyEvent, Boolean>() { // from class: com.vuitton.android.designkit.ui.common.ModifierExtKt$forceKeyboardFocusForAccessibility$1$1
                /* JADX WARN: Code duplicated, block: B:9:0x0040  */
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean z2;
                    android.view.KeyEvent keyEvent = ((KeyEvent) obj).f9235a;
                    keyEvent.getClass();
                    int iB = KeyEvent_androidKt.b(keyEvent);
                    KeyEventType.f9236a.getClass();
                    if (iB == KeyEventType.f9237b) {
                        long jA = Key_androidKt.a(keyEvent.getKeyCode());
                        Key.f9226a.getClass();
                        if (Key.a(jA, Key.s) || Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.r)) {
                            function0.mo47invoke();
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    return Boolean.valueOf(z2);
                }
            };
            composer.q(objX);
        }
        return KeyInputModifierKt.a(modifierA, (Function1) objX);
    }

    public static Modifier e(Modifier modifier, String str) {
        modifier.getClass();
        str.getClass();
        return modifier.o(SemanticsModifierKt.b(Modifier.Companion.f8607b, false, new lt(str, 23)));
    }
}
