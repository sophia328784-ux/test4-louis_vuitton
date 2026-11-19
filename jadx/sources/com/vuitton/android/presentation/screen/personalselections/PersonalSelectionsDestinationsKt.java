package com.vuitton.android.presentation.screen.personalselections;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.imageviewer.ImageViewerActivity;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.video.VideoActivity;
import defpackage.v40;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsDestinationsKt {
    public static final Intent a(PersonalSelectionsDestinations personalSelectionsDestinations, Context context) {
        context.getClass();
        if (personalSelectionsDestinations instanceof PersonalSelectionsDestinations.ToFullScreenVideo) {
            VideoActivity.Companion companion = VideoActivity.m;
            String str = ((PersonalSelectionsDestinations.ToFullScreenVideo) personalSelectionsDestinations).f62382a;
            companion.getClass();
            return VideoActivity.Companion.a(context, null, str, null);
        }
        if (personalSelectionsDestinations instanceof PersonalSelectionsDestinations.ToFullScreenImage) {
            return ImageViewerActivity.Companion.a(ImageViewerActivity.t, context, new ArrayList(((PersonalSelectionsDestinations.ToFullScreenImage) personalSelectionsDestinations).f62381a), 0, null, null, 24);
        }
        if (personalSelectionsDestinations instanceof PersonalSelectionsDestinations.ToProductDetailPage) {
            PdpActivity.Companion companion2 = PdpActivity.D;
            String str2 = ((PersonalSelectionsDestinations.ToProductDetailPage) personalSelectionsDestinations).f62384a;
            companion2.getClass();
            return PdpActivity.Companion.b(context, str2);
        }
        if (personalSelectionsDestinations.equals(PersonalSelectionsDestinations.ToLoginPage.f62383a)) {
            AuthenticationActivity.Companion companion3 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
            LoginContext loginContext = LoginContext.CONTENT_CURATION;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.PERSONAL_SELECTIONS;
            companion3.getClass();
            return AuthenticationActivity.Companion.a(context, routes, loginContext, trackingAuthOrigin);
        }
        if (personalSelectionsDestinations.equals(PersonalSelectionsDestinations.ToRegisterPage.f62385a)) {
            AuthenticationActivity.Companion companion4 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
            LoginContext loginContext2 = LoginContext.CONTENT_CURATION;
            TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.PERSONAL_SELECTIONS;
            companion4.getClass();
            return AuthenticationActivity.Companion.a(context, routes2, loginContext2, trackingAuthOrigin2);
        }
        if (!personalSelectionsDestinations.equals(PersonalSelectionsDestinations.ToWelcomePage.f62386a)) {
            v40.g();
            return null;
        }
        AuthenticationActivity.Companion companion5 = AuthenticationActivity.u;
        AuthenticationActivity.Routes routes3 = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT;
        LoginContext loginContext3 = LoginContext.CONTENT_CURATION;
        TrackingAuthOrigin trackingAuthOrigin3 = TrackingAuthOrigin.PERSONAL_SELECTIONS;
        companion5.getClass();
        return AuthenticationActivity.Companion.a(context, routes3, loginContext3, trackingAuthOrigin3);
    }
}
