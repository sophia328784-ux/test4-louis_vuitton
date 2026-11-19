package defpackage;

import androidx.activity.result.ActivityResult;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.screen.booking.MyBookingsRoutes;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutes;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class od0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76755b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavBackStack f76756c;

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76755b;
        NavBackStack navBackStack = this.f76756c;
        switch (i2) {
            case 0:
                BookingUiModel bookingUiModel = (BookingUiModel) obj;
                bookingUiModel.getClass();
                navBackStack.a(new MyBookingsRoutes.Modify(bookingUiModel.f54615b, bookingUiModel.f54614a, null));
                break;
            default:
                ActivityResult activityResult = (ActivityResult) obj;
                OsaActivity.Companion companion = OsaActivity.u;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    OsaActivity.K(navBackStack, OsaRoutes.LocationForm.INSTANCE);
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ od0(OsaActivity osaActivity, NavBackStack navBackStack) {
        this.f76756c = navBackStack;
    }
}
