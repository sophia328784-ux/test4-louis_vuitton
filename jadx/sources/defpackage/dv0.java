package defpackage;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.services.models.ServicesTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dv0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ServicesViewModel f68679c;
    public final /* synthetic */ Context d;

    public /* synthetic */ dv0(ServicesViewModel servicesViewModel, Context context, int i2) {
        this.f68678b = i2;
        this.f68679c = servicesViewModel;
        this.d = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68678b;
        Context context = this.d;
        ServicesViewModel servicesViewModel = this.f68679c;
        switch (i2) {
            case 0:
                servicesViewModel.L7(ServicesTrackingUiModel.OpenPersonalSelectionEvent.f64393a);
                Intent intentA = ServicesDestinationsKt.a(ServicesDestinations.ToPersonalSelectionsPage.f64301a, context);
                if (intentA != null) {
                    context.startActivity(intentA);
                }
                break;
            default:
                servicesViewModel.L7(ServicesTrackingUiModel.OpenLVPassEvent.f64391a);
                LVPassActivity.s.getClass();
                context.startActivity(LVPassActivity.Companion.a(context));
                break;
        }
        return Unit.f71739a;
    }
}
