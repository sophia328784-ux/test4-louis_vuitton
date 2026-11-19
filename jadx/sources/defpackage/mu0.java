package defpackage;

import android.content.Intent;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import com.vuitton.android.R;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDestinations;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDestinationsKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.search.SearchActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mu0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchActivity f76367c;

    public /* synthetic */ mu0(SearchActivity searchActivity, int i2) {
        this.f76366b = i2;
        this.f76367c = searchActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76366b;
        SearchActivity searchActivity = this.f76367c;
        switch (i2) {
            case 0:
                SearchActivity.Companion companion = SearchActivity.y;
                Intent intent = searchActivity.getIntent();
                if (intent != null) {
                    return intent.getStringExtra("RMS_CODE");
                }
                return null;
            case 1:
                SearchActivity.Companion companion2 = SearchActivity.y;
                IntentExtensionKt.b(FiltersDestinationsKt.a(new FiltersDestinations.ToTransparentFiltersPage(QafSource.SEARCH, FiltersDropDownType.MORES_FILTERS), searchActivity), searchActivity.x);
                return Unit.f71739a;
            case 2:
                SearchActivity.Companion companion3 = SearchActivity.y;
                SystemBarStyle.f684e.getClass();
                EdgeToEdge.a(searchActivity, SystemBarStyle.Companion.a(), SystemBarStyle.Companion.a());
                return Unit.f71739a;
            case 3:
                SearchActivity.Companion companion4 = SearchActivity.y;
                searchActivity.finish();
                searchActivity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                return Unit.f71739a;
            case 4:
                SearchActivity.Companion companion5 = SearchActivity.y;
                AICompanionActivity.v.getClass();
                searchActivity.startActivity(AICompanionActivity.Companion.a(searchActivity));
                return Unit.f71739a;
            case 5:
                SearchActivity.Companion companion6 = SearchActivity.y;
                Intent intent2 = searchActivity.getIntent();
                if (intent2 != null) {
                    return intent2.getStringExtra("SEARCH_QUERY");
                }
                return null;
            case 6:
                SearchActivity.Companion companion7 = SearchActivity.y;
                ((QuickAccessFiltersViewModel) searchActivity.v.getF71699b()).o2(null);
                return Unit.f71739a;
            default:
                SearchActivity.Companion companion8 = SearchActivity.y;
                IntentExtensionKt.b(FiltersDestinationsKt.a(new FiltersDestinations.ToTransparentFiltersPage(QafSource.SEARCH, FiltersDropDownType.SORT_BY), searchActivity), searchActivity.x);
                return Unit.f71739a;
        }
    }
}
