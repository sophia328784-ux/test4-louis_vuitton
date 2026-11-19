package com.vuitton.android.designkit.components;

import android.graphics.BlurMaskFilter;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.a;
import defpackage.ba0;
import defpackage.td;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "scale", "components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ModifierExtKt {
    public static final Modifier a(DTFunctionNameModifier dTFunctionNameModifier, final Function0 function0, Composer composer) {
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
                Function1 f8454f = snapshotA != null ? snapshotA.getF8461f() : null;
                Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                try {
                    Object objA2 = transitionState.a();
                    Snapshot.Companion.e(snapshotA, snapshotB, f8454f);
                    composer.q(objA2);
                    objA = objA2;
                } catch (Throwable th) {
                    Snapshot.Companion.e(snapshotA, snapshotB, f8454f);
                    throw th;
                }
            }
            composer.F();
        }
        BounceState bounceState = (BounceState) objA;
        composer.L(-791482628);
        BounceState bounceState2 = BounceState.Pressed;
        float f2 = bounceState == bounceState2 ? 0.95f : 1.0f;
        composer.F();
        Float fValueOf = Float.valueOf(f2);
        boolean zK2 = composer.K(transitionF);
        Object objX2 = composer.x();
        if (zK2 || objX2 == obj) {
            objX2 = SnapshotStateKt.e(new Function0<BounceState>() { // from class: com.vuitton.android.designkit.components.ModifierExtKt$bounceOnPress$$inlined$animateFloat$1
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return ((SnapshotMutableStateImpl) transitionF.d).getF10755b();
                }
            });
            composer.q(objX2);
        }
        BounceState bounceState3 = (BounceState) ((State) objX2).getF10755b();
        composer.L(-791482628);
        float f3 = bounceState3 == bounceState2 ? 0.95f : 1.0f;
        composer.F();
        Float fValueOf2 = Float.valueOf(f3);
        boolean zK3 = composer.K(transitionF);
        Object objX3 = composer.x();
        if (zK3 || objX3 == obj) {
            objX3 = SnapshotStateKt.e(new Function0<Transition.Segment<BounceState>>() { // from class: com.vuitton.android.designkit.components.ModifierExtKt$bounceOnPress$$inlined$animateFloat$2
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return transitionF.f();
                }
            });
            composer.q(objX3);
        }
        ((Transition.Segment) ((State) objX3).getF10755b()).getClass();
        composer.L(1279565078);
        SpringSpec springSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 200.0f, 5, null);
        composer.F();
        Transition.TransitionAnimationState transitionAnimationStateD = TransitionKt.d(transitionF, fValueOf, fValueOf2, springSpecB, twoWayConverter, "", composer, ImageMetadata.EDGE_MODE);
        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("bounceOnPress");
        Unit unit = Unit.f71739a;
        boolean zK4 = composer.K(function0);
        Object objX4 = composer.x();
        if (zK4 || objX4 == obj) {
            objX4 = new PointerInputEventHandler() { // from class: com.vuitton.android.designkit.components.ModifierExtKt$bounceOnPress$1$1

                /* JADX INFO: renamed from: com.vuitton.android.designkit.components.ModifierExtKt$bounceOnPress$1$1$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.designkit.components.ModifierExtKt$bounceOnPress$1$1$1", f = "ModifierExt.kt", l = {298, 301}, m = "invokeSuspend", v = 2)
                final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f48234c;
                    public /* synthetic */ Object d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ MutableState f48235e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ Function0 f48236f;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(MutableState mutableState, Continuation continuation, Function0 function0) {
                        super(2, continuation);
                        this.f48235e = mutableState;
                        this.f48236f = function0;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48235e, continuation, this.f48236f);
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
                            int r2 = r7.f48234c
                            r3 = 0
                            androidx.compose.runtime.MutableState r4 = r7.f48235e
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
                            r7.f48234c = r6
                            r8 = 3
                            java.lang.Object r8 = androidx.compose.foundation.gestures.TapGestureDetectorKt.b(r0, r3, r7, r8)
                            if (r8 != r1) goto L30
                            goto L43
                        L30:
                            com.vuitton.android.designkit.components.BounceState r8 = com.vuitton.android.designkit.components.BounceState.Pressed
                            r4.setValue(r8)
                            r7.d = r0
                            r7.f48234c = r5
                            kotlin.jvm.functions.Function3 r8 = androidx.compose.foundation.gestures.TapGestureDetectorKt.f4734a
                            androidx.compose.ui.input.pointer.PointerEventPass r8 = androidx.compose.ui.input.pointer.PointerEventPass.Main
                            java.lang.Object r8 = androidx.compose.foundation.gestures.TapGestureDetectorKt.j(r0, r8, r7)
                            if (r8 != r1) goto L44
                        L43:
                            return r1
                        L44:
                            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
                            com.vuitton.android.designkit.components.BounceState r2 = com.vuitton.android.designkit.components.BounceState.Released
                            r4.setValue(r2)
                            if (r8 == 0) goto L24
                            kotlin.jvm.functions.Function0 r8 = r7.f48236f
                            r8.mo47invoke()
                            goto L24
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.designkit.components.ModifierExtKt$bounceOnPress$1$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
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

    public static final Modifier b(Modifier modifier, boolean z, Function2 function2, Composer composer, int i2) {
        Modifier dTFunctionNameModifier;
        if (modifier != null) {
            modifier = a.e(modifier, "conditional");
        }
        modifier.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (z) {
            composer.L(1085424242);
            dTFunctionNameModifier = (Modifier) function2.invoke(composer, Integer.valueOf((i2 >> 6) & 14));
            composer.F();
        } else {
            composer.L(1085454002);
            composer.F();
            dTFunctionNameModifier = new DTFunctionNameModifier("conditional");
        }
        return modifier.o(dTFunctionNameModifier);
    }

    public static Modifier c(Modifier modifier, final Dp dp, final Dp dp2, Dp dp3, Dp dp4, Dp dp5, Dp dp6, Dp dp7, Dp dp8, boolean z, int i2) {
        if ((i2 & 1) != 0) {
            dp = null;
        }
        if ((i2 & 2) != 0) {
            dp2 = null;
        }
        if ((i2 & 4) != 0) {
            dp3 = null;
        }
        if ((i2 & 8) != 0) {
            dp4 = null;
        }
        if ((i2 & 16) != 0) {
            dp5 = null;
        }
        if ((i2 & 32) != 0) {
            dp6 = null;
        }
        if ((i2 & 64) != 0) {
            dp7 = null;
        }
        if ((i2 & 128) != 0) {
            dp8 = null;
        }
        if ((i2 & 256) != 0) {
            z = false;
        }
        modifier.getClass();
        final Dp dp9 = dp4;
        final Dp dp10 = dp3;
        final boolean z2 = z;
        final Dp dp11 = dp8;
        final Dp dp12 = dp7;
        final Dp dp13 = dp6;
        final Dp dp14 = dp5;
        return DrawModifierKt.d(GraphicsLayerModifierKt.a(modifier, new ba0(12)), new Function1() { // from class: id0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Dp dp15;
                Dp dp16;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.getClass();
                Color.f8866b.getClass();
                long j2 = Color.f8867c;
                Color color = new Color(j2);
                long j3 = Color.f8870h;
                List listP = CollectionsKt.P(color, new Color(j3));
                List listP2 = CollectionsKt.P(new Color(j3), new Color(j2));
                contentDrawScope.R1();
                Dp dp17 = dp;
                boolean z3 = z2;
                if (dp17 != null) {
                    float f2 = dp17.f11006b;
                    Dp dp18 = dp2;
                    if (dp18 != null) {
                        float f3 = dp18.f11006b;
                        LinearGradient linearGradientA = Brush.Companion.a(Brush.f8862a, listP2, z3 ? Float.intBitsToFloat((int) (contentDrawScope.b() >> 32)) - contentDrawScope.u1(f2) : contentDrawScope.u1(f2), z3 ? Float.intBitsToFloat((int) (contentDrawScope.b() >> 32)) - contentDrawScope.u1(f3) : contentDrawScope.u1(f3), 8);
                        BlendMode.f8847a.getClass();
                        DrawScope.q1(contentDrawScope, linearGradientA, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, BlendMode.g, 62);
                    }
                }
                Dp dp19 = dp10;
                if (dp19 != null && (dp16 = dp9) != null) {
                    LinearGradient linearGradientB = Brush.Companion.b(Brush.f8862a, listP2, contentDrawScope.u1(dp19.f11006b), contentDrawScope.u1(dp16.f11006b), 8);
                    BlendMode.f8847a.getClass();
                    DrawScope.q1(contentDrawScope, linearGradientB, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, BlendMode.g, 62);
                }
                Dp dp20 = dp14;
                if (dp20 != null) {
                    float f4 = dp20.f11006b;
                    Dp dp21 = dp13;
                    if (dp21 != null) {
                        float f5 = dp21.f11006b;
                        LinearGradient linearGradientA2 = Brush.Companion.a(Brush.f8862a, listP, z3 ? contentDrawScope.u1(f4) : Float.intBitsToFloat((int) (contentDrawScope.b() >> 32)) - contentDrawScope.u1(f4), z3 ? contentDrawScope.u1(f5) : Float.intBitsToFloat((int) (contentDrawScope.b() >> 32)) - contentDrawScope.u1(f5), 8);
                        BlendMode.f8847a.getClass();
                        DrawScope.q1(contentDrawScope, linearGradientA2, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, BlendMode.g, 62);
                    }
                }
                Dp dp22 = dp12;
                if (dp22 != null && (dp15 = dp11) != null) {
                    LinearGradient linearGradientB2 = Brush.Companion.b(Brush.f8862a, listP, Float.intBitsToFloat((int) (contentDrawScope.b() & BodyPartID.bodyIdMax)) - contentDrawScope.u1(dp22.f11006b), Float.intBitsToFloat((int) (contentDrawScope.b() & BodyPartID.bodyIdMax)) - contentDrawScope.u1(dp15.f11006b), 8);
                    BlendMode.f8847a.getClass();
                    DrawScope.q1(contentDrawScope, linearGradientB2, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, BlendMode.g, 62);
                }
                return Unit.f71739a;
            }
        });
    }

    public static final Modifier d(Modifier modifier, float f2) {
        modifier.getClass();
        return SizeKt.d(LayoutModifierKt.a(modifier, new td(f2, 2)), 1.0f);
    }

    public static Modifier e(float f2, final float f3, final float f4, int i2, final long j2, Modifier modifier) {
        Dp.Companion companion = Dp.f11004c;
        if ((i2 & 4) != 0) {
            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        final float f5 = f2;
        modifier.getClass();
        return ComposedModifierKt.a(modifier, InspectableValueKt.f10100a, new Function3() { // from class: gd0
            @Override // kotlin.jvm.functions.Function3
            public final Object A(Object obj, Object obj2, Object obj3) {
                Modifier modifierE = (Modifier) obj;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "shadowCustom_QgBizOU$lambda$0");
                }
                modifierE.getClass();
                composer.L(-1480779703);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Object objX = composer.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new AndroidPaint();
                    composer.q(objX);
                }
                final Paint paint = (Paint) objX;
                Density density = (Density) composer.k(CompositionLocalsKt.f10031h);
                final float f6 = f3;
                float fU1 = density.u1(f6);
                Object objX2 = composer.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new BlurMaskFilter(fU1, BlurMaskFilter.Blur.NORMAL);
                    composer.q(objX2);
                }
                final BlurMaskFilter blurMaskFilter = (BlurMaskFilter) objX2;
                boolean zY = composer.y(paint) | composer.c(f6) | composer.y(blurMaskFilter);
                final long j3 = j2;
                boolean zE = zY | composer.e(j3) | composer.c(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                final float f7 = f5;
                boolean zC = zE | composer.c(f7);
                final float f8 = f4;
                boolean zC2 = composer.c(f8) | zC;
                Object objX3 = composer.x();
                if (zC2 || objX3 == composer$Companion$Empty$1) {
                    Function1 function1 = new Function1() { // from class: fd0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            DrawScope drawScope = (DrawScope) obj4;
                            drawScope.getClass();
                            Canvas canvasA = drawScope.getF8996c().a();
                            Paint paint2 = paint;
                            android.graphics.Paint f8835a = paint2.getF8835a();
                            if (!Dp.b(f6, Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                                f8835a.setMaskFilter(blurMaskFilter);
                            }
                            f8835a.setColor(ColorKt.i(j3));
                            float fU2 = drawScope.u1(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            float fU3 = drawScope.u1(f7);
                            float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.b() >> 32)) + fU2;
                            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)) + fU3;
                            float f9 = f8;
                            if (Dp.a(f9, Call.Parameters.DEFAULT_CAMERA_ZOOM) > 0) {
                                float fU4 = drawScope.u1(f9);
                                canvasA.v(fU2, fU3, fIntBitsToFloat, fIntBitsToFloat2, fU4, fU4, paint2);
                            } else {
                                canvasA.c(fU2, fU3, fIntBitsToFloat, fIntBitsToFloat2, paint2);
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer.q(function1);
                    objX3 = function1;
                }
                Modifier modifierB = DrawModifierKt.b(modifierE, (Function1) objX3);
                composer.F();
                return modifierB;
            }
        });
    }

    public static final Modifier f(Modifier modifier, String str) {
        modifier.getClass();
        return str != null ? com.vuitton.android.designkit.ui.common.ModifierExtKt.e(modifier, str) : modifier;
    }
}
