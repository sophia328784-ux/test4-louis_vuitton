package defpackage;

import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hl0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductFilterViewModel f69740c;

    public /* synthetic */ hl0(ProductFilterViewModel productFilterViewModel, int i2) {
        this.f69739b = i2;
        this.f69740c = productFilterViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69739b;
        ProductFilterTrackingUiModel.LeaveFiltersEvent leaveFiltersEvent = ProductFilterTrackingUiModel.LeaveFiltersEvent.f65017a;
        ProductFilterViewModel productFilterViewModel = this.f69740c;
        switch (i2) {
            case 0:
                productFilterViewModel.Ac(false);
                break;
            case 1:
                productFilterViewModel.Cc(leaveFiltersEvent);
                break;
            case 2:
                productFilterViewModel.Ac(true);
                break;
            default:
                productFilterViewModel.Cc(leaveFiltersEvent);
                break;
        }
        return Unit.f71739a;
    }
}
