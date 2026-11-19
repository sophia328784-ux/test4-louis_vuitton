package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAudioGuideCompositionLocalProviderKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPointKt;
import defpackage.ga;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideLeavingBottomSheetKt {
    public static final void a(final Function0 function0, final Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, -1661547634);
        int i3 = (gapComposerC.y(function0) ? 4 : 2) | i2 | (gapComposerC.y(function1) ? 32 : 16);
        if (gapComposerC.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVAudioGuideCompositionLocalProviderKt.a(ComposableLambdaKt.b(-1028879939, new Function2() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.b
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        AudioGuideTracker audioGuideTracker = (AudioGuideTracker) composer2.k(AudioGuideTrackerEntryPointKt.f52977a);
                        Unit unit = Unit.f71739a;
                        boolean zY = composer2.y(audioGuideTracker);
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new AudioGuideLeavingBottomSheetKt$AudioGuideLeavingBottomSheet$1$1$1(audioGuideTracker, null);
                            composer2.q(objX);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX);
                        String strC = StringResources_androidKt.c(composer2, R.string.title_bottomsheet_leaving);
                        String strC2 = StringResources_androidKt.c(composer2, R.string.description_bottomsheet_leaving);
                        String strC3 = StringResources_androidKt.c(composer2, R.string.cta_one_bottomsheet_leaving);
                        boolean zY2 = composer2.y(audioGuideTracker);
                        Function0 function2 = function0;
                        boolean zK = zY2 | composer2.K(function2);
                        Object objX2 = composer2.x();
                        if (zK || objX2 == composer$Companion$Empty$1) {
                            objX2 = new ga(audioGuideTracker, function2, 1);
                            composer2.q(objX2);
                        }
                        Function0 function3 = (Function0) objX2;
                        String strC4 = StringResources_androidKt.c(composer2, R.string.cta_two_bottomsheet_leaving);
                        boolean zY3 = composer2.y(audioGuideTracker);
                        Function0 function4 = function1;
                        boolean zK2 = zY3 | composer2.K(function4);
                        Object objX3 = composer2.x();
                        if (zK2 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new ga(audioGuideTracker, function4, 2);
                            composer2.q(objX3);
                        }
                        LVModalBottomSheetKt.a(null, null, strC, null, null, strC2, null, strC3, null, false, null, function3, strC4, false, null, (Function0) objX3, null, false, null, composer2, 0, 0, 976731);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerC), gapComposerC, 6);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function0, function1, i2, 3);
        }
    }
}
