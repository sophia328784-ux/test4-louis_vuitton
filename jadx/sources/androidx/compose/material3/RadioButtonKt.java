package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.RadioButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.pi0;
import defpackage.rp0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class RadioButtonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7160c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7158a = 2.0f;
        f7159b = 12.0f;
        f7160c = 2.0f;
    }

    public static final void a(boolean z, Modifier modifier, boolean z2, RadioButtonColors radioButtonColors, Composer composer, int i2) {
        boolean z3;
        float f2;
        long j2;
        Object objL;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "RadioButton");
        }
        GapComposer gapComposerH = composer.h(408580840);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.K(modifierE) ? 256 : 128) | 3072 | (gapComposerH.K(radioButtonColors) ? 16384 : 8192) | ImageMetadata.EDGE_MODE;
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                z3 = true;
            } else {
                gapComposerH.D();
                z3 = z2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z) {
                f2 = f7159b / 2.0f;
                Dp.Companion companion = Dp.f11004c;
            } else {
                Dp.Companion companion2 = Dp.f11004c;
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            State stateA = AnimateAsStateKt.a(f2, MotionSchemeKt.a(MotionSchemeKeyTokens.FastSpatial, gapComposerH), null, null, gapComposerH, 0, 12);
            if (z3 && z) {
                j2 = radioButtonColors.f7155a;
            } else if (!z3 || z) {
                j2 = (z3 || !z) ? radioButtonColors.d : radioButtonColors.f7157c;
            } else {
                j2 = radioButtonColors.f7156b;
            }
            if (z3) {
                gapComposerH.L(1194696477);
                objL = SingleValueAnimationKt.b(j2, MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, gapComposerH), null, gapComposerH, 0, 12);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1194874138);
                objL = SnapshotStateKt.l(new Color(j2), gapComposerH);
                gapComposerH.Z(false);
            }
            Modifier modifierO = modifierE.o(new DTFunctionNameModifier("RadioButton")).o(new DTFunctionNameModifier("RadioButton"));
            Alignment.f8582a.getClass();
            Modifier modifierK = SizeKt.k(PaddingKt.i(SizeKt.w(modifierO, Alignment.Companion.f8587f, 2), f7158a), RadioButtonTokens.f7837c);
            boolean zK = gapComposerH.K(objL) | gapComposerH.K(stateA);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new rp0(objL, stateA, 4);
                gapComposerH.q(objX);
            }
            CanvasKt.a(modifierK, (Function1) objX, gapComposerH, 0);
        } else {
            gapComposerH.D();
            z3 = z2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pi0(z, modifierE, z3, radioButtonColors, i2);
        }
    }
}
