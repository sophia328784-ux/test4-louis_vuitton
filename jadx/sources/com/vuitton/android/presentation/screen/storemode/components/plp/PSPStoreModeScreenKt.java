package com.vuitton.android.presentation.screen.storemode.components.plp;

import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import androidx.paging.compose.LazyPagingItemsKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPWishlistFeedbackWatcherKt;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import com.vuitton.android.presentation.screen.storemode.components.plp.PSPStoreModeScreenKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import defpackage.a;
import defpackage.ae0;
import defpackage.n00;
import defpackage.v40;
import defpackage.w8;
import defpackage.zl;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import kotlinx.coroutines.flow.Flow;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PSPStoreModeScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64918a;

        static {
            int[] iArr = new int[PSPStyle.values().length];
            try {
                iArr[PSPStyle.CATALOG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PSPStyle.SEARCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f64918a = iArr;
        }
    }

    public static final void a(final PLPViewState pLPViewState, final PSPViewState pSPViewState, final PLPStoreModeViewState pLPStoreModeViewState, final StoreModePLPFiltersViewState storeModePLPFiltersViewState, final ProductFilterViewState productFilterViewState, final PSPStyle pSPStyle, final Flow flow, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function1 function6, final Function0 function7, final Function1 function8, final Function2 function9, final Function1 function10, final Function1 function11, final Function1 function12, final Function1 function13, final Function2 function14, final Function5 function15, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer;
        Modifier modifierE;
        pLPViewState.getClass();
        pSPViewState.getClass();
        pLPStoreModeViewState.getClass();
        storeModePLPFiltersViewState.getClass();
        flow.getClass();
        a.D(function0, function1, function2, function3, function4);
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        function15.getClass();
        GapComposer gapComposerH = composer.h(293841377);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(pLPViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(pSPViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(pLPStoreModeViewState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(storeModePLPFiltersViewState) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(productFilterViewState) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.d(pSPStyle == null ? -1 : pSPStyle.ordinal()) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(flow) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function1) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(function2) ? 536870912 : 268435456;
        }
        int i4 = i3;
        int i5 = (gapComposerH.y(function3) ? 4 : 2) | (gapComposerH.y(function4) ? 32 : 16) | (gapComposerH.y(function5) ? 256 : 128) | (gapComposerH.y(function6) ? 2048 : 1024) | (gapComposerH.y(function7) ? 16384 : 8192) | (gapComposerH.y(function8) ? 131072 : 65536) | (gapComposerH.y(function9) ? 1048576 : 524288) | (gapComposerH.y(function10) ? 8388608 : 4194304) | (gapComposerH.y(function11) ? 67108864 : 33554432) | (gapComposerH.y(function12) ? 536870912 : 268435456);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 306783379) == 306783378 && ((((gapComposerH.y(function13) ? (char) 4 : (char) 2) | (gapComposerH.y(function14) ? ' ' : (char) 16)) | (gapComposerH.y(function15) ? 256 : 128)) & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyPagingItems lazyPagingItemsA = LazyPagingItemsKt.a(pLPViewState.f63007c, gapComposerH);
            StoreModeContentUiModel storeModeContentUiModel = pLPStoreModeViewState.f65037a;
            String str = pSPViewState.f63014a;
            Integer num = pSPViewState.f63015b;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            boolean z = (storeModePLPFiltersViewState.d && lazyPagingItemsA.b() > 0 && !(lazyPagingItemsA.d().f18562a instanceof LoadState.Loading) && !((lazyPagingItemsA.d().f18564c instanceof LoadState.Loading) && lazyPagingItemsA.b() == 0)) || storeModePLPFiltersViewState.f65035e;
            int i6 = WhenMappings.f64918a[pSPStyle.ordinal()];
            if (i6 == 1) {
                modifierE = WindowInsetsPadding_androidKt.e(new DTFunctionNameModifier("PSPStoreModeScreen"));
            } else {
                if (i6 != 2) {
                    v40.g();
                    return;
                }
                modifierE = new DTFunctionNameModifier("PSPStoreModeScreen");
            }
            ScaffoldKt.a(modifierE, ComposableLambdaKt.b(-155158363, new zl(pSPStyle, lazyPagingItemsA, storeModeContentUiModel, storeModePLPFiltersViewState, function6, function5, str, num, function8, function2, z), gapComposerH), null, ComposableLambdaKt.b(1428808103, new ae0(snackbarHostState, 21), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-839573776, new w8(lazyPagingItemsA, pSPViewState, str, function10, function12, function13, function14, productFilterViewState, function6, function7, function0, function3, function9, function15), gapComposerH), gapComposerH, 805309488, 244);
            PLPStoreModeSnackBarKt.a(snackbarHostState, lazyPagingItemsA, storeModeContentUiModel, flow, function4, gapComposerH, ((i4 >> 9) & 7168) | 70 | (57344 & (i5 << 9)));
            gapComposer = gapComposerH;
            PLPWishlistFeedbackWatcherKt.a(lazyPagingItemsA, flow, function1, function11, gapComposer, ((i4 >> 15) & 112) | 8 | ((i4 >> 18) & 896) | ((i5 >> 15) & 7168));
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: pl0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    PSPStoreModeScreenKt.a(pLPViewState, pSPViewState, pLPStoreModeViewState, storeModePLPFiltersViewState, productFilterViewState, pSPStyle, flow, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
