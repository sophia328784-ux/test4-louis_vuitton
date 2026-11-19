package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.g4;
import defpackage.u1;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsCurationAdvisorProductListKt {
    public static final void a(List list, List list2, Function1 function1, Function1 function2, Function1 function3, Function2 function4, Composer composer, int i2) {
        list.getClass();
        list2.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-873041286);
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.y(list2) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            GridCells.Fixed fixed = new GridCells.Fixed(2);
            PaddingValuesImpl paddingValuesImplE = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            boolean zY = gapComposerH.y(list) | ((57344 & i3) == 16384) | gapComposerH.y(list2) | ((i3 & 7168) == 2048) | ((i3 & 896) == 256) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                g4 g4Var = new g4(list, (Object) function4, function3, (Object) list2, (Object) function2, (Object) function1, 7);
                gapComposerH.q(g4Var);
                objX = g4Var;
            }
            LazyGridDslKt.b(fixed, null, null, paddingValuesImplE, null, null, null, false, null, (Function1) objX, gapComposerH, 0, 1014);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(list, list2, function1, function2, function3, function4, i2, 24);
        }
    }
}
