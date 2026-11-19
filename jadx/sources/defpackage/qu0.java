package defpackage;

import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qu0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchViewModel f79169c;

    public /* synthetic */ qu0(SearchViewModel searchViewModel, int i2) {
        this.f79168b = i2;
        this.f79169c = searchViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79168b;
        SearchViewModel searchViewModel = this.f79169c;
        switch (i2) {
            case 0:
                searchViewModel.x7(SearchTrackingUiModel.OnSwipeResultCarousel.f64281a);
                break;
            case 1:
                searchViewModel.x7(SearchTrackingUiModel.OnSwipeSuggestionCarousel.f64282a);
                break;
            default:
                searchViewModel.P3(null);
                break;
        }
        return Unit.f71739a;
    }
}
