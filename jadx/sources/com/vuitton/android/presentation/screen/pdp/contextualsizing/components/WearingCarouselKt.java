package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import android.content.res.Configuration;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.pager.PageSize;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.r31;
import defpackage.s8;
import java.util.ArrayList;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WearingCarouselKt {
    public static final void a(Modifier modifier, PagerState pagerState, ArrayList arrayList, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "WearingCarousel");
        }
        Modifier modifier3 = modifierE;
        pagerState.getClass();
        GapComposer gapComposerH = composer.h(1856389600);
        int i3 = i2 | (gapComposerH.K(modifier3) ? 4 : 2) | (gapComposerH.K(pagerState) ? 32 : 16) | (gapComposerH.y(arrayList) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            boolean zC = gapComposerH.c(f2);
            Object objX = gapComposerH.x();
            if (zC || objX == Composer.Companion.f7939a) {
                objX = new Dp((f2 - (f3 * 2.0f)) - 40.0f);
                gapComposerH.q(objX);
            }
            float f4 = ((Dp) objX).f11006b;
            float f5 = (f2 - f4) / 2.0f;
            PaddingValuesImpl paddingValuesImplE = PaddingKt.e(f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            float f6 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            PageSize.Fixed fixed = new PageSize.Fixed(f4, null);
            Alignment.f8582a.getClass();
            modifier2 = modifier3;
            PagerKt.a(pagerState, modifier2, paddingValuesImplE, fixed, 2, f6, Alignment.Companion.l, null, false, false, null, null, null, ComposableLambdaKt.b(943723617, new s8(pagerState, arrayList, modifier3, 15), gapComposerH), gapComposerH, ((i3 >> 3) & 14) | 1597440 | ((i3 << 3) & 112), 24576, 16256);
        } else {
            modifier2 = modifier3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r31(i2, 9, modifier2, pagerState, arrayList);
        }
    }
}
