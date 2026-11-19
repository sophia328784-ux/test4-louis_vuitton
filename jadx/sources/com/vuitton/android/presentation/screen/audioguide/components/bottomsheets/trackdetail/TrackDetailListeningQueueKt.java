package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import defpackage.cj;
import defpackage.o60;
import defpackage.od;
import defpackage.p01;
import defpackage.tr;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackDetailListeningQueueKt {
    public static final void a(List list, String str, boolean z, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, Function1 function1, Composer composer, int i2) {
        Function1 function2;
        String str2;
        Function0 function0;
        function1.getClass();
        GapComposer gapComposerH = composer.h(-738939971);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.K(audioGuideColorsUiModel) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f5031b = WindowInsetsKt.e(WindowInsets_androidKt.b(gapComposerH), gapComposerH).getF5031b() + LVAppDesignKitTheme.l(gapComposerH).f48420j;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierC = ModifierExtKt.c(PaddingKt.m(AspectRatioKt.a(SizeKt.d(new DTFunctionNameModifier("TrackDetailListeningQueue"), 1.0f), 0.6666667f, false), Call.Parameters.DEFAULT_CAMERA_ZOOM, f5031b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, null, null, null, null, new Dp(LVAppDesignKitTheme.d(gapComposerH).A), new Dp(LVAppDesignKitTheme.d(gapComposerH).f48383a), false, 319);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Modifier modifierK = PaddingKt.k(tr.e(gapComposerH, modifierC2, function8, "TrackDetailListeningQueue"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function0 = function3;
                gapComposerH.C(function0);
            } else {
                function0 = function3;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Function0 function9 = function0;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.listening_queue), PaddingKt.m(tr.e(gapComposerH, modifierC3, function8, "TrackDetailListeningQueue"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), audioGuideColorsUiModel.f53207a, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("TrackDetailListeningQueue").o(SizeKt.f5052c), ScrollKt.b(gapComposerH), false, 14);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierD);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
            cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC4, function8);
            gapComposerH.L(781635040);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) it.next();
                SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("TrackDetailListeningQueue"), LVAppDesignKitTheme.l(gapComposerH).f48415c));
                boolean zC = Intrinsics.c(trackUiModel.f53218a, str);
                boolean zK = gapComposerH.K(trackUiModel) | ((i3 & 57344) == 16384);
                Object objX = gapComposerH.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new p01(function1, trackUiModel, 17);
                    gapComposerH.q(objX);
                }
                ListeningQueueTrackItemKt.b(trackUiModel, zC, z, audioGuideColorsUiModel, (Function0) objX, gapComposerH, i3 & 8064);
            }
            str2 = str;
            function2 = function1;
            SpacerKt.a(gapComposerH, SizeKt.f(o60.f(gapComposerH, false, "TrackDetailListeningQueue"), LVAppDesignKitTheme.l(gapComposerH).f48419i));
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            function2 = function1;
            str2 = str;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new od(list, str2, z, audioGuideColorsUiModel, function2, i2);
        }
    }
}
