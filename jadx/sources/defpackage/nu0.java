package defpackage;

import android.content.Intent;
import androidx.lifecycle.ViewModelLazy;
import com.vuitton.android.domain.monitoring.search.SearchPanelExitContext;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.search.SearchActivity;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nu0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchActivity f76617c;

    public /* synthetic */ nu0(SearchActivity searchActivity, int i2) {
        this.f76616b = i2;
        this.f76617c = searchActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String stringExtra;
        int i2 = this.f76616b;
        SearchActivity searchActivity = this.f76617c;
        switch (i2) {
            case 0:
                Intent intent = (Intent) obj;
                SearchActivity.Companion companion = SearchActivity.y;
                ViewModelLazy viewModelLazy = searchActivity.v;
                ((QuickAccessFiltersViewModel) viewModelLazy.getF71699b()).o2(null);
                if (intent != null && (stringExtra = intent.getStringExtra("FILTER_ID")) != null) {
                    QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) viewModelLazy.getF71699b();
                    String str = ((QuickAccessFiltersViewState) ((QuickAccessFiltersViewModel) viewModelLazy.getF71699b()).getL().getValue()).g;
                    if (str == null) {
                        str = "";
                    }
                    quickAccessFiltersViewModel.Y0(new FilterParams(str, stringExtra.length() == 0 ? null : stringExtra, QafSource.SEARCH, null, FilterType.SORT, 8, null));
                }
                break;
            case 1:
                String str2 = (String) obj;
                SearchActivity.Companion companion2 = SearchActivity.y;
                str2.getClass();
                ((SearchViewModel) searchActivity.t.getF71699b()).S5(SearchPanelExitContext.PSP);
                searchActivity.setResult(-1, new Intent().putExtra("SEARCH_QUERY", str2));
                searchActivity.finish();
                break;
            default:
                String str3 = (String) obj;
                SearchActivity.Companion companion3 = SearchActivity.y;
                str3.getClass();
                ((SearchViewModel) searchActivity.t.getF71699b()).S5(SearchPanelExitContext.DISMISS);
                searchActivity.setResult(0, new Intent().putExtra("SEARCH_QUERY", str3));
                searchActivity.finish();
                break;
        }
        return Unit.f71739a;
    }
}
