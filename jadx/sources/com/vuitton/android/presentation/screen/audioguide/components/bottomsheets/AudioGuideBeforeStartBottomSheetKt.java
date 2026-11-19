package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAudioGuideCompositionLocalProviderKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPointKt;
import defpackage.f1;
import defpackage.o0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideBeforeStartBottomSheetKt {
    public static final void a(final Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(-129244424);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVAudioGuideCompositionLocalProviderKt.a(ComposableLambdaKt.b(1869177063, new Function2() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.a
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
                        if (zY || objX == Composer.Companion.f7939a) {
                            objX = new AudioGuideBeforeStartBottomSheetKt$AudioGuideBeforeStartBottomSheet$1$1$1(audioGuideTracker, null);
                            composer2.q(objX);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX);
                        LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, null, null, null, false, null, null, ComposableLambdaKt.b(-798927428, new f1(audioGuideTracker, function0, 6), composer2), composer2, 0, 48, 2047);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o0(i2, 10, function0);
        }
    }
}
