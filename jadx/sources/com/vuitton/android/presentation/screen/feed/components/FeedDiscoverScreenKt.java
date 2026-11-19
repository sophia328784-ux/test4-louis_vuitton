package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTabState;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel;
import defpackage.d1;
import defpackage.d21;
import defpackage.kx;
import defpackage.qb0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedDiscoverScreenKt {
    public static final void a(FeedViewState feedViewState, boolean z, SnackbarHostState snackbarHostState, Function0 function0, Function1 function1, qb0 qb0Var, Function1 function2, Function1 function3, d1 d1Var, Function2 function4, Function1 function5, Function2 function6, Function1 function7, Composer composer, int i2) {
        feedViewState.getClass();
        FeedTabState feedTabState = feedViewState.f57925c;
        snackbarHostState.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(-375894309);
        int i3 = i2 | (gapComposerH.y(feedViewState) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.K(snackbarHostState) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(qb0Var) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(d1Var) ? 67108864 : 33554432) | (gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerH.y(function5) ? 4 : 2) | (gapComposerH.y(function6) ? 32 : 16) | (gapComposerH.y(function7) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            if (feedTabState instanceof FeedTabState.Loading) {
                gapComposerH.L(-1286874156);
                FeedDiscoverLoadingScreenKt.a(gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (feedTabState instanceof FeedTabState.Error) {
                gapComposerH.L(-1286785403);
                FeedErrorScreenKt.a(snackbarHostState, function0, gapComposerH, (i3 >> 6) & 126);
                gapComposerH.Z(false);
            } else {
                if (!(feedTabState instanceof FeedTabState.Success)) {
                    throw d21.u(gapComposerH, -457154966, false);
                }
                gapComposerH.L(-1286563970);
                FeedUiModel feedUiModel = ((FeedTabState.Success) feedTabState).f57922a;
                int i5 = i3 << 6;
                int i6 = ((i3 << 9) & 57344) | (i5 & 3670016) | (i5 & 29360128) | (i5 & 234881024) | (i5 & 1879048192);
                int i7 = ((i3 >> 24) & 14) | ((i4 << 3) & 112) | ((i3 >> 21) & 896);
                int i8 = i4 << 6;
                FeedDiscoverSuccessScreenKt.a(lazyListStateA, FeatureThemeMapperKt.a(feedViewState.f57923a), feedUiModel, feedViewState.m, z, feedViewState.f57928h, function1, qb0Var, function2, function3, d1Var, function5, function4, function6, function7, gapComposerH, i6, i7 | (i8 & 7168) | (i8 & 57344), 0);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kx(feedViewState, z, snackbarHostState, function0, function1, qb0Var, function2, function3, d1Var, function4, function5, function6, function7, i2);
        }
    }
}
