package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.feed.components.FeedForYouScreenKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTabState;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import defpackage.d1;
import defpackage.d21;
import defpackage.qb0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedForYouScreenKt {
    public static final void a(final FeedViewState feedViewState, final boolean z, final SnackbarHostState snackbarHostState, final Function0 function0, final Function1 function1, final qb0 qb0Var, final Function0 function2, final Function0 function3, final Function1 function4, final Function1 function5, final d1 d1Var, final Function2 function6, final Function1 function7, final Function2 function8, final Function2 function9, final Function1 function10, final Function1 function11, Composer composer, final int i2) {
        GapComposer gapComposer;
        feedViewState.getClass();
        FeedTabState feedTabState = feedViewState.d;
        snackbarHostState.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        GapComposer gapComposerH = composer.h(-1677868434);
        int i3 = i2 | (gapComposerH.y(feedViewState) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.K(snackbarHostState) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(qb0Var) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerH.y(d1Var) ? 4 : 2) | (gapComposerH.y(function6) ? 32 : 16) | (gapComposerH.y(function7) ? 256 : 128) | (gapComposerH.y(function8) ? 2048 : 1024) | (gapComposerH.y(function9) ? 16384 : 8192) | (gapComposerH.y(function10) ? 131072 : 65536) | (gapComposerH.y(function11) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (599187 & i4) == 599186) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            if (feedTabState instanceof FeedTabState.Loading) {
                gapComposerH.L(-548193065);
                FeedForYouLoadingScreenKt.a(feedViewState.n, feedViewState.o, gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (feedTabState instanceof FeedTabState.Error) {
                gapComposerH.L(-548002508);
                FeedErrorScreenKt.a(snackbarHostState, function0, gapComposerH, (i3 >> 6) & 126);
                gapComposerH.Z(false);
            } else {
                if (!(feedTabState instanceof FeedTabState.Success)) {
                    throw d21.u(gapComposerH, -1818799760, false);
                }
                gapComposerH.L(-547768458);
                int i5 = i3 >> 3;
                int i6 = i4 << 3;
                FeedForYouSuccessScreenKt.a(lazyListStateA, feedViewState, ((FeedTabState.Success) feedTabState).f57922a, function1, qb0Var, function2, function3, z, function4, function5, function11, d1Var, function7, function6, function8, function9, function10, gapComposerH, (i5 & 7168) | ((i3 << 3) & 112) | (i5 & 57344) | (i5 & ImageMetadata.JPEG_GPS_COORDINATES) | (i5 & 3670016) | ((i3 << 18) & 29360128) | (i3 & 234881024) | (i3 & 1879048192), ((i4 << 6) & 7168) | (i4 & 896) | ((i4 >> 18) & 14) | (i6 & 112) | (i6 & 57344) | (i6 & ImageMetadata.JPEG_GPS_COORDINATES) | (i6 & 3670016), 0);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
            gapComposer = gapComposerH;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(z, snackbarHostState, function0, function1, qb0Var, function2, function3, function4, function5, d1Var, function6, function7, function8, function9, function10, function11, i2) { // from class: sx

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f79894c;
                public final /* synthetic */ SnackbarHostState d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function0 f79895e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f79896f;
                public final /* synthetic */ qb0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f79897h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f79898i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function1 f79899j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f79900k;
                public final /* synthetic */ d1 l;
                public final /* synthetic */ Function2 m;
                public final /* synthetic */ Function1 n;
                public final /* synthetic */ Function2 o;
                public final /* synthetic */ Function2 p;
                public final /* synthetic */ Function1 q;
                public final /* synthetic */ Function1 r;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    FeedForYouScreenKt.a(this.f79893b, this.f79894c, this.d, this.f79895e, this.f79896f, this.g, this.f79897h, this.f79898i, this.f79899j, this.f79900k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
