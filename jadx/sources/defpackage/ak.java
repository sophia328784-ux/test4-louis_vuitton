package defpackage;

import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ak implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewModel f530c;

    public /* synthetic */ ak(QuickAccessFiltersViewModel quickAccessFiltersViewModel, int i2) {
        this.f529b = i2;
        this.f530c = quickAccessFiltersViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f529b;
        QuickAccessFiltersTrackingUiModel.CloseFiltersEvent closeFiltersEvent = QuickAccessFiltersTrackingUiModel.CloseFiltersEvent.f58153a;
        QuickAccessFiltersViewModel quickAccessFiltersViewModel = this.f530c;
        switch (i2) {
            case 0:
                quickAccessFiltersViewModel.l0(new QuickAccessFiltersTrackingUiModel.FiltersErrorEvent(QafSource.PLP));
                break;
            case 1:
                quickAccessFiltersViewModel.l0(new QuickAccessFiltersTrackingUiModel.ClearAllFiltersEvent(QafSource.PLP));
                break;
            case 2:
                quickAccessFiltersViewModel.l0(closeFiltersEvent);
                break;
            case 3:
                quickAccessFiltersViewModel.l0(new QuickAccessFiltersTrackingUiModel.QuickAccessFiltersScreen(QafSource.PLP));
                break;
            case 4:
                quickAccessFiltersViewModel.l0(new QuickAccessFiltersTrackingUiModel.QuickAccessFiltersScreen(QafSource.PLP));
                break;
            case 5:
                quickAccessFiltersViewModel.l0(closeFiltersEvent);
                break;
            case 6:
                quickAccessFiltersViewModel.l0(new QuickAccessFiltersTrackingUiModel.FiltersErrorEvent(QafSource.SEARCH));
                break;
            default:
                quickAccessFiltersViewModel.l0(new QuickAccessFiltersTrackingUiModel.QuickAccessFiltersScreen(QafSource.SEARCH));
                break;
        }
        return Unit.f71739a;
    }
}
