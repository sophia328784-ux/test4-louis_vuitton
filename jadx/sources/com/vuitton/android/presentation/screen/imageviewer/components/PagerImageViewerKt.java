package com.vuitton.android.presentation.screen.imageviewer.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.c30;
import defpackage.c4;
import defpackage.hq;
import defpackage.j8;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"", "currentPage", "", "isScrollEnabled", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PagerImageViewerKt {
    public static final void a(int i2, ArrayList arrayList, ProductBackground productBackground, boolean z, Function0 function0, Function0 function1, Composer composer, int i3) {
        GapComposer gapComposer;
        arrayList.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1917267869);
        int i4 = i3 | (gapComposerH.d(i2) ? 4 : 2) | (gapComposerH.y(arrayList) ? 32 : 16) | (gapComposerH.d(productBackground == null ? -1 : productBackground.ordinal()) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = gapComposerH.y(arrayList);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new hq(2, arrayList);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(i2, (Function0) objX, gapComposerH, i4 & 14, 2);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotIntStateKt.a(i2);
                gapComposerH.q(objX2);
            }
            MutableIntState mutableIntState = (MutableIntState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new c30(22, mutableState);
                gapComposerH.q(objX4);
            }
            gapComposer = gapComposerH;
            LVZoomableContentComponentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Function1) objX4, false, ComposableLambdaKt.b(-483179066, new c4(arrayList, pagerStateB, z, mutableState, function0, function1, productBackground, mutableIntState), gapComposerH), gapComposer, 199680, 23);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(i2, arrayList, productBackground, z, function0, function1, i3);
        }
    }
}
