package com.vuitton.android.presentation.screen.exclusivesales;

import com.vuitton.android.presentation.screen.exclusivesales.models.ExclusiveSalesTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.activities.ExclusivePLPActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ExclusiveSalesActivity$onCreate$1$1$2$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        ExclusiveSalesActivity exclusiveSalesActivity = (ExclusiveSalesActivity) this.receiver;
        ExclusiveSalesActivity.Companion companion = ExclusiveSalesActivity.q;
        ((ExclusiveSalesViewModel) exclusiveSalesActivity.p.getF71699b()).C8(new ExclusiveSalesTrackingUiModel.ExclusiveSalesSelectionEvent(str));
        ExclusiveSalesDestinations.RouteToProductListPage routeToProductListPage = new ExclusiveSalesDestinations.RouteToProductListPage(str);
        ExclusivePLPActivity.p.getClass();
        exclusiveSalesActivity.startActivity(ExclusivePLPActivity.Companion.a(exclusiveSalesActivity, routeToProductListPage.f57530a));
        return Unit.f71739a;
    }
}
