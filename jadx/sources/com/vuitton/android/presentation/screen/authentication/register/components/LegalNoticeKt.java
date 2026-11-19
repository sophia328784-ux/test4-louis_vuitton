package com.vuitton.android.presentation.screen.authentication.register.components;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVTextWithClickableLinkKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.sj;
import defpackage.t30;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LegalNoticeKt {
    public static final void a(Context context, Composer composer, int i2) {
        context.getClass();
        GapComposer gapComposerH = composer.h(1442609084);
        int i3 = (gapComposerH.y(context) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.personal_data_email_link);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            boolean zY = gapComposerH.y(context) | gapComposerH.K(strC);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new t30(context, strC, 8);
                gapComposerH.q(objX);
            }
            LVTextWithClickableLinkKt.a(R.string.legal_notice_personal_data, R.string.personal_data_email_link, textStyle, j2, j3, "nativeRegister_legalNoticePersonalData_text", (Function0) objX, null, gapComposerH, ImageMetadata.EDGE_MODE, 128);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sj(context, i2);
        }
    }
}
