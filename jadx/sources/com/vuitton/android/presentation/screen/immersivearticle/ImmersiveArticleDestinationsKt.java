package com.vuitton.android.presentation.screen.immersivearticle;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.spotlight.SpotlightDestinations;
import com.vuitton.android.presentation.screen.spotlight.SpotlightDestinationsKt;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleDestinationsKt {
    public static final Intent a(ImmersiveArticleDestinations immersiveArticleDestinations, Context context) {
        context.getClass();
        if (immersiveArticleDestinations instanceof ImmersiveArticleDestinations.ToImmersiveArticlePage) {
            ImmersiveArticleActivity.Companion companion = ImmersiveArticleActivity.H;
            ImmersiveArticleDestinations.ToImmersiveArticlePage.ImmersiveArticleParameters immersiveArticleParameters = ((ImmersiveArticleDestinations.ToImmersiveArticlePage) immersiveArticleDestinations).f58258b;
            return ImmersiveArticleActivity.Companion.a(companion, context, immersiveArticleParameters.f58259a, immersiveArticleParameters.f58260b, immersiveArticleParameters.f58261c, immersiveArticleParameters.d, immersiveArticleParameters.f58262e, 64);
        }
        if (immersiveArticleDestinations instanceof ImmersiveArticleDestinations.ToSpotlightPage) {
            Uri uri = ((ImmersiveArticleDestinations.ToSpotlightPage) immersiveArticleDestinations).f58269a;
            if (uri == null) {
                return null;
            }
            String str = uri.getPathSegments().get(1);
            str.getClass();
            return SpotlightDestinationsKt.a(new SpotlightDestinations.ToSpotlightPage(str), context);
        }
        if (immersiveArticleDestinations instanceof ImmersiveArticleDestinations.ToPrivacyPolicyPage) {
            LegalTextActivity.p.getClass();
            return LegalTextActivity.Companion.a(context, false);
        }
        if (immersiveArticleDestinations instanceof ImmersiveArticleDestinations.ToLoginPage) {
            AuthenticationActivity.Companion companion2 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
            LoginContext loginContext = ((ImmersiveArticleDestinations.ToLoginPage) immersiveArticleDestinations).f58266a;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.IMMERSIVE_ARTICLE;
            companion2.getClass();
            return AuthenticationActivity.Companion.a(context, routes, loginContext, trackingAuthOrigin);
        }
        if (immersiveArticleDestinations instanceof ImmersiveArticleDestinations.ToRegisterPage) {
            AuthenticationActivity.Companion companion3 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
            LoginContext loginContext2 = ((ImmersiveArticleDestinations.ToRegisterPage) immersiveArticleDestinations).f58268a;
            TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.IMMERSIVE_ARTICLE;
            companion3.getClass();
            return AuthenticationActivity.Companion.a(context, routes2, loginContext2, trackingAuthOrigin2);
        }
        if (!(immersiveArticleDestinations instanceof ImmersiveArticleDestinations.ToLiveVideoPage)) {
            v40.g();
            return null;
        }
        LiveVideoActivity.Companion companion4 = LiveVideoActivity.q;
        ImmersiveArticleDestinations.ToLiveVideoPage toLiveVideoPage = (ImmersiveArticleDestinations.ToLiveVideoPage) immersiveArticleDestinations;
        String str2 = toLiveVideoPage.f58264a;
        boolean z = toLiveVideoPage.f58265b == LiveFormatUiModel.LANDSCAPE;
        companion4.getClass();
        return LiveVideoActivity.Companion.a(context, str2, z);
    }

    public static final ImmersiveArticleDestinations b(Uri uri, String str, String str2, String str3, String str4, String str5) {
        ImmersiveArticleDestinations toSpotlightPage;
        str2.getClass();
        boolean z = false;
        if (uri != null) {
            if (uri.getPathSegments().size() == 2 && Intrinsics.c(uri.getPathSegments().get(0), DeepLink.IMMERSIVE_ARTICLE.getHost())) {
                String str6 = uri.getPathSegments().get(1);
                str6.getClass();
                toSpotlightPage = new ImmersiveArticleDestinations.ToImmersiveArticlePage(uri, new ImmersiveArticleDestinations.ToImmersiveArticlePage.ImmersiveArticleParameters(str6, null, null, null, null, z, 30, null));
            } else if (uri.getPathSegments().size() == 3 && Intrinsics.c(uri.getPathSegments().get(0), DeepLink.IMMERSIVE_ARTICLE.getHost())) {
                String str7 = uri.getPathSegments().get(1);
                str7.getClass();
                toSpotlightPage = new ImmersiveArticleDestinations.ToImmersiveArticlePage(uri, new ImmersiveArticleDestinations.ToImmersiveArticlePage.ImmersiveArticleParameters(str7, null, uri.getPathSegments().get(2), null, null, z, 26, null));
            } else if (uri.getPathSegments().size() == 4 && Intrinsics.c(uri.getPathSegments().get(0), DeepLink.IMMERSIVE_ARTICLE.getHost())) {
                String str8 = uri.getPathSegments().get(1);
                str8.getClass();
                toSpotlightPage = new ImmersiveArticleDestinations.ToImmersiveArticlePage(uri, new ImmersiveArticleDestinations.ToImmersiveArticlePage.ImmersiveArticleParameters(str8, null, uri.getPathSegments().get(2), uri.getPathSegments().get(3), null, z, 18, null));
            } else if (uri.getPathSegments().size() == 5 && Intrinsics.c(uri.getPathSegments().get(0), DeepLink.IMMERSIVE_ARTICLE.getHost())) {
                String str9 = uri.getPathSegments().get(1);
                str9.getClass();
                toSpotlightPage = new ImmersiveArticleDestinations.ToImmersiveArticlePage(uri, new ImmersiveArticleDestinations.ToImmersiveArticlePage.ImmersiveArticleParameters(str9, null, uri.getPathSegments().get(2), uri.getPathSegments().get(3), uri.getPathSegments().get(4), z, 2, null));
            } else {
                toSpotlightPage = (uri.getPathSegments().size() == 2 && Intrinsics.c(uri.getPathSegments().get(0), DeepLink.SPOTLIGHT_COLLECTION.getHost())) ? new ImmersiveArticleDestinations.ToSpotlightPage(uri) : null;
            }
            if (toSpotlightPage != null) {
                return toSpotlightPage;
            }
        }
        if (str != null) {
            return new ImmersiveArticleDestinations.ToImmersiveArticlePage(uri, new ImmersiveArticleDestinations.ToImmersiveArticlePage.ImmersiveArticleParameters(str, str2, str3, str4, str5, false));
        }
        return null;
    }
}
