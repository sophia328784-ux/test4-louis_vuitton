package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.main.MainActivityRouter;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinations;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinationsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ce0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModel f21136c;
    public final /* synthetic */ Context d;

    public /* synthetic */ ce0(AuthenticationViewModel authenticationViewModel, Context context, int i2) {
        this.f21135b = i2;
        this.f21136c = authenticationViewModel;
        this.d = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f21135b;
        MyLvDestinations.ToOptionsPage toOptionsPage = MyLvDestinations.ToOptionsPage.f59251a;
        MyLvDestinations.ToConnectivityPage toConnectivityPage = MyLvDestinations.ToConnectivityPage.f59240a;
        Context context = this.d;
        AuthenticationViewModel authenticationViewModel = this.f21136c;
        switch (i2) {
            case 0:
                authenticationViewModel.I0(new AuthenticationTrackingUiModel.LoginInClickEvent(false, 1, null));
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.MY_LV;
                trackingAuthOrigin.getClass();
                if (appCompatActivityB != null) {
                    AuthenticationActivity.Companion companion = AuthenticationActivity.u;
                    AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
                    LoginContext loginContext = LoginContext.MY_LV;
                    companion.getClass();
                    appCompatActivityB.startActivity(AuthenticationActivity.Companion.a(appCompatActivityB, routes, loginContext, trackingAuthOrigin));
                }
                break;
            case 1:
                authenticationViewModel.I0(new AuthenticationTrackingUiModel.RegisterClickEvent(false, 1, null));
                AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context);
                TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.MY_LV;
                trackingAuthOrigin2.getClass();
                if (appCompatActivityB2 != null) {
                    AuthenticationActivity.Companion companion2 = AuthenticationActivity.u;
                    AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
                    LoginContext loginContext2 = LoginContext.MY_LV;
                    companion2.getClass();
                    appCompatActivityB2.startActivity(AuthenticationActivity.Companion.a(appCompatActivityB2, routes2, loginContext2, trackingAuthOrigin2));
                }
                break;
            case 2:
                authenticationViewModel.I0(AuthenticationTrackingUiModel.OpenConnectivityFromWelcomePageEvent.f53701a);
                context.startActivity(MyLvDestinationsKt.a(toConnectivityPage, context));
                break;
            case 3:
                authenticationViewModel.I0(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a);
                context.startActivity(MyLvDestinationsKt.a(toOptionsPage, context));
                break;
            case 4:
                authenticationViewModel.I0(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a);
                context.startActivity(MyLvDestinationsKt.a(toOptionsPage, context));
                break;
            case 5:
                authenticationViewModel.I0(new AuthenticationTrackingUiModel.LoginInClickEvent(false, 1, null));
                AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context);
                TrackingAuthOrigin trackingAuthOrigin3 = TrackingAuthOrigin.WISHLIST;
                trackingAuthOrigin3.getClass();
                if (appCompatActivityB3 != null) {
                    AuthenticationActivity.Companion companion3 = AuthenticationActivity.u;
                    AuthenticationActivity.Routes routes3 = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
                    LoginContext loginContext3 = LoginContext.MY_LV;
                    companion3.getClass();
                    appCompatActivityB3.startActivity(AuthenticationActivity.Companion.a(appCompatActivityB3, routes3, loginContext3, trackingAuthOrigin3));
                }
                break;
            case 6:
                authenticationViewModel.I0(new AuthenticationTrackingUiModel.RegisterClickEvent(false, 1, null));
                AppCompatActivity appCompatActivityB4 = ContextExtKt.b(context);
                TrackingAuthOrigin trackingAuthOrigin4 = TrackingAuthOrigin.WISHLIST;
                trackingAuthOrigin4.getClass();
                if (appCompatActivityB4 != null) {
                    AuthenticationActivity.Companion companion4 = AuthenticationActivity.u;
                    AuthenticationActivity.Routes routes4 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
                    LoginContext loginContext4 = LoginContext.MY_LV;
                    companion4.getClass();
                    appCompatActivityB4.startActivity(AuthenticationActivity.Companion.a(appCompatActivityB4, routes4, loginContext4, trackingAuthOrigin4));
                }
                break;
            default:
                authenticationViewModel.I0(AuthenticationTrackingUiModel.OpenConnectivityFromWelcomePageEvent.f53701a);
                context.startActivity(MyLvDestinationsKt.a(toConnectivityPage, context));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ce0(AuthenticationViewModel authenticationViewModel, MainActivityRouter mainActivityRouter, Context context, int i2) {
        this.f21135b = i2;
        this.f21136c = authenticationViewModel;
        this.d = context;
    }
}
