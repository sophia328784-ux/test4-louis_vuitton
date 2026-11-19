package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.services.components.ServicesComposableKt;
import com.vuitton.android.presentation.screen.services.models.ServicesImmersiveArticlesKey;
import com.vuitton.android.presentation.screen.services.models.ServicesTrackingUiModel;
import com.vuitton.android.presentation.screen.services.models.ServicesUrls;
import com.vuitton.android.presentation.screen.services.models.ServicesViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cv0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ServicesViewModel f68338c;
    public final /* synthetic */ Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ State f68339e;

    public /* synthetic */ cv0(ServicesViewModel servicesViewModel, Context context, State state, int i2) {
        this.f68337b = i2;
        this.f68338c = servicesViewModel;
        this.d = context;
        this.f68339e = state;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:33:0x0085  */
    /* JADX WARN: Code duplicated, block: B:35:0x008f  */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        String str;
        Unit unit;
        String str2;
        Unit unit2;
        int i2 = this.f68337b;
        ServicesTrackingUiModel.OpenFaqEvent openFaqEvent = ServicesTrackingUiModel.OpenFaqEvent.f64390a;
        State state = this.f68339e;
        Context context = this.d;
        ServicesViewModel servicesViewModel = this.f68338c;
        switch (i2) {
            case 0:
                servicesViewModel.L7(openFaqEvent);
                ServicesUrls servicesUrls = ((ServicesViewState) state.getF10755b()).f64408f;
                ServicesComposableKt.b(context, servicesUrls != null ? servicesUrls.f64401e : null);
                break;
            case 1:
                servicesViewModel.L7(openFaqEvent);
                ServicesUrls servicesUrls2 = ((ServicesViewState) state.getF10755b()).f64408f;
                ServicesComposableKt.b(context, servicesUrls2 != null ? servicesUrls2.g : null);
                break;
            case 2:
                servicesViewModel.L7(ServicesTrackingUiModel.OpenCareServiceEvent.f64388a);
                ServicesUrls servicesUrls3 = ((ServicesViewState) state.getF10755b()).f64408f;
                ServicesComposableKt.b(context, servicesUrls3 != null ? servicesUrls3.f64402f : null);
                break;
            case 3:
                servicesViewModel.L7(ServicesTrackingUiModel.OpenPersonalizationEvent.f64394a);
                ServicesImmersiveArticlesKey servicesImmersiveArticlesKey = ((ServicesViewState) state.getF10755b()).g;
                if (servicesImmersiveArticlesKey == null || (str = servicesImmersiveArticlesKey.f64379b) == null) {
                    ServicesUrls servicesUrls4 = ((ServicesViewState) state.getF10755b()).f64408f;
                    ServicesComposableKt.b(context, servicesUrls4 != null ? servicesUrls4.f64400c : null);
                } else {
                    Intent intentA = ServicesDestinationsKt.a(new ServicesDestinations.ToImmersiveArticlePage(str), context);
                    if (intentA != null) {
                        context.startActivity(intentA);
                        unit = Unit.f71739a;
                    } else {
                        unit = null;
                    }
                    if (unit == null) {
                        ServicesUrls servicesUrls5 = ((ServicesViewState) state.getF10755b()).f64408f;
                        ServicesComposableKt.b(context, servicesUrls5 != null ? servicesUrls5.f64400c : null);
                    }
                }
                break;
            case 4:
                servicesViewModel.L7(ServicesTrackingUiModel.OpenArtOfGiftingEvent.f64387a);
                ServicesImmersiveArticlesKey servicesImmersiveArticlesKey2 = ((ServicesViewState) state.getF10755b()).g;
                if (servicesImmersiveArticlesKey2 == null || (str2 = servicesImmersiveArticlesKey2.f64378a) == null) {
                    ServicesUrls servicesUrls6 = ((ServicesViewState) state.getF10755b()).f64408f;
                    ServicesComposableKt.b(context, servicesUrls6 != null ? servicesUrls6.f64399b : null);
                } else {
                    Intent intentA2 = ServicesDestinationsKt.a(new ServicesDestinations.ToImmersiveArticlePage(str2), context);
                    if (intentA2 != null) {
                        context.startActivity(intentA2);
                        unit2 = Unit.f71739a;
                    } else {
                        unit2 = null;
                    }
                    if (unit2 == null) {
                        ServicesUrls servicesUrls7 = ((ServicesViewState) state.getF10755b()).f64408f;
                        ServicesComposableKt.b(context, servicesUrls7 != null ? servicesUrls7.f64399b : null);
                    }
                }
                break;
            default:
                servicesViewModel.L7(ServicesTrackingUiModel.OpenContactUsEvent.f64389a);
                ServicesUrls servicesUrls8 = ((ServicesViewState) state.getF10755b()).f64408f;
                ServicesComposableKt.b(context, servicesUrls8 != null ? servicesUrls8.d : null);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ cv0(ServicesViewModel servicesViewModel, State state, Context context, int i2) {
        this.f68337b = i2;
        this.f68338c = servicesViewModel;
        this.f68339e = state;
        this.d = context;
    }
}
