package defpackage;

import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDestinations;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDestinationsKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.search.SearchActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mb0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f76229c;

    public /* synthetic */ mb0(MainActivity mainActivity, int i2) {
        this.f76228b = i2;
        this.f76229c = mainActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76228b;
        MainActivity mainActivity = this.f76229c;
        switch (i2) {
            case 0:
                MainActivity.Companion companion = MainActivity.L;
                mainActivity.J().h2(false);
                mainActivity.J.a(SearchActivity.Companion.a(SearchActivity.y, mainActivity));
                return Unit.f71739a;
            case 1:
                MainActivity.Companion companion2 = MainActivity.L;
                IntentExtensionKt.b(FiltersDestinationsKt.a(new FiltersDestinations.ToTransparentFiltersPage(QafSource.PLP, FiltersDropDownType.SORT_BY), mainActivity), mainActivity.I);
                return Unit.f71739a;
            case 2:
                MainActivity.Companion companion3 = MainActivity.L;
                IntentExtensionKt.b(FiltersDestinationsKt.a(new FiltersDestinations.ToTransparentFiltersPage(QafSource.PLP, FiltersDropDownType.MORES_FILTERS), mainActivity), mainActivity.I);
                return Unit.f71739a;
            case 3:
                MainActivity.Companion companion4 = MainActivity.L;
                AICompanionActivity.v.getClass();
                mainActivity.startActivity(AICompanionActivity.Companion.a(mainActivity));
                mainActivity.overridePendingTransition(0, 0);
                return Unit.f71739a;
            case 4:
                ChatLifecycleObserver chatLifecycleObserver = mainActivity.x;
                if (chatLifecycleObserver != null) {
                    if (chatLifecycleObserver == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    chatLifecycleObserver.c(mainActivity);
                }
                return Unit.f71739a;
            case 5:
                MainActivity.Companion companion5 = MainActivity.L;
                ((QuickAccessFiltersViewModel) mainActivity.r.getF71699b()).o2(null);
                return Unit.f71739a;
            default:
                MainActivity.Companion companion6 = MainActivity.L;
                mainActivity.J().h2(true);
                return Unit.f71739a;
        }
    }
}
