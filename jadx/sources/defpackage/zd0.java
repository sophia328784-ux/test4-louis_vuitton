package defpackage;

import android.content.Context;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinations;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinationsKt;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zd0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyLvViewModel f81603c;
    public final /* synthetic */ Context d;

    public /* synthetic */ zd0(MyLvViewModel myLvViewModel, Context context, int i2) {
        this.f81602b = i2;
        this.f81603c = myLvViewModel;
        this.d = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f81602b;
        MyLvDestinations.ToLVPassPage toLVPassPage = MyLvDestinations.ToLVPassPage.f59247a;
        MyLvTrackingUiModel.ClickOnQrCodeEvent clickOnQrCodeEvent = MyLvTrackingUiModel.ClickOnQrCodeEvent.f59427a;
        Context context = this.d;
        MyLvViewModel myLvViewModel = this.f81603c;
        switch (i2) {
            case 0:
                myLvViewModel.W(MyLvTrackingUiModel.OpenSettingsEvent.f59443a);
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToOptionsPage.f59251a, context));
                break;
            case 1:
                myLvViewModel.W(MyLvTrackingUiModel.OpenMyIconsEvent.f59438a);
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToMyIcons.f59249a, context));
                break;
            case 2:
                myLvViewModel.W(MyLvTrackingUiModel.OpenAddressBookEvent.f59432a);
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToAddressBookPage.f59237a, context));
                break;
            case 3:
                myLvViewModel.W(MyLvTrackingUiModel.OpenMyNotificationsEvent.f59440a);
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToInboxPage.f59246a, context));
                break;
            case 4:
                myLvViewModel.W(MyLvTrackingUiModel.OpenMyAppointmentsEvent.f59436a);
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToOsaPage.f59255a, context));
                break;
            case 5:
                myLvViewModel.W(MyLvTrackingUiModel.OpenOrdersEvent.f59441a);
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToOrdersPage.f59254a, context));
                break;
            case 6:
                myLvViewModel.W(MyLvTrackingUiModel.OpenMyCertificatesEvent.f59437a);
                context.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToCertificatesPage(null, 1, null), context));
                break;
            case 7:
                myLvViewModel.W(MyLvTrackingUiModel.OpenConnectivityEvent.f59434a);
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToConnectivityPage.f59240a, context));
                break;
            case 8:
                myLvViewModel.W(clickOnQrCodeEvent);
                context.startActivity(MyLvDestinationsKt.a(toLVPassPage, context));
                break;
            case 9:
                myLvViewModel.W(clickOnQrCodeEvent);
                context.startActivity(MyLvDestinationsKt.a(toLVPassPage, context));
                break;
            case 10:
                myLvViewModel.W(MyLvTrackingUiModel.OpenProfileEvent.f59442a);
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToMyInformationPage.f59250a, context));
                break;
            default:
                myLvViewModel.W(MyLvTrackingUiModel.OpenExclusiveSalesEvent.f59435a);
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToExclusiveSalesPage.f59244a, context));
                break;
        }
        return Unit.f71739a;
    }
}
