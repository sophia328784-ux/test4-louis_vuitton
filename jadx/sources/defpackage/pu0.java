package defpackage;

import com.vuitton.android.domain.monitoring.search.SearchPanelExitContext;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pu0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f78928c;
    public final /* synthetic */ SearchViewModel d;

    public /* synthetic */ pu0(SearchViewModel searchViewModel, Function1 function1) {
        this.f78927b = 0;
        this.d = searchViewModel;
        this.f78928c = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f78927b;
        SearchViewModel searchViewModel = this.d;
        Function1 function1 = this.f78928c;
        switch (i2) {
            case 0:
                HistoryItemUiModel.HistoryProductUiModel historyProductUiModel = (HistoryItemUiModel.HistoryProductUiModel) obj;
                historyProductUiModel.getClass();
                searchViewModel.S5(SearchPanelExitContext.PDP);
                function1.invoke(new SkuIdUiModel(historyProductUiModel.f64241a));
                searchViewModel.N9(historyProductUiModel);
                break;
            case 1:
                HistoryItemUiModel.HistoryResearchUiModel historyResearchUiModel = (HistoryItemUiModel.HistoryResearchUiModel) obj;
                historyResearchUiModel.getClass();
                String str = historyResearchUiModel.f64246a;
                function1.invoke(str);
                searchViewModel.x7(new SearchTrackingUiModel.OnHitOnTextualHistory(str));
                break;
            case 2:
                String str2 = (String) obj;
                str2.getClass();
                function1.invoke(str2);
                searchViewModel.x7(new SearchTrackingUiModel.OnHitOnTrending(str2));
                break;
            default:
                String str3 = (String) obj;
                str3.getClass();
                function1.invoke(str3);
                searchViewModel.x7(new SearchTrackingUiModel.OnHitOnAutocomplete(str3));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ pu0(Function1 function1, SearchViewModel searchViewModel, int i2) {
        this.f78927b = i2;
        this.f78928c = function1;
        this.d = searchViewModel;
    }
}
