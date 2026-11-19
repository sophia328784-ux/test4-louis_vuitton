package defpackage;

import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDestinations;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDestinationsKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinations;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinationsKt;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jk implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogPLPActivity f71415c;

    public /* synthetic */ jk(CatalogPLPActivity catalogPLPActivity, int i2) {
        this.f71414b = i2;
        this.f71415c = catalogPLPActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71414b;
        CatalogPLPActivity catalogPLPActivity = this.f71415c;
        switch (i2) {
            case 0:
                CatalogPLPActivity.Companion companion = CatalogPLPActivity.x;
                catalogPLPActivity.I().o2(null);
                return Unit.f71739a;
            case 1:
                CatalogPLPActivity.Companion companion2 = CatalogPLPActivity.x;
                catalogPLPActivity.startActivity(PLPDestinationsKt.a(PLPDestinations.ToWishlistPage.f62717a, catalogPLPActivity));
                return Unit.f71739a;
            case 2:
                CatalogPLPActivity.Companion companion3 = CatalogPLPActivity.x;
                QuickAccessFiltersViewModel quickAccessFiltersViewModelI = catalogPLPActivity.I();
                FiltersDropDownType filtersDropDownType = FiltersDropDownType.MORES_FILTERS;
                quickAccessFiltersViewModelI.o2(filtersDropDownType);
                IntentExtensionKt.b(FiltersDestinationsKt.a(new FiltersDestinations.ToTransparentFiltersPage(QafSource.PLP, filtersDropDownType), catalogPLPActivity), catalogPLPActivity.w);
                return Unit.f71739a;
            case 3:
                CatalogPLPActivity.Companion companion4 = CatalogPLPActivity.x;
                catalogPLPActivity.startActivity(PLPDestinationsKt.a(PLPDestinations.ToAICompanionPage.f62716a, catalogPLPActivity));
                return Unit.f71739a;
            case 4:
                ChatLifecycleObserver chatLifecycleObserver = catalogPLPActivity.r;
                if (chatLifecycleObserver != null) {
                    if (chatLifecycleObserver == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    chatLifecycleObserver.c(catalogPLPActivity);
                }
                return Unit.f71739a;
            case 5:
                CatalogPLPActivity.Companion companion5 = CatalogPLPActivity.x;
                catalogPLPActivity.I().l0(new QuickAccessFiltersTrackingUiModel.FiltersErrorEvent(QafSource.PLP));
                return Unit.f71739a;
            case 6:
                CatalogPLPActivity.Companion companion6 = CatalogPLPActivity.x;
                catalogPLPActivity.I().l0(new QuickAccessFiltersTrackingUiModel.ClearAllFiltersEvent(QafSource.PLP));
                return Unit.f71739a;
            case 7:
                CatalogPLPActivity.Companion companion7 = CatalogPLPActivity.x;
                catalogPLPActivity.I().l0(QuickAccessFiltersTrackingUiModel.CloseFiltersEvent.f58153a);
                return Unit.f71739a;
            case 8:
                CatalogPLPActivity.Companion companion8 = CatalogPLPActivity.x;
                QuickAccessFiltersViewModel quickAccessFiltersViewModelI2 = catalogPLPActivity.I();
                FiltersDropDownType filtersDropDownType2 = FiltersDropDownType.SORT_BY;
                quickAccessFiltersViewModelI2.o2(filtersDropDownType2);
                IntentExtensionKt.b(FiltersDestinationsKt.a(new FiltersDestinations.ToTransparentFiltersPage(QafSource.PLP, filtersDropDownType2), catalogPLPActivity), catalogPLPActivity.w);
                return Unit.f71739a;
            case 9:
                CatalogPLPActivity.Companion companion9 = CatalogPLPActivity.x;
                catalogPLPActivity.I().l0(new QuickAccessFiltersTrackingUiModel.QuickAccessFiltersScreen(QafSource.PLP));
                return Unit.f71739a;
            default:
                CatalogPLPActivity.Companion companion10 = CatalogPLPActivity.x;
                catalogPLPActivity.H().O0(PLPTrackingUiModel.DispatchFilterSwipedEvent.f62886a);
                return Unit.f71739a;
        }
    }
}
