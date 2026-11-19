package com.vuitton.android.presentation.screen.aicompanion;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionDestinationsKt {
    public static final Intent a(AICompanionDestinations aICompanionDestinations, Context context) {
        context.getClass();
        if (aICompanionDestinations instanceof AICompanionDestinations.ToProductPage) {
            AICompanionDestinations.ToProductPage toProductPage = (AICompanionDestinations.ToProductPage) aICompanionDestinations;
            return PdpActivity.Companion.a(PdpActivity.D, context, toProductPage.f52712a, toProductPage.f52713b, toProductPage.f52714c, toProductPage.d, null, false, 96);
        }
        if (!(aICompanionDestinations instanceof AICompanionDestinations.ToWelcomePage)) {
            v40.g();
            return null;
        }
        AuthenticationActivity.Companion companion = AuthenticationActivity.u;
        AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT;
        LoginContext loginContext = ((AICompanionDestinations.ToWelcomePage) aICompanionDestinations).f52715a;
        TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.WISHLIST;
        companion.getClass();
        return AuthenticationActivity.Companion.a(context, routes, loginContext, trackingAuthOrigin);
    }
}
