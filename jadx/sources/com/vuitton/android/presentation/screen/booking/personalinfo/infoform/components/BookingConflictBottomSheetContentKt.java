package com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import defpackage.qd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingConflictBottomSheetContentKt {
    public static final void a(String str, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-473905227);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(gapComposerH, R.string.booking_prebooking_conflict_title), null, null, str, null, StringResources_androidKt.c(gapComposerH, R.string.booking_form_cta_label), null, false, null, function0, null, false, null, null, null, false, null, gapComposer, (i3 << 15) & ImageMetadata.JPEG_GPS_COORDINATES, i3 & 112, 1046363);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qd(str, function0, i2, 2);
        }
    }
}
