package defpackage;

import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute;
import com.vuitton.android.presentation.screen.booking.BookingRoutes;
import com.vuitton.android.presentation.screen.osa.OsaRoutes;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavBackStack f80981c;

    public /* synthetic */ x0(NavBackStack navBackStack, int i2) {
        this.f80980b = i2;
        this.f80981c = navBackStack;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80980b;
        NavBackStack navBackStack = this.f80981c;
        switch (i2) {
            case 0:
                Nav3ExtKt.b(navBackStack);
                return Unit.f71739a;
            case 1:
                Nav3ExtKt.b(navBackStack);
                return Unit.f71739a;
            case 2:
                navBackStack.clear();
                return Boolean.valueOf(navBackStack.f18396b.add(BookingRoutes.Confirmation.INSTANCE));
            case 3:
                Nav3ExtKt.c(navBackStack, BookingRoutes.Summary.INSTANCE, false);
                return Unit.f71739a;
            case 4:
                Nav3ExtKt.b(navBackStack);
                return Unit.f71739a;
            case 5:
                Nav3ExtKt.b(navBackStack);
                return Unit.f71739a;
            case 6:
                Nav3ExtKt.b(navBackStack);
                return Unit.f71739a;
            case 7:
                navBackStack.a(MyInformationRoute.EditTaxId.INSTANCE);
                return Unit.f71739a;
            case 8:
                navBackStack.a(MyInformationRoute.EditBranchId.INSTANCE);
                return Unit.f71739a;
            case 9:
                Nav3ExtKt.b(navBackStack);
                return Unit.f71739a;
            case 10:
                Nav3ExtKt.b(navBackStack);
                return Unit.f71739a;
            case 11:
                navBackStack.a(OsaRoutes.LocationForm.INSTANCE);
                return Unit.f71739a;
            case 12:
                navBackStack.a(OsaRoutes.LocationForm.INSTANCE);
                return Unit.f71739a;
            case 13:
                Nav3ExtKt.b(navBackStack);
                return Unit.f71739a;
            default:
                Nav3ExtKt.b(navBackStack);
                return Unit.f71739a;
        }
    }
}
