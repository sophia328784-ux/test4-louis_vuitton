package com.vuitton.android.presentation.screen.storemode.components.catalog;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.storemode.StoreModeCatalogState;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCatalogUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL1UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.es0;
import defpackage.ni0;
import defpackage.sq0;
import defpackage.zs0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;", "storeModeCatalog", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeLevel2ScreenKt {
    public static final void a(StoreModeViewModel storeModeViewModel, StoreModeViewState storeModeViewState, String str, Function1 function1, Function0 function0, Function0 function2, Composer composer, int i2) {
        StoreModeCategoryL1UiModel storeModeCategoryL1UiModel;
        boolean z;
        StoreModeCatalogUiModel storeModeCatalogUiModel;
        List list;
        Object next;
        storeModeViewModel.getClass();
        storeModeViewState.getClass();
        str.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(549465454);
        int i3 = i2 | (gapComposerH.K(storeModeViewModel) ? 4 : 2) | (gapComposerH.y(storeModeViewState) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(storeModeViewModel.d8(), gapComposerH);
            StoreModeCatalogState storeModeCatalogState = (StoreModeCatalogState) mutableStateB.getF10755b();
            StoreModeCatalogState.StoreModeCatalogUIModel storeModeCatalogUIModel = storeModeCatalogState instanceof StoreModeCatalogState.StoreModeCatalogUIModel ? (StoreModeCatalogState.StoreModeCatalogUIModel) storeModeCatalogState : null;
            if (storeModeCatalogUIModel == null || (storeModeCatalogUiModel = storeModeCatalogUIModel.f64772a) == null || (list = storeModeCatalogUiModel.f65041b) == null) {
                storeModeCategoryL1UiModel = null;
            } else {
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((StoreModeCategoryL1UiModel) next).f65042a, str));
                storeModeCategoryL1UiModel = (StoreModeCategoryL1UiModel) next;
            }
            boolean z2 = ((StoreModeCatalogState) mutableStateB.getF10755b()) instanceof StoreModeCatalogState.Loading;
            boolean z3 = (458752 & i3) == 131072;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                objX = new sq0(function2, 23);
                gapComposerH.q(objX);
            }
            BackHandlerKt.a(false, (Function0) objX, gapComposerH, 0, 1);
            if (z2) {
                gapComposerH.L(-244654852);
                ProgressViewKt.a(null, 0L, false, gapComposerH, 0, 7);
                gapComposerH.Z(false);
            } else if (storeModeCategoryL1UiModel != null) {
                gapComposerH.L(1005751827);
                StoreModeCategoryL1UiModel storeModeCategoryL1UiModel2 = storeModeCategoryL1UiModel;
                ScaffoldKt.a(null, ComposableLambdaKt.b(625934377, new es0(storeModeCategoryL1UiModel, function0, 10), gapComposerH), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-550383298, new ni0(storeModeCategoryL1UiModel, function1, 28), gapComposerH), gapComposerH, 805306416, NSType.MAILB);
                Unit unit = Unit.f71739a;
                if ((i3 & 14) != 4) {
                    gapComposerH = gapComposerH;
                    z = false;
                } else {
                    gapComposerH = gapComposerH;
                    z = true;
                }
                boolean zY = gapComposerH.y(storeModeCategoryL1UiModel2) | z | gapComposerH.y(storeModeViewState);
                Object objX2 = gapComposerH.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new StoreModeLevel2ScreenKt$StoreModeLevel2Screen$4$1(storeModeViewModel, storeModeCategoryL1UiModel2, storeModeViewState, null);
                    gapComposerH.q(objX2);
                }
                EffectsKt.e(gapComposerH, unit, (Function2) objX2);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-244583931);
                gapComposerH.Z(false);
                LegacyLogger.f66205a.c("Catalog Store mode", "No catalog to display", null);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0(storeModeViewModel, storeModeViewState, str, function1, function0, function2, i2);
        }
    }
}
