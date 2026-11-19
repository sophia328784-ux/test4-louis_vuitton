package com.vuitton.android.presentation.screen.osa;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.booking.MyExperiencesActivity;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaDestinationsKt {
    public static final Intent a(OsaDestinations osaDestinations, Context context) {
        context.getClass();
        if (osaDestinations.equals(OsaDestinations.ToLoginPage.f60567a)) {
            AuthenticationActivity.Companion companion = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
            LoginContext loginContext = LoginContext.SERVICE;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.OSA;
            companion.getClass();
            return AuthenticationActivity.Companion.a(context, routes, loginContext, trackingAuthOrigin);
        }
        if (osaDestinations instanceof OsaDestinations.ToRegisterWithPrefilledEmailPage) {
            OsaDestinations.ToRegisterWithPrefilledEmailPage toRegisterWithPrefilledEmailPage = (OsaDestinations.ToRegisterWithPrefilledEmailPage) osaDestinations;
            String str = toRegisterWithPrefilledEmailPage.f60571a;
            if (toRegisterWithPrefilledEmailPage.f60572b && str != null) {
                AccountActivationActivity.Companion companion2 = AccountActivationActivity.r;
                AccountActivationActivity.Companion.TrackingOrigin trackingOrigin = AccountActivationActivity.Companion.TrackingOrigin.OSA;
                companion2.getClass();
                return AccountActivationActivity.Companion.a(context, str, trackingOrigin);
            }
            AuthenticationActivity.Companion companion3 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_WITH_PREFILLED_EMAIL;
            TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.OSA;
            companion3.getClass();
            return AuthenticationActivity.Companion.c(context, routes2, str, trackingAuthOrigin2);
        }
        if (osaDestinations.equals(OsaDestinations.ToRegisterPage.f60570a)) {
            AuthenticationActivity.Companion companion4 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes3 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
            LoginContext loginContext2 = LoginContext.SERVICE;
            TrackingAuthOrigin trackingAuthOrigin3 = TrackingAuthOrigin.OSA;
            companion4.getClass();
            return AuthenticationActivity.Companion.a(context, routes3, loginContext2, trackingAuthOrigin3);
        }
        if (osaDestinations.equals(OsaDestinations.ToPrivacyPolicy.f60569a)) {
            LegalTextActivity.p.getClass();
            return LegalTextActivity.Companion.a(context, false);
        }
        if (!osaDestinations.equals(OsaDestinations.ToMyExperiencesPage.f60568a)) {
            v40.g();
            return null;
        }
        MyExperiencesActivity.Companion companion5 = MyExperiencesActivity.r;
        ScreenOrigin screenOrigin = ScreenOrigin.CUSTOMER_SERVICES;
        companion5.getClass();
        Intent intent = new Intent(context, (Class<?>) MyExperiencesActivity.class);
        if (screenOrigin != null) {
            intent.putExtra("EXTRA_ORIGIN", screenOrigin);
        }
        return intent;
    }
}
