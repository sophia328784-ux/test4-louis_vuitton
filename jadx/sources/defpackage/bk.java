package defpackage;

import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bk implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewModel f20893c;

    public /* synthetic */ bk(QuickAccessFiltersViewModel quickAccessFiltersViewModel, int i2) {
        this.f20892b = i2;
        this.f20893c = quickAccessFiltersViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f20892b;
        QuickAccessFiltersViewModel quickAccessFiltersViewModel = this.f20893c;
        String str = (String) obj;
        switch (i2) {
            case 0:
                str.getClass();
                quickAccessFiltersViewModel.l0(new QuickAccessFiltersTrackingUiModel.SwipeSimpleFiltersEvent(str));
                break;
            case 1:
                str.getClass();
                quickAccessFiltersViewModel.l0(new QuickAccessFiltersTrackingUiModel.SwipeSimpleFiltersEvent(str));
                break;
            default:
                str.getClass();
                quickAccessFiltersViewModel.l0(new QuickAccessFiltersTrackingUiModel.SwipeSimpleFiltersEvent(str));
                break;
        }
        return Unit.f71739a;
    }
}
