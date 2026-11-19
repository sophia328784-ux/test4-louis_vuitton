package defpackage;

import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ok implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModel f76808c;
    public final /* synthetic */ NavHostController d;

    public /* synthetic */ ok(StoreModeViewModel storeModeViewModel, NavHostController navHostController, int i2) {
        this.f76807b = i2;
        this.f76808c = storeModeViewModel;
        this.d = navHostController;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76807b;
        NavHostController navHostController = this.d;
        StoreModeViewModel storeModeViewModel = this.f76808c;
        switch (i2) {
            case 0:
                float f2 = CatalogStoreModeKt.f64850a;
                storeModeViewModel.b1();
                NavController.d(navHostController, StoreModeRoute.Level1.INSTANCE, null, 6);
                break;
            case 1:
                float f3 = CatalogStoreModeKt.f64850a;
                if (storeModeViewModel.F()) {
                    float f4 = CatalogStoreModeKt.f64850a;
                    navHostController.e();
                }
                break;
            case 2:
                float f5 = CatalogStoreModeKt.f64850a;
                storeModeViewModel.getClass();
                if (storeModeViewModel.F()) {
                    float f6 = CatalogStoreModeKt.f64850a;
                    navHostController.e();
                }
                break;
            case 3:
                float f7 = CatalogStoreModeKt.f64850a;
                if (storeModeViewModel.F()) {
                    float f8 = CatalogStoreModeKt.f64850a;
                    navHostController.e();
                }
                break;
            case 4:
                float f9 = CatalogStoreModeKt.f64850a;
                storeModeViewModel.getClass();
                if (storeModeViewModel.F()) {
                    float f10 = CatalogStoreModeKt.f64850a;
                    navHostController.e();
                }
                break;
            case 5:
                float f11 = CatalogStoreModeKt.f64850a;
                storeModeViewModel.S6(StoreModeTrackingUiModel.ExploreClickedEvent.f65073a);
                if (storeModeViewModel.F()) {
                    float f12 = CatalogStoreModeKt.f64850a;
                    NavController.d(navHostController, StoreModeRoute.Level1.INSTANCE, null, 6);
                }
                break;
            case 6:
                float f13 = CatalogStoreModeKt.f64850a;
                storeModeViewModel.getClass();
                if (storeModeViewModel.F()) {
                    float f14 = CatalogStoreModeKt.f64850a;
                    navHostController.e();
                }
                break;
            default:
                storeModeViewModel.b7();
                NavController.d(navHostController, StoreModeRoute.StoreModeHome.INSTANCE, null, 6);
                break;
        }
        return Unit.f71739a;
    }
}
