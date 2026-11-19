package com.vuitton.android.presentation.screen.certificates.components.visionnaire;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import defpackage.em;
import defpackage.q8;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateVisionnaireComposableKt {
    public static final void a(CertificateVisionnaireUiModel certificateVisionnaireUiModel, String str, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Composer composer, int i2) {
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(289912579);
        int i3 = i2 | (gapComposerH.K(certificateVisionnaireUiModel) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z = (i3 & 57344) == 16384;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new CertificateVisionnaireComposableKt$CertificateVisionnaireComposable$5$1(function2, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            boolean z2 = ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i3 & 896) == 256);
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new em(function3, function1, 0);
                gapComposerH.q(objX2);
            }
            int i4 = i3 & 7294;
            int i5 = i3 >> 6;
            CertificateVisionnaireScreenKt.a(certificateVisionnaireUiModel, str, (Function1) objX2, function0, function4, function5, gapComposerH, i4 | (i5 & 57344) | (i5 & ImageMetadata.JPEG_GPS_COORDINATES));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(certificateVisionnaireUiModel, str, function1, function0, function2, function3, function4, function5, i2);
        }
    }
}
