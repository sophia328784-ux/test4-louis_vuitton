package com.vuitton.android.presentation.screen.spotlight.components;

import android.content.Context;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
import defpackage.o;
import defpackage.sm0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightVideoScreenKt {
    public static final void a(Modifier modifier, String str, String str2, String str3, SpotlightContainerStateUiModel spotlightContainerStateUiModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        String str4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SpotlightVideoScreen");
        }
        spotlightContainerStateUiModel.getClass();
        boolean z = spotlightContainerStateUiModel.f64635e;
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, 1913939514);
        int i3 = i2 | (gapComposerC.K(modifierE) ? 4 : 2) | (gapComposerC.K(str) ? 32 : 16) | (gapComposerC.K(str2) ? 256 : 128) | (gapComposerC.K(str3) ? 2048 : 1024) | (gapComposerC.K(spotlightContainerStateUiModel) ? 16384 : 8192) | (gapComposerC.y(function0) ? 131072 : 65536) | (gapComposerC.y(function1) ? 1048576 : 524288);
        if (gapComposerC.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerC.k(AndroidCompositionLocals_androidKt.f9936b);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerC.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerC, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerC, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerC, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerC, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierA = AlphaKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("SpotlightVideoScreen").o(SizeKt.f5052c), Alignment.Companion.f8585c), z ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new LvExoPlayer(context).f50900a;
                gapComposerC.q(objX);
            }
            ExoPlayer exoPlayer = (ExoPlayer) objX;
            if (spotlightContainerStateUiModel.g) {
                str4 = str;
            } else if (spotlightContainerStateUiModel.f64637h) {
                str4 = str2;
            } else {
                str4 = spotlightContainerStateUiModel.f64638i ? str3 : "";
            }
            boolean z2 = spotlightContainerStateUiModel.f64637h;
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean z3 = ((57344 & i3) == 16384) | ((458752 & i3) == 131072) | ((i3 & 3670016) == 1048576);
            Object objX2 = gapComposerC.x();
            if (z3 || objX2 == composer$Companion$Empty$1) {
                objX2 = new sm0(spotlightContainerStateUiModel, function0, function1, 17);
                gapComposerC.q(objX2);
            }
            LvVideoPlayerKt.b(modifierA, exoPlayer, str4, null, null, false, null, null, z2, false, false, false, boolValueOf, false, 4, null, null, (Function0) objX2, null, null, null, gapComposerC, 0, 24582, 0, 1944312);
            gapComposer = gapComposerC;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(modifierE, str, str2, str3, spotlightContainerStateUiModel, function0, function1, i2);
        }
    }
}
