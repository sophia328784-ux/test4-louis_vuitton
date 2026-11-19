package com.vuitton.android.presentation.screen.storemode.components.plp;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.paging.compose.LazyPagingItems;
import androidx.paging.compose.LazyPagingItemsKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPWishlistFeedbackWatcherKt;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import defpackage.ae0;
import defpackage.cj;
import defpackage.me;
import defpackage.n00;
import defpackage.rb0;
import defpackage.u1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import kotlinx.coroutines.flow.Flow;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPStoreModeScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64904a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f64904a = iArr;
        }
    }

    public static final void a(PLPViewState pLPViewState, PLPStoreModeViewState pLPStoreModeViewState, StoreModePLPFiltersViewState storeModePLPFiltersViewState, ProductFilterViewState productFilterViewState, String str, Flow flow, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function1 function7, Function2 function8, Function1 function9, Function1 function10, Function1 function11, Function2 function12, Function5 function13, Composer composer, int i2) {
        int i3;
        Object obj;
        String str2;
        GapComposer gapComposer;
        pLPViewState.getClass();
        pLPStoreModeViewState.getClass();
        flow.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        GapComposer gapComposerH = composer.h(-920742187);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(pLPViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(pLPStoreModeViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            obj = storeModePLPFiltersViewState;
            i3 |= gapComposerH.y(obj) ? 256 : 128;
        } else {
            obj = storeModePLPFiltersViewState;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(productFilterViewState) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            str2 = str;
            i3 |= gapComposerH.K(str2) ? 16384 : 8192;
        } else {
            str2 = str;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.y(flow) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(function3) ? 536870912 : 268435456;
        }
        int i4 = (gapComposerH.y(function4) ? 4 : 2) | (gapComposerH.y(function5) ? 32 : 16) | (gapComposerH.y(function6) ? 256 : 128) | (gapComposerH.y(function7) ? 2048 : 1024) | (gapComposerH.y(function8) ? 16384 : 8192) | (gapComposerH.y(function9) ? 131072 : 65536) | (gapComposerH.y(function10) ? 1048576 : 524288) | (gapComposerH.y(function11) ? 8388608 : 4194304) | (gapComposerH.y(function12) ? 67108864 : 33554432) | (gapComposerH.y(function13) ? 536870912 : 268435456);
        int i5 = i3;
        if (gapComposerH.p(i5 & 1, ((i3 & 306783379) == 306783378 && (i4 & 306783379) == 306783378) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strF = pLPViewState.f63005a;
            if (strF == null) {
                strF = str2;
            }
            if (strF == null) {
                strF = cj.f(gapComposerH, -69940503, R.string.homepage_menu_shop, gapComposerH, false);
            } else {
                gapComposerH.L(-69941960);
                gapComposerH.Z(false);
            }
            StoreModeContentUiModel storeModeContentUiModel = pLPStoreModeViewState.f65037a;
            LazyPagingItems lazyPagingItemsA = LazyPagingItemsKt.a(pLPViewState.f63007c, gapComposerH);
            Object objX = gapComposerH.x();
            String str3 = strF;
            if (objX == Composer.Companion.f7939a) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1615580817, new u1(str3, function5, lazyPagingItemsA, obj, lVModalBottomSheetStateF, function4, 21), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1865331505, new ae0(snackbarHostState, 19), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1204705318, new me(lazyPagingItemsA, function9, function7, function10, function12, lVModalBottomSheetStateF, productFilterViewState, function6, function0, function2, function8, function13), gapComposerH);
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImplB, null, composableLambdaImplB2, null, 0, 0L, 0L, windowInsetsA, composableLambdaImplB3, gapComposer, 805309488, 245);
            int i6 = i5 >> 15;
            PLPStoreModeSnackBarKt.a(snackbarHostState, lazyPagingItemsA, storeModeContentUiModel, flow, function3, gapComposer, ((i5 >> 6) & 7168) | 70 | (57344 & i6));
            PLPWishlistFeedbackWatcherKt.a(lazyPagingItemsA, flow, function1, function11, gapComposer, ((i5 >> 12) & 112) | 8 | (i6 & 896) | ((i4 >> 12) & 7168));
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rb0(pLPViewState, pLPStoreModeViewState, storeModePLPFiltersViewState, productFilterViewState, str, flow, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, i2);
        }
    }
}
