package com.vuitton.android.presentation.screen.booking.summary.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.components.components.SwipeAction;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookUiModel;
import defpackage.h1;
import defpackage.mg;
import defpackage.ng;
import defpackage.og;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingSummaryCardKt {
    public static final void a(Modifier modifier, PreBookUiModel preBookUiModel, boolean z, Function2 function2, Function0 function0, Function0 function1, Function2 function3, Composer composer, int i2) {
        Function0 function4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BookingSummaryCard");
        }
        Modifier modifier2 = modifierE;
        function2.getClass();
        function0.getClass();
        function1.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(874761362);
        int i3 = (gapComposerH.y(function3) ? 1048576 : 524288) | i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(preBookUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.L(-1167909253);
            ListBuilder listBuilderV = CollectionsKt.v();
            int i4 = LVAppDesignKitTheme.g(gapComposerH).q;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.global_remove);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.x;
            boolean zY = ((i3 & 7168) == 2048) | gapComposerH.y(preBookUiModel);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new mg(function2, preBookUiModel, 0);
                gapComposerH.q(objX);
            }
            listBuilderV.add(new SwipeAction(i4, strC, j2, (Function0) objX, null));
            ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
            gapComposerH.Z(false);
            boolean z2 = (57344 & i3) == 16384;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new h1(function0, 19);
                gapComposerH.q(objX2);
            }
            Function0 function5 = (Function0) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                function4 = function1;
                objX3 = new h1(function4, 20);
                gapComposerH.q(objX3);
            } else {
                function4 = function1;
            }
            LVSwipeToRevealKt.a(modifier2, listBuilderR, z, function5, (Function0) objX3, ComposableLambdaKt.b(1015206257, new ng(preBookUiModel, z, function4, function0, function3), gapComposerH), gapComposerH, (i3 & 14) | ImageMetadata.EDGE_MODE | (i3 & 896), 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og(modifier2, preBookUiModel, z, function2, function0, function1, function3, i2);
        }
    }
}
