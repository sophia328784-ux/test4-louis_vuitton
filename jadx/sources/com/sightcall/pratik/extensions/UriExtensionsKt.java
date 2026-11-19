package com.sightcall.pratik.extensions;

import android.net.Uri;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\f\u0010\u0003\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\f\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\f\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\f\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\f\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\n\u0010\b\u001a\u00020\u0001*\u00020\u0002¨\u0006\t"}, d2 = {"getHash", "", "Landroid/net/Uri;", "getPinCode", "getUid", "getInvitation", "getDisplayName", "getCallId", "identifyAsOpenInWebView", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class UriExtensionsKt {
    public static final String getCallId(Uri uri) {
        uri.getClass();
        return uri.getQueryParameter("calleeid");
    }

    public static final String getDisplayName(Uri uri) {
        uri.getClass();
        return uri.getQueryParameter("displayname");
    }

    public static final String getHash(Uri uri) {
        uri.getClass();
        String queryParameter = uri.getQueryParameter("sightcall");
        if (queryParameter != null) {
            return queryParameter;
        }
        List<String> pathSegments = uri.getPathSegments();
        pathSegments.getClass();
        return (String) CollectionsKt.G(uri.getPathSegments().size() - 1, pathSegments);
    }

    public static final String getInvitation(Uri uri) {
        uri.getClass();
        return uri.getQueryParameter("invitation");
    }

    public static final String getPinCode(Uri uri) {
        uri.getClass();
        return uri.getQueryParameter("pin");
    }

    public static final String getUid(Uri uri) {
        uri.getClass();
        return uri.getQueryParameter("uid");
    }

    public static final String identifyAsOpenInWebView(Uri uri) {
        uri.getClass();
        if (uri.getQueryParameters("wv").isEmpty()) {
            String string = uri.buildUpon().appendQueryParameter("wv", "true").build().toString();
            string.getClass();
            return string;
        }
        String string2 = uri.toString();
        string2.getClass();
        return string2;
    }
}
