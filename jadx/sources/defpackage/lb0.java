package defpackage;

import android.content.Intent;
import androidx.lifecycle.ViewModelLazy;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.redirectlink.LinkEffect;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainActivityUiEvent;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lb0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f75990c;

    public /* synthetic */ lb0(MainActivity mainActivity, int i2) {
        this.f75989b = i2;
        this.f75990c = mainActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Intent intentA;
        String stringExtra;
        int i2 = this.f75989b;
        MainActivity mainActivity = this.f75990c;
        switch (i2) {
            case 0:
                MainActivity.Companion companion = MainActivity.L;
                EdgeToEdgeKt.b(mainActivity, ((SystemIcons) obj).f43535a, false, 2);
                break;
            case 1:
                Intent intent = (Intent) obj;
                MainActivity.Companion companion2 = MainActivity.L;
                Integer numValueOf = intent != null ? Integer.valueOf(intent.getIntExtra("MAIN_ACTIVITY_REQUEST_CODE", 0)) : null;
                if ((numValueOf != null && numValueOf.intValue() == 163) || ((numValueOf != null && numValueOf.intValue() == 164) || (numValueOf != null && numValueOf.intValue() == 166))) {
                    mainActivity.I().B8();
                } else if (numValueOf != null && numValueOf.intValue() == 1461) {
                    Intent intentA2 = ServicesDestinationsKt.a(ServicesDestinations.ToCareServicesPage.f64292a, mainActivity);
                    if (intentA2 != null) {
                        mainActivity.startActivity(intentA2);
                    }
                } else if (numValueOf != null && numValueOf.intValue() == 1462 && (intentA = ServicesDestinationsKt.a(new ServicesDestinations.ToOsaPage(OsaRoutesName.LOGIN, null, null, null, false, OsaOriginScreen.CUSTOMER_SERVICES, null, false, 222, null), mainActivity)) != null) {
                    mainActivity.startActivity(intentA);
                }
                break;
            case 2:
                ViewModelLazy viewModelLazy = mainActivity.r;
                Intent intent2 = (Intent) obj;
                MainActivity.Companion companion3 = MainActivity.L;
                if (intent2 != null && (stringExtra = intent2.getStringExtra("FILTER_ID")) != null) {
                    QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) viewModelLazy.getF71699b();
                    String str = ((QuickAccessFiltersViewState) ((QuickAccessFiltersViewModel) viewModelLazy.getF71699b()).getL().getValue()).g;
                    if (str == null) {
                        str = "";
                    }
                    quickAccessFiltersViewModel.Y0(new FilterParams(str, stringExtra.length() == 0 ? null : stringExtra, QafSource.PLP, null, null, 24, null));
                }
                ((QuickAccessFiltersViewModel) viewModelLazy.getF71699b()).o2(null);
                break;
            default:
                MainActivity.Companion companion4 = MainActivity.L;
                mainActivity.J().F6(new MainActivityUiEvent.ShowAlreadySignedBottomSheet((LinkEffect.Dialog.AlreadySignedIn) obj));
                break;
        }
        return Unit.f71739a;
    }
}
