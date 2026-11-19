package com.vuitton.android.presentation.screen.cart;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartDestinationsKt {
    public static final Intent a(NativeCartDestinations nativeCartDestinations, Context context) {
        context.getClass();
        if (nativeCartDestinations instanceof NativeCartDestinations.ToWishlistPage) {
            return WishlistActivity.Companion.a(WishlistActivity.t, context, ((NativeCartDestinations.ToWishlistPage) nativeCartDestinations).f54850a, null, null, 12);
        }
        if (!(nativeCartDestinations instanceof NativeCartDestinations.ToLoginPage)) {
            if (nativeCartDestinations instanceof NativeCartDestinations.ToWebViewPage) {
                return WebViewActivity.Companion.a(WebViewActivity.v, context, ((NativeCartDestinations.ToWebViewPage) nativeCartDestinations).f54849a, false, false, null, null, null, false, false, null, 2044);
            }
            v40.g();
            return null;
        }
        AuthenticationActivity.Companion companion = AuthenticationActivity.u;
        AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT;
        LoginContext loginContext = ((NativeCartDestinations.ToLoginPage) nativeCartDestinations).f54848a;
        TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.WISHLIST;
        companion.getClass();
        return AuthenticationActivity.Companion.a(context, routes, loginContext, trackingAuthOrigin);
    }
}
