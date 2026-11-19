package com.vuitton.android.presentation.screen.authentication.base;

import android.content.Intent;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.webkit.URLUtil;
import androidx.fragment.app.FragmentActivity;
import com.batch.android.s.b;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WebViewAuthUtilsKt {
    public static final boolean a(String str, AuthenticationViewModel authenticationViewModel, LinkHandler linkHandler, FragmentActivity fragmentActivity) {
        str.getClass();
        authenticationViewModel.getClass();
        linkHandler.getClass();
        if (StringsKt.P(str, "tel:", false)) {
            if (fragmentActivity != null) {
                fragmentActivity.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(tr.g("tel:", PhoneNumberUtils.convertKeypadLettersToDigits(StringsKt.Q(str, "tel:", str))))));
                return true;
            }
        } else {
            if (authenticationViewModel.getW().d.length() > 0 && StringsKt.P(str, authenticationViewModel.getW().d, false)) {
                authenticationViewModel.x4(str);
                return true;
            }
            if (!URLUtil.isHttpsUrl(str) && !URLUtil.isHttpUrl(str) && LinkHandler.b(linkHandler, str, fragmentActivity)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean b(AuthenticationViewModel authenticationViewModel, String str) {
        str.getClass();
        authenticationViewModel.getClass();
        Uri uri = Uri.parse(StringsKt.J(str, "#", "?"));
        String queryParameter = uri.getQueryParameter(m.v);
        if (queryParameter == null || StringsKt.w(queryParameter)) {
            queryParameter = null;
        }
        if (queryParameter != null) {
            authenticationViewModel.X2(queryParameter);
            return true;
        }
        String queryParameter2 = uri.getQueryParameter("access_token");
        String queryParameter3 = uri.getQueryParameter("refresh_token");
        String queryParameter4 = uri.getQueryParameter(b.a.f24015b);
        if (queryParameter2 == null || queryParameter3 == null || queryParameter4 == null) {
            return false;
        }
        authenticationViewModel.B5(new AuthToken.Atg((String) CollectionsKt.M(StringsKt__StringsKt.split$default(queryParameter4, new String[]{"/"}, false, 0, 6, null)), queryParameter2, queryParameter3, null, 8, null));
        return true;
    }

    public static final String c(String str) {
        Uri uri;
        if (str == null) {
            return "unknown url";
        }
        if (StringsKt.w(str)) {
            str = null;
        }
        if (str == null || (uri = Uri.parse(str)) == null) {
            return "unknown url";
        }
        String host = uri.getHost();
        if (host == null) {
            String scheme = uri.getScheme();
            return scheme != null ? scheme.concat(":*****") : "*****";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(uri.getScheme());
        sb.append("://");
        if (uri.getUserInfo() != null) {
            sb.append("*****@");
        }
        sb.append(host);
        String path = uri.getPath();
        if (path == null) {
            path = "";
        }
        sb.append(path);
        if (uri.getQuery() != null) {
            sb.append("?*****");
        }
        if (uri.getFragment() != null) {
            sb.append("#*****");
        }
        return sb.toString();
    }
}
