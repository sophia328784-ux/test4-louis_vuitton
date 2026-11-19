package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import defpackage.o;
import defpackage.tr;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackDetailContentKt {
    public static final void a(TrackDetailUiModel trackDetailUiModel, LVColorScheme lVColorScheme, A11ySettings a11ySettings, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, AudioGuideUiModel.TrackUiModel trackUiModel, Function1 function1, Function0 function0, Composer composer, int i2) {
        Function0 function2 = function0;
        trackDetailUiModel.getClass();
        lVColorScheme.getClass();
        a11ySettings.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1984128988);
        A11ySettings a11ySettings2 = a11ySettings;
        Function1 function3 = function1;
        int i3 = i2 | (gapComposerH.y(trackDetailUiModel) ? 4 : 2) | (gapComposerH.d(lVColorScheme.ordinal()) ? 32 : 16) | (gapComposerH.K(a11ySettings2) ? 256 : 128) | (gapComposerH.K(audioGuideColorsUiModel) ? 2048 : 1024) | (gapComposerH.K(trackUiModel) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TrackDetailContent");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            SpacerKt.a(gapComposerH, SizeKt.f(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "TrackDetailContent"), LVAppDesignKitTheme.l(gapComposerH).g));
            gapComposerH.L(45501907);
            Iterator it = trackDetailUiModel.d.iterator();
            while (it.hasNext()) {
                TrackDetailSectionKt.a((EditorialModuleUiModel) it.next(), lVColorScheme, a11ySettings2, function3, gapComposerH, (i3 & 1008) | ((i3 >> 6) & 7168));
                SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("TrackDetailContent"), LVAppDesignKitTheme.l(gapComposerH).f48418h));
                a11ySettings2 = a11ySettings;
                function3 = function1;
            }
            gapComposerH.Z(false);
            if (trackUiModel != null) {
                gapComposerH.L(1410924888);
                int i4 = i3 >> 12;
                function2 = function0;
                TrackDetailNextContentKt.a(trackUiModel, audioGuideColorsUiModel, function2, gapComposerH, ((i3 >> 6) & 112) | (i4 & 14) | (i4 & 896));
                gapComposerH.Z(false);
            } else {
                function2 = function0;
                gapComposerH.L(1411113244);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(trackDetailUiModel, lVColorScheme, a11ySettings, audioGuideColorsUiModel, trackUiModel, function1, function2, i2);
        }
    }
}
