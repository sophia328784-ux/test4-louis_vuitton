package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.material3.tokens.CircularProgressIndicatorTokens;
import androidx.compose.material3.tokens.LinearProgressIndicatorTokens;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.sightcall.uvc.Camera;
import defpackage.bo0;
import defpackage.ee0;
import defpackage.fs;
import defpackage.yn0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ProgressIndicatorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7154c;
    public static final CubicBezierEasing d;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7152a = 240.0f;
        float f2 = LinearProgressIndicatorTokens.f7796a;
        f7153b = LinearProgressIndicatorTokens.f7796a;
        float f3 = CircularProgressIndicatorTokens.f7747a;
        f7154c = CircularProgressIndicatorTokens.f7747a;
        CubicBezierEasing cubicBezierEasing = MotionTokens.f7811a;
        d = MotionTokens.f7813c;
    }

    public static final void a(Modifier modifier, final long j2, final float f2, long j3, int i2, float f3, Composer composer, final int i3) {
        int i4;
        final long j4;
        final int i5;
        final float f4;
        long j5;
        int i6;
        int i7;
        float f5;
        Object obj;
        final long j6;
        final int i8;
        final float f6;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CircularProgressIndicator-4lLiAd8");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(333154241);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.e(j2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.c(f2) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= 1024;
        }
        int i9 = i4 | 221184;
        if (gapComposerH.p(i9 & 1, (74899 & i9) != 74898)) {
            gapComposerH.y0();
            if ((i3 & 1) == 0 || gapComposerH.h0()) {
                int i10 = ProgressIndicatorDefaults.f7149a;
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Color.f8866b.getClass();
                j5 = Color.f8870h;
                i6 = i9 & (-7169);
                i7 = ProgressIndicatorDefaults.f7150b;
                f5 = ProgressIndicatorDefaults.f7151c;
            } else {
                gapComposerH.D();
                i6 = i9 & (-7169);
                j5 = j3;
                i7 = i2;
                f5 = f3;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int i11 = i7;
            final Stroke stroke = new Stroke(((Density) gapComposerH.k(CompositionLocalsKt.f10031h)).u1(f2), Call.Parameters.DEFAULT_CAMERA_ZOOM, i11, 0, null, 26, null);
            InfiniteTransition infiniteTransitionC = InfiniteTransitionKt.c(1, gapComposerH, null);
            float f7 = f5;
            final InfiniteTransition.TransitionAnimationState transitionAnimationStateA = InfiniteTransitionKt.a(infiniteTransitionC, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1080.0f, AnimationSpecKt.a(AnimationSpecKt.c(6000, 0, EasingKt.d, 2), null, 0L, 6), gapComposerH);
            yn0 yn0Var = new yn0(12);
            KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig = new KeyframesSpec.KeyframesSpecConfig();
            yn0Var.invoke(keyframesSpecConfig);
            final InfiniteTransition.TransitionAnimationState transitionAnimationStateA2 = InfiniteTransitionKt.a(infiniteTransitionC, Call.Parameters.DEFAULT_CAMERA_ZOOM, 360.0f, AnimationSpecKt.a(new KeyframesSpec(keyframesSpecConfig), null, 0L, 6), gapComposerH);
            KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig2 = new KeyframesSpec.KeyframesSpecConfig();
            keyframesSpecConfig2.f3899a = 6000;
            keyframesSpecConfig2.a(HarvestConfiguration.SLOW_START_THRESHOLD, Float.valueOf(0.87f)).f3896b = d;
            keyframesSpecConfig2.a(6000, Float.valueOf(0.1f));
            final InfiniteTransition.TransitionAnimationState transitionAnimationStateA3 = InfiniteTransitionKt.a(infiniteTransitionC, 0.1f, 0.87f, AnimationSpecKt.a(new KeyframesSpec(keyframesSpecConfig2), null, 0L, 6), gapComposerH);
            Modifier modifierO = SizeKt.o(SemanticsModifierKt.b(modifier2, true, new yn0(13)), f7154c);
            boolean zK = gapComposerH.K(transitionAnimationStateA3) | ((57344 & i6) == 16384) | ((458752 & i6) == 131072) | ((i6 & 896) == 256) | gapComposerH.K(transitionAnimationStateA) | gapComposerH.K(transitionAnimationStateA2) | gapComposerH.e(j5) | gapComposerH.y(stroke) | ((((i6 & 112) ^ 48) > 32 && gapComposerH.e(j2)) || (i6 & 48) == 32);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                j6 = j5;
                i8 = i11;
                f6 = f7;
                obj = new Function1() { // from class: jq0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        long j7 = j6;
                        Stroke stroke2 = stroke;
                        long j8 = j2;
                        DrawScope drawScope = (DrawScope) obj2;
                        float f8 = ProgressIndicatorKt.f7152a;
                        float fFloatValue = ((Number) transitionAnimationStateA3.getF10755b()).floatValue() * 360.0f;
                        StrokeCap.f8932a.getClass();
                        int i12 = i8;
                        float f9 = f6;
                        if (i12 != 0 && Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)) <= Float.intBitsToFloat((int) (drawScope.b() >> 32))) {
                            f9 += f2;
                            Dp.Companion companion = Dp.f11004c;
                        }
                        float fL1 = (f9 / ((float) (((double) drawScope.l1(Float.intBitsToFloat((int) (drawScope.b() >> 32)))) * 3.141592653589793d))) * 360.0f;
                        float fFloatValue2 = ((Number) transitionAnimationStateA2.getF10755b()).floatValue() + ((Number) transitionAnimationStateA.getF10755b()).floatValue();
                        long jG1 = drawScope.G1();
                        CanvasDrawScope$drawContext$1 f8996c = drawScope.getF8996c();
                        long jD = f8996c.d();
                        f8996c.a().p();
                        try {
                            f8996c.f9001a.e(fFloatValue2, jG1);
                            ProgressIndicatorKt.c(drawScope, Math.min(fFloatValue, fL1) + fFloatValue, (360.0f - fFloatValue) - (Math.min(fFloatValue, fL1) * 2.0f), j7, stroke2);
                            ProgressIndicatorKt.c(drawScope, Call.Parameters.DEFAULT_CAMERA_ZOOM, fFloatValue, j8, stroke2);
                            return Unit.f71739a;
                        } finally {
                            pq0.y(f8996c, jD);
                        }
                    }
                };
                gapComposerH.q(obj);
            } else {
                f6 = f7;
                obj = objX;
                j6 = j5;
                i8 = i11;
            }
            CanvasKt.a(modifierO, (Function1) obj, gapComposerH, 0);
            j4 = j6;
            i5 = i8;
            f4 = f6;
        } else {
            gapComposerH.D();
            j4 = j3;
            i5 = i2;
            f4 = f3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: kq0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    ProgressIndicatorKt.a(modifier2, j2, f2, j4, i5, f4, (Composer) obj2, RecomposeScopeImplKt.a(i3 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Function0 function0, Modifier modifier, final long j2, final long j3, int i2, final float f2, final Function1 function1, Composer composer, int i3) {
        int i4;
        int i5;
        Object obj;
        final int i6;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LinearProgressIndicator-GJbTh5U");
        }
        GapComposer gapComposerH = composer.h(-339970038);
        int i7 = i3 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.K(modifierE) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128) | (gapComposerH.e(j3) ? 2048 : 1024) | 24576 | (gapComposerH.c(f2) ? 131072 : 65536);
        if (gapComposerH.p(i7 & 1, (599187 & i7) != 599186)) {
            gapComposerH.y0();
            if ((i3 & 1) == 0 || gapComposerH.h0()) {
                i5 = ProgressIndicatorDefaults.f7149a;
            } else {
                gapComposerH.D();
                i5 = i2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = (i7 & 14) == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new ee0(function0, 29);
                gapComposerH.q(objX);
            }
            final Function0 function2 = (Function0) objX;
            Modifier modifierO = modifierE.o(AccessibilityUtilKt.d);
            boolean zK = gapComposerH.K(function2);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new bo0(function2, 3);
                gapComposerH.q(objX2);
            }
            Modifier modifierP = SizeKt.p(SemanticsModifierKt.b(modifierO, true, (Function1) objX2), f7152a, f7153b);
            boolean zK2 = ((458752 & i7) == 131072) | gapComposerH.K(function2) | ((((i7 & 7168) ^ 3072) > 2048 && gapComposerH.e(j3)) || (i7 & 3072) == 2048) | ((((i7 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && gapComposerH.e(j2)) || (i7 & KyberEngine.KyberPolyBytes) == 256);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$1) {
                i6 = i5;
                obj = new Function1() { // from class: lq0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        DrawScope drawScope = (DrawScope) obj2;
                        float f3 = ProgressIndicatorKt.f7152a;
                        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax));
                        StrokeCap.f8932a.getClass();
                        int i8 = i6;
                        float fL1 = f2;
                        if (i8 != 0 && Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)) <= Float.intBitsToFloat((int) (drawScope.b() >> 32))) {
                            fL1 += drawScope.l1(fIntBitsToFloat);
                            Dp.Companion companion = Dp.f11004c;
                        }
                        float fL2 = fL1 / drawScope.l1(Float.intBitsToFloat((int) (drawScope.b() >> 32)));
                        float fFloatValue = ((Number) function2.mo47invoke()).floatValue();
                        float fMin = Math.min(fFloatValue, fL2) + fFloatValue;
                        if (fMin <= 1.0f) {
                            ProgressIndicatorKt.d(drawScope, fMin, 1.0f, j3, fIntBitsToFloat, i8);
                        }
                        ProgressIndicatorKt.d(drawScope, Call.Parameters.DEFAULT_CAMERA_ZOOM, fFloatValue, j2, fIntBitsToFloat, i8);
                        function1.invoke(drawScope);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(obj);
            } else {
                obj = objX3;
                i6 = i5;
            }
            CanvasKt.a(modifierP, (Function1) obj, gapComposerH, 0);
            i4 = i6;
        } else {
            gapComposerH.D();
            i4 = i2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fs(function0, modifierE, j2, j3, i4, f2, function1, i3);
        }
    }

    public static final void c(DrawScope drawScope, float f2, float f3, long j2, Stroke stroke) {
        float f4 = stroke.f9012a / 2.0f;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.b() >> 32)) - (2.0f * f4);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f4)) << 32) | (((long) Float.floatToRawIntBits(f4)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & BodyPartID.bodyIdMax);
        Size.Companion companion2 = Size.f8820b;
        DrawScope.a0.getClass();
        drawScope.G(j2, f2, f3, jFloatToRawIntBits, jFloatToRawIntBits2, stroke, DrawScope.Companion.f9007b);
    }

    public static final void d(DrawScope drawScope, float f2, float f3, long j2, float f4, int i2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.b() >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax));
        float f5 = fIntBitsToFloat2 / 2.0f;
        boolean z = drawScope.getLayoutDirection() == LayoutDirection.Ltr;
        float f6 = (z ? f2 : 1.0f - f3) * fIntBitsToFloat;
        float f7 = (z ? f3 : 1.0f - f2) * fIntBitsToFloat;
        StrokeCap.f8932a.getClass();
        if (i2 == 0 || fIntBitsToFloat2 > fIntBitsToFloat) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f6)) << 32) | (((long) Float.floatToRawIntBits(f5)) & BodyPartID.bodyIdMax);
            Offset.Companion companion = Offset.f8806b;
            DrawScope.x0(drawScope, j2, jFloatToRawIntBits, (((long) Float.floatToRawIntBits(f7)) << 32) | (((long) Float.floatToRawIntBits(f5)) & BodyPartID.bodyIdMax), f4, 0, null, 496);
            return;
        }
        float f8 = f4 / 2.0f;
        float f9 = fIntBitsToFloat - f8;
        if (f6 < f8) {
            f6 = f8;
        }
        if (f6 > f9) {
            f6 = f9;
        }
        if (f7 < f8) {
            f7 = f8;
        }
        if (f7 <= f9) {
            f9 = f7;
        }
        if (Math.abs(f3 - f2) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(f6)) << 32) | (((long) Float.floatToRawIntBits(f5)) & BodyPartID.bodyIdMax);
            Offset.Companion companion2 = Offset.f8806b;
            DrawScope.x0(drawScope, j2, jFloatToRawIntBits2, (((long) Float.floatToRawIntBits(f9)) << 32) | (((long) Float.floatToRawIntBits(f5)) & BodyPartID.bodyIdMax), f4, i2, null, Camera.DEFAULT_PREVIEW_HEIGHT);
        }
    }
}
