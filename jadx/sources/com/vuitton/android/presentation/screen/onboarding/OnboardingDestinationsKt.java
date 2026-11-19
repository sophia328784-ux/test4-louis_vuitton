package com.vuitton.android.presentation.screen.onboarding;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OnboardingDestinationsKt {
    public static final Intent a(OnboardingDestinations onboardingDestinations, Context context) {
        context.getClass();
        if (onboardingDestinations.equals(OnboardingDestinations.ToLoginPage.f59472a)) {
            AuthenticationActivity.Companion companion = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
            LoginContext loginContext = LoginContext.DEFAULT;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.ONBOARDING;
            companion.getClass();
            return AuthenticationActivity.Companion.a(context, routes, loginContext, trackingAuthOrigin);
        }
        if (!onboardingDestinations.equals(OnboardingDestinations.ToRegisterPage.f59473a)) {
            v40.g();
            return null;
        }
        AuthenticationActivity.Companion companion2 = AuthenticationActivity.u;
        AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
        LoginContext loginContext2 = LoginContext.DEFAULT;
        TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.ONBOARDING;
        companion2.getClass();
        return AuthenticationActivity.Companion.a(context, routes2, loginContext2, trackingAuthOrigin2);
    }
}
