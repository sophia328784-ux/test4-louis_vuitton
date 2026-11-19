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
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL2UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.a;
import defpackage.es0;
import defpackage.ni0;
import defpackage.o;
import defpackage.sq0;
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
public abstract class StoreModeLevel3ScreenKt {
    /* JADX WARN: Code duplicated, block: B:64:0x00f8  */
    public static final void a(StoreModeViewModel storeModeViewModel, StoreModeViewState storeModeViewState, String str, String str2, Function1 function1, Function0 function0, Function0 function2, Composer composer, int i2) {
        StoreModeCategoryL2UiModel storeModeCategoryL2UiModel;
        boolean z;
        StoreModeCatalogUiModel storeModeCatalogUiModel;
        List list;
        Object next;
        List list2;
        Object next2;
        storeModeViewModel.getClass();
        storeModeViewState.getClass();
        str.getClass();
        str2.getClass();
        function1.getClass();
        GapComposer gapComposerC = a.c(function0, function2, composer, -1565481271);
        int i3 = i2 | (gapComposerC.K(storeModeViewModel) ? 4 : 2) | (gapComposerC.y(storeModeViewState) ? 32 : 16) | (gapComposerC.K(str) ? 256 : 128) | (gapComposerC.K(str2) ? 2048 : 1024) | (gapComposerC.y(function1) ? 16384 : 8192) | (gapComposerC.y(function0) ? 131072 : 65536) | (gapComposerC.y(function2) ? 1048576 : 524288);
        if (gapComposerC.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(storeModeViewModel.d8(), gapComposerC);
            StoreModeCatalogState storeModeCatalogState = (StoreModeCatalogState) mutableStateB.getF10755b();
            StoreModeCatalogState.StoreModeCatalogUIModel storeModeCatalogUIModel = storeModeCatalogState instanceof StoreModeCatalogState.StoreModeCatalogUIModel ? (StoreModeCatalogState.StoreModeCatalogUIModel) storeModeCatalogState : null;
            if (storeModeCatalogUIModel == null || (storeModeCatalogUiModel = storeModeCatalogUIModel.f64772a) == null || (list = storeModeCatalogUiModel.f65041b) == null) {
                storeModeCategoryL2UiModel = null;
            } else {
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((StoreModeCategoryL1UiModel) next).f65042a, str));
                StoreModeCategoryL1UiModel storeModeCategoryL1UiModel = (StoreModeCategoryL1UiModel) next;
                if (storeModeCategoryL1UiModel == null || (list2 = storeModeCategoryL1UiModel.f65044c) == null) {
                    storeModeCategoryL2UiModel = null;
                } else {
                    Iterator it2 = list2.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it2.next();
                    } while (!Intrinsics.c(((StoreModeCategoryL2UiModel) next2).f65045a, str2));
                    storeModeCategoryL2UiModel = (StoreModeCategoryL2UiModel) next2;
                }
            }
            boolean z2 = ((StoreModeCatalogState) mutableStateB.getF10755b()) instanceof StoreModeCatalogState.Loading;
            boolean z3 = (3670016 & i3) == 1048576;
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                objX = new sq0(function2, 24);
                gapComposerC.q(objX);
            }
            BackHandlerKt.a(false, (Function0) objX, gapComposerC, 0, 1);
            if (z2) {
                gapComposerC.L(-1188926121);
                ProgressViewKt.a(null, 0L, false, gapComposerC, 0, 7);
                gapComposerC.Z(false);
            } else if (storeModeCategoryL2UiModel != null) {
                gapComposerC.L(1798113560);
                StoreModeCategoryL2UiModel storeModeCategoryL2UiModel2 = storeModeCategoryL2UiModel;
                ScaffoldKt.a(null, ComposableLambdaKt.b(-1699914834, new es0(storeModeCategoryL2UiModel, function0, 11), gapComposerC), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-1180296967, new ni0(storeModeCategoryL2UiModel, function1, 29), gapComposerC), gapComposerC, 805306416, NSType.MAILB);
                Unit unit = Unit.f71739a;
                if ((i3 & 14) != 4) {
                    gapComposerC = gapComposerC;
                    z = false;
                } else {
                    gapComposerC = gapComposerC;
                    z = true;
                }
                boolean zY = gapComposerC.y(storeModeCategoryL2UiModel2) | z | gapComposerC.y(storeModeViewState);
                Object objX2 = gapComposerC.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new StoreModeLevel3ScreenKt$StoreModeLevel3Screen$4$1(storeModeViewModel, storeModeCategoryL2UiModel2, storeModeViewState, null);
                    gapComposerC.q(objX2);
                }
                EffectsKt.e(gapComposerC, unit, (Function2) objX2);
                gapComposerC.Z(false);
            } else {
                gapComposerC.L(-1188855200);
                gapComposerC.Z(false);
                LegacyLogger.f66205a.c("Catalog Store mode", "No catalog to display", null);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(storeModeViewModel, storeModeViewState, str, str2, function1, function0, function2, i2);
        }
    }
}
