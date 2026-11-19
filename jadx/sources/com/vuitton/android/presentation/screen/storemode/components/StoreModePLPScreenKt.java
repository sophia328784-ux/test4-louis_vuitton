package com.vuitton.android.presentation.screen.storemode.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl;
import com.vuitton.android.presentation.screen.storemode.StoreModeCatalogState;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeComposableKt;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCatalogUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import defpackage.gi0;
import defpackage.md;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;", "storeModeCatalog", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModePLPScreenKt {
    public static final void a(StoreModeViewModel storeModeViewModel, String str, Function0 function0, Composer composer, int i2) {
        storeModeViewModel.getClass();
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-2037600308);
        int i3 = i2 | (gapComposerH.K(storeModeViewModel) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        boolean z = false;
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(storeModeViewModel.d8(), gapComposerH);
            StoreModeCatalogState storeModeCatalogState = (StoreModeCatalogState) mutableStateB.getF10755b();
            StoreModeCatalogState.StoreModeCatalogUIModel storeModeCatalogUIModel = storeModeCatalogState instanceof StoreModeCatalogState.StoreModeCatalogUIModel ? (StoreModeCatalogState.StoreModeCatalogUIModel) storeModeCatalogState : null;
            StoreModeCatalogUiModel storeModeCatalogUiModel = storeModeCatalogUIModel != null ? storeModeCatalogUIModel.f64772a : null;
            if (((StoreModeCatalogState) mutableStateB.getF10755b()) instanceof StoreModeCatalogState.Loading) {
                gapComposerH.L(371204314);
                ProgressViewKt.a(null, 0L, false, gapComposerH, 0, 7);
                gapComposerH.Z(false);
            } else if (storeModeCatalogUiModel != null) {
                gapComposerH.L(-1377514150);
                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
                if (viewModelStoreOwnerA == null) {
                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                Object objA = ViewModelKt.a(Reflection.f71922a.b(PLPStoreModeViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, gapComposerH), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
                gapComposerH = gapComposerH;
                PLPStoreModeViewModel pLPStoreModeViewModel = (PLPStoreModeViewModel) objA;
                gapComposerH.L(371211478);
                EnumEntries enumEntriesB = StoreModeContentUiModel.b();
                int iG = MapsKt.g(CollectionsKt.t(enumEntriesB, 10));
                LinkedHashMap linkedHashMap = new LinkedHashMap(iG >= 16 ? iG : 16);
                for (Object obj : enumEntriesB) {
                    String strName = ((StoreModeContentUiModel) obj).name();
                    ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(gapComposerH);
                    if (viewModelStoreOwnerA2 == null) {
                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return;
                    }
                    HiltViewModelFactory hiltViewModelFactoryA = HiltViewModelKt.a(viewModelStoreOwnerA2, gapComposerH);
                    GapComposer gapComposer = gapComposerH;
                    gapComposerH = gapComposer;
                    linkedHashMap.put(obj, (ProductFilterViewModel) ViewModelKt.a(Reflection.f71922a.b(ProductFilterViewModel.class), viewModelStoreOwnerA2, strName, hiltViewModelFactoryA, viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposer));
                    z = false;
                }
                boolean z2 = z;
                gapComposerH.Z(z2);
                PLPStoreModeComposableKt.a(pLPStoreModeViewModel, linkedHashMap, str, function0, gapComposerH, (i3 << 3) & 8064);
                gapComposerH.Z(z2);
            } else {
                gapComposerH.L(371219459);
                gapComposerH.Z(false);
                LegacyLogger.f66205a.c("Catalog Store mode", "No catalog to display", null);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 28, storeModeViewModel, str, function0);
        }
    }
}
