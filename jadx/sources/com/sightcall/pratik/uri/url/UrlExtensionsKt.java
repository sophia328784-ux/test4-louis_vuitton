package com.sightcall.pratik.uri.url;

import android.net.Uri;
import com.sightcall.pratik.extensions.UriExtensionsKt;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0001\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0001\u001a\u0012\u0010\b\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"SightCallScheme", "", "HttpsScheme", "fromUrlEncode", "toUrlEncode", "isValidUrl", "", "identifyAsOpenInWebView", "compareSdfUrl", "newUrl", "replaceCustomSchemeIfNeeded", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class UrlExtensionsKt {
    private static final String HttpsScheme = "https://";
    private static final String SightCallScheme = "sightcall://";

    public static final boolean compareSdfUrl(String str, String str2) {
        str.getClass();
        str2.getClass();
        try {
            URI uriCreate = URI.create(str);
            String str3 = uriCreate.getHost() + uriCreate.getPath();
            URI uriCreate2 = URI.create(str2);
            return str3.equals(uriCreate2.getHost() + uriCreate2.getPath());
        } catch (Exception unused) {
            return true;
        }
    }

    public static final String fromUrlEncode(String str) throws UnsupportedEncodingException {
        str.getClass();
        String strDecode = URLDecoder.decode(str, "UTF-8");
        strDecode.getClass();
        return strDecode;
    }

    public static final String identifyAsOpenInWebView(String str) {
        str.getClass();
        Uri uri = Uri.parse(str);
        uri.getClass();
        return UriExtensionsKt.identifyAsOpenInWebView(uri);
    }

    public static final boolean isValidUrl(String str) {
        str.getClass();
        return Patterns.INSTANCE.getWEB_URL().matcher(str).matches();
    }

    public static final String replaceCustomSchemeIfNeeded(String str) {
        str.getClass();
        return StringsKt.k(str, SightCallScheme, false) ? StringsKt.J(str, SightCallScheme, HttpsScheme) : str;
    }

    public static final String toUrlEncode(String str) throws UnsupportedEncodingException {
        str.getClass();
        String strEncode = URLEncoder.encode(str, "UTF-8");
        strEncode.getClass();
        return StringsKt.J(strEncode, "+", " ");
    }
}
