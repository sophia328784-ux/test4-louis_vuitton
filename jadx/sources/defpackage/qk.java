package defpackage;

import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qk implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModel f79102c;

    public /* synthetic */ qk(StoreModeViewModel storeModeViewModel, int i2) {
        this.f79101b = i2;
        this.f79102c = storeModeViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79101b;
        StoreModeViewModel storeModeViewModel = this.f79102c;
        switch (i2) {
            case 0:
                float f2 = CatalogStoreModeKt.f64850a;
                storeModeViewModel.S6(StoreModeTrackingUiModel.ExploreScreen.f65074a);
                break;
            case 1:
                float f3 = CatalogStoreModeKt.f64850a;
                storeModeViewModel.C6();
                break;
            default:
                storeModeViewModel.S6(StoreModeTrackingUiModel.CloseScreen.f65071a);
                break;
        }
        return Unit.f71739a;
    }
}
