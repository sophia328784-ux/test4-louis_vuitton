package com.vuitton.android.presentation.screen.imageviewer.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.q20;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImageViewerComposableKt {
    public static final void a(int i2, ArrayList arrayList, ProductBackground productBackground, boolean z, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i3) {
        arrayList.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1080574425);
        int i4 = i3 | (gapComposerH.d(i2) ? 4 : 2) | (gapComposerH.y(arrayList) ? 32 : 16) | (gapComposerH.d(productBackground == null ? -1 : productBackground.ordinal()) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ImageViewerScreenKt.a(i2, arrayList, productBackground, z, function0, function1, function2, gapComposerH, i4 & 4194302);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q20(i2, arrayList, productBackground, z, function0, function1, function2, i3, 0);
        }
    }
}
