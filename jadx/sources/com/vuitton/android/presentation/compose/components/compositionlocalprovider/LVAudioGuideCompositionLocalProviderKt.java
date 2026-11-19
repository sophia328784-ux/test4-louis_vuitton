package com.vuitton.android.presentation.compose.components.compositionlocalprovider;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPoint;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPoint;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import dagger.hilt.android.EntryPointAccessors;
import defpackage.ql;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVAudioGuideCompositionLocalProviderKt {
    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(412850354);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = ((AudioGuideTrackerEntryPoint) EntryPointAccessors.a(context, AudioGuideTrackerEntryPoint.class)).q();
                gapComposerH.q(objX);
            }
            AudioGuideTracker audioGuideTracker = (AudioGuideTracker) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = ((AppsFlyerTrackerEntryPoint) EntryPointAccessors.a(context, AppsFlyerTrackerEntryPoint.class)).c();
                gapComposerH.q(objX2);
            }
            CompositionLocalKt.b(new ProvidedValue[]{AudioGuideTrackerEntryPointKt.f52977a.c(audioGuideTracker), AppsFlyerTrackerEntryPointKt.f65808a.c((AppsFlyerUiTracker) objX2)}, composableLambdaImpl, gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ql(composableLambdaImpl, i2, 5);
        }
    }
}
