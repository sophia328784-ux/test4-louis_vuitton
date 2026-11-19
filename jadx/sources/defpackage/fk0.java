package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fk0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewModel f69165c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ fk0(QuickAccessFiltersViewModel quickAccessFiltersViewModel, MutableState mutableState, int i2) {
        this.f69164b = i2;
        this.f69165c = quickAccessFiltersViewModel;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str;
        String str2;
        int i2 = this.f69164b;
        String str3 = null;
        MutableState mutableState = this.d;
        QuickAccessFiltersViewModel quickAccessFiltersViewModel = this.f69165c;
        String str4 = (String) obj;
        FilterType filterType = (FilterType) obj2;
        switch (i2) {
            case 0:
                str4.getClass();
                filterType.getClass();
                FilterType filterType2 = FilterType.SORT;
                if (filterType == filterType2) {
                    String str5 = ((QuickAccessFiltersViewState) mutableState.getF10755b()).g;
                    str = str5 == null ? "" : str5;
                } else {
                    str = str4;
                }
                if (filterType != filterType2) {
                    str3 = ((QuickAccessFiltersViewState) mutableState.getF10755b()).f58174h;
                } else if (str4.length() != 0) {
                    str3 = str4;
                }
                quickAccessFiltersViewModel.Y0(new FilterParams(str, str3, QafSource.PLP, null, filterType, 8, null));
                break;
            default:
                str4.getClass();
                filterType.getClass();
                FilterType filterType3 = FilterType.SORT;
                if (filterType == filterType3) {
                    String str6 = ((QuickAccessFiltersViewState) mutableState.getF10755b()).g;
                    str2 = str6 == null ? "" : str6;
                } else {
                    str2 = str4;
                }
                if (filterType != filterType3) {
                    str3 = ((QuickAccessFiltersViewState) mutableState.getF10755b()).f58174h;
                } else if (str4.length() != 0) {
                    str3 = str4;
                }
                quickAccessFiltersViewModel.Y0(new FilterParams(str2, str3, QafSource.SEARCH, null, filterType, 8, null));
                break;
        }
        return Unit.f71739a;
    }
}
