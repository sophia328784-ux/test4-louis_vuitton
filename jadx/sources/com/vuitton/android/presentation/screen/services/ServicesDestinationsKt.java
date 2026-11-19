package com.vuitton.android.presentation.screen.services;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.booking.MyExperiencesActivity;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinations;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinationsKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsActivity;
import com.vuitton.android.presentation.screen.repairs.RepairActivity;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ServicesDestinationsKt {
    public static final Intent a(ServicesDestinations servicesDestinations, Context context) {
        context.getClass();
        if (servicesDestinations instanceof ServicesDestinations.ToOsaPage) {
            OsaActivity.Companion companion = OsaActivity.u;
            ServicesDestinations.ToOsaPage toOsaPage = (ServicesDestinations.ToOsaPage) servicesDestinations;
            OsaRoutesName osaRoutesName = toOsaPage.f64295a;
            List list = toOsaPage.f64297c;
            String str = toOsaPage.f64296b;
            String str2 = toOsaPage.d;
            boolean z = toOsaPage.f64298e;
            OsaOriginScreen osaOriginScreen = toOsaPage.f64299f;
            String str3 = toOsaPage.g;
            boolean z2 = toOsaPage.f64300h;
            companion.getClass();
            return OsaActivity.Companion.b(context, osaRoutesName, list, str, str2, z, osaOriginScreen, str3, z2);
        }
        if (servicesDestinations.equals(ServicesDestinations.ToWelcomePage.f64303a)) {
            AuthenticationActivity.Companion companion2 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT;
            LoginContext loginContext = LoginContext.SERVICE;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.OSA;
            companion2.getClass();
            return AuthenticationActivity.Companion.a(context, routes, loginContext, trackingAuthOrigin);
        }
        if (servicesDestinations.equals(ServicesDestinations.ToCareServicesPage.f64292a)) {
            return RepairActivity.Companion.b(RepairActivity.t, context, 6);
        }
        if (servicesDestinations.equals(ServicesDestinations.ToCareServicesCreatePage.f64291a)) {
            return RepairActivity.Companion.b(RepairActivity.t, context, 4);
        }
        if (servicesDestinations instanceof ServicesDestinations.ToWebViewPage) {
            return WebViewActivity.Companion.a(WebViewActivity.v, context, ((ServicesDestinations.ToWebViewPage) servicesDestinations).f64302a, false, false, null, null, null, false, false, null, 2040);
        }
        if (servicesDestinations instanceof ServicesDestinations.ToImmersiveArticlePage) {
            ImmersiveArticleDestinations immersiveArticleDestinationsB = ImmersiveArticleDestinationsKt.b((126 & 1) != 0 ? null : null, (126 & 2) != 0 ? null : ((ServicesDestinations.ToImmersiveArticlePage) servicesDestinations).f64293a, ImmersiveArticleType.IMMERSIVE_ARTICLE.getType(), null, null, null);
            if (immersiveArticleDestinationsB != null) {
                return ImmersiveArticleDestinationsKt.a(immersiveArticleDestinationsB, context);
            }
            return null;
        }
        if (servicesDestinations.equals(ServicesDestinations.ToPersonalSelectionsPage.f64301a)) {
            PersonalSelectionsActivity.s.getClass();
            return new Intent(context, (Class<?>) PersonalSelectionsActivity.class);
        }
        if (servicesDestinations.equals(ServicesDestinations.ToMyExperiencesPage.f64294a)) {
            MyExperiencesActivity.r.getClass();
            return new Intent(context, (Class<?>) MyExperiencesActivity.class);
        }
        v40.g();
        return null;
    }
}
