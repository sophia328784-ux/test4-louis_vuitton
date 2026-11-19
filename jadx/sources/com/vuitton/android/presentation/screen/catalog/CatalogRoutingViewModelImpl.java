package com.vuitton.android.presentation.screen.catalog;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.domain.usecase.storemode.DisableStoreModeUseCase;
import com.vuitton.android.domain.usecase.storemode.IsStoreModeStillValidUseCase;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;", "isStoreModeStillValidUseCase", "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;", "disableStoreModeUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CatalogRoutingViewModelImpl extends ViewModel implements CatalogRoutingViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f55227a;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f55228a;

        static {
            int[] iArr = new int[StoreModeLaunchMode.values().length];
            try {
                iArr[StoreModeLaunchMode.NEW_FROM_DEEPLINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StoreModeLaunchMode.NEW_FROM_QRCODE_SCAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StoreModeLaunchMode.MAYBE_ONGOING_SESSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f55228a = iArr;
        }
    }

    @Inject
    public CatalogRoutingViewModelImpl(SavedStateHandle savedStateHandle, IsStoreModeStillValidUseCase isStoreModeStillValidUseCase, DisableStoreModeUseCase disableStoreModeUseCase) {
        savedStateHandle.getClass();
        isStoreModeStillValidUseCase.getClass();
        disableStoreModeUseCase.getClass();
        CatalogRoute catalogRoute = (CatalogRoute) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(CatalogRoute.class), MapsKt.c());
        CatalogRoutingState.Catalog catalog = CatalogRoutingState.Catalog.f55225a;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(catalog);
        this.f55227a = mutableStateFlowA;
        StoreModeLaunchMode storeModeLaunchMode = catalogRoute.d;
        int i2 = storeModeLaunchMode == null ? -1 : WhenMappings.f55228a[storeModeLaunchMode.ordinal()];
        if (i2 == -1) {
            mutableStateFlowA.setValue(catalog);
            return;
        }
        if (i2 == 1) {
            mutableStateFlowA.setValue(new CatalogRoutingState.StoreMode(false));
            return;
        }
        if (i2 == 2) {
            mutableStateFlowA.setValue(new CatalogRoutingState.StoreMode(false));
            return;
        }
        if (i2 != 3) {
            v40.g();
            throw null;
        }
        if (catalogRoute.f59152b != null) {
            Boolean boolC = isStoreModeStillValidUseCase.f50405a.c();
            Result.Companion companion = Result.INSTANCE;
            boolean zBooleanValue = boolC.booleanValue();
            if (!zBooleanValue) {
                disableStoreModeUseCase.a();
            }
            if (zBooleanValue) {
                mutableStateFlowA.setValue(new CatalogRoutingState.StoreMode(true));
                return;
            }
        }
        mutableStateFlowA.setValue(catalog);
    }

    @Override // com.vuitton.android.presentation.screen.catalog.CatalogRoutingViewModel
    public final StateFlow D3() {
        return this.f55227a;
    }
}
