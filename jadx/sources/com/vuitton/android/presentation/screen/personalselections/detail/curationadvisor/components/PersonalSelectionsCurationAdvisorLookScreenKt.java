package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components;

import android.content.Context;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import defpackage.kg;
import defpackage.og;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsCurationAdvisorLookScreenKt {
    public static final void a(String str, SelectionAssetUiModel selectionAssetUiModel, List list, boolean z, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        list.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1678525483);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.y(selectionAssetUiModel) ? 32 : 16) | (gapComposerH.y(list) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(appsFlyerUiTracker) | ((i3 & 14) == 4);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new PersonalSelectionsCurationAdvisorLookScreenKt$PersonalSelectionsCurationAdvisorLookScreen$1$1(appsFlyerUiTracker, str, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierO = new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorLookScreen").o(SizeKt.f5052c);
            boolean zY2 = ((57344 & i3) == 16384) | gapComposerH.y(selectionAssetUiModel) | gapComposerH.y(context) | gapComposerH.y(list) | ((458752 & i3) == 131072) | ((i3 & 7168) == 2048) | ((i3 & 3670016) == 1048576);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                kg kgVar = new kg(selectionAssetUiModel, list, function1, context, function2, z, function3);
                gapComposerH.q(kgVar);
                objX2 = kgVar;
            }
            LazyDslKt.a(modifierO, null, null, null, null, null, false, null, (Function1) objX2, gapComposerH, 6, 510);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og(str, selectionAssetUiModel, list, z, function1, function2, function3, i2, 2);
        }
    }
}
