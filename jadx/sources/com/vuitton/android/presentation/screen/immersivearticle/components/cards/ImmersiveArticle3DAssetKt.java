package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.layout.AspectRatioKt;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Error3dType;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import defpackage.a;
import defpackage.dm;
import defpackage.k0;
import defpackage.py;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticle3DAssetKt {
    public static final void a(Modifier modifier, Lv3dViewerUiModel lv3dViewerUiModel, boolean z, Function1 function1, Function0 function0, Function1 function2, Function0 function3, Function0 function4, Composer composer, int i2) {
        Modifier modifier2;
        String str;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticle3DAsset");
        }
        lv3dViewerUiModel.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(788157522);
        int i3 = i2 | 6 | (gapComposerH.K(lv3dViewerUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (i3 & 4793491) != 4793490)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticle3DAsset");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (lv3dViewerUiModel.f58616f == Error3dType.None) {
                gapComposerH.L(-585037033);
                Modifier modifierB = ClipKt.b(AspectRatioKt.a(SizeKt.d(dTFunctionNameModifier, 1.0f), 0.5625f, false));
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function5 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function5);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                if (z) {
                    str = "ImmersiveArticle3DAsset";
                    z2 = false;
                    gapComposerH.L(-472911825);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-473506157);
                    Modifier modifierJ = boxScopeInstance.j(new DTFunctionNameModifier("ImmersiveArticle3DAsset"));
                    boolean z3 = !lv3dViewerUiModel.f58615e;
                    boolean z4 = (i3 & 57344) == 16384;
                    Object objX = gapComposerH.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (z4 || objX == composer$Companion$Empty$1) {
                        objX = new py(function0, 9);
                        gapComposerH.q(objX);
                    }
                    Function0 function6 = (Function0) objX;
                    boolean z5 = (i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072;
                    Object objX2 = gapComposerH.x();
                    if (z5 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new k0(function2, 16);
                        gapComposerH.q(objX2);
                    }
                    int i4 = i3 << 6;
                    str = "ImmersiveArticle3DAsset";
                    z2 = false;
                    Lv3dViewerComposableKt.b(modifierJ, false, z3, lv3dViewerUiModel, function1, function6, function3, function4, (Function1) objX2, gapComposerH, (i4 & 1879048192) | (i4 & 7168) | ((i3 << 3) & 57344) | (i4 & 234881024), 0, 194);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                }
                Modifier modifierJ2 = boxScopeInstance.j(new DTFunctionNameModifier(str));
                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                ComposableSingletons$ImmersiveArticle3DAssetKt.f58468a.getClass();
                AnimatedVisibilityKt.e(z, modifierJ2, enterTransitionF, exitTransitionH, null, ComposableSingletons$ImmersiveArticle3DAssetKt.f58469b, gapComposerH, ((i3 >> 6) & 14) | 200064, 16);
                gapComposerH.Z(true);
                gapComposerH.Z(z2);
            } else {
                dTFunctionNameModifier = dTFunctionNameModifier;
                gapComposerH.L(-583782928);
                gapComposerH.Z(false);
            }
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dm(modifier2, lv3dViewerUiModel, z, function1, function0, function2, function3, function4, i2);
        }
    }
}
