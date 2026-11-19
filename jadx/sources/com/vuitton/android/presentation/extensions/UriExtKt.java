package com.vuitton.android.presentation.extensions;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import com.google.common.net.InternetDomainName;
import com.sightcall.universal.media.offline.FileUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class UriExtKt {
    public static final Uri a(Uri uri, String str) {
        uri.getClass();
        if (str == null || !f(uri)) {
            return uri;
        }
        String string = uri.toString();
        string.getClass();
        if (StringsKt.k(string, "lvappDeviceId", false)) {
            return uri;
        }
        Uri uriBuild = uri.buildUpon().appendQueryParameter("lvappDeviceId", str).build();
        uriBuild.getClass();
        return uriBuild;
    }

    public static final Uri b(Uri uri, String str) {
        uri.getClass();
        if (str == null) {
            return uri;
        }
        String string = uri.toString();
        string.getClass();
        if (StringsKt.k(string, "dispatchCountry", false)) {
            return uri;
        }
        Uri uriBuild = uri.buildUpon().appendQueryParameter("dispatchCountry", str).build();
        uriBuild.getClass();
        return uriBuild;
    }

    public static final Uri c(Uri uri) {
        uri.getClass();
        if (!f(uri)) {
            return uri;
        }
        String string = uri.toString();
        string.getClass();
        if (StringsKt.k(string, "lvpass=true", false)) {
            return uri;
        }
        Uri uriBuild = uri.buildUpon().appendQueryParameter("lvpass", "true").appendQueryParameter("lvpassdesign", "true").build();
        uriBuild.getClass();
        return uriBuild;
    }

    public static final String d(Uri uri) {
        String host = uri.getHost();
        if (host != null) {
            ImmutableList immutableList = new InternetDomainName(host).f33765b;
            int iIndexOf = immutableList.indexOf("www");
            int iIndexOf2 = immutableList.indexOf("louisvuitton");
            if (iIndexOf2 != -1 && iIndexOf2 >= iIndexOf) {
                ArrayList arrayList = new ArrayList();
                int i2 = 0;
                for (Object obj : immutableList) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    if (iIndexOf + 1 <= i2 && i2 < iIndexOf2) {
                        arrayList.add(obj);
                    }
                    i2 = i3;
                }
                return CollectionsKt.K(arrayList, FileUtils.HIDDEN_PREFIX, null, null, null, 62);
            }
        }
        return null;
    }

    public static final ArrayList e(Uri uri) {
        uri.getClass();
        String query = uri.getQuery();
        if (query == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : StringsKt__StringsKt.split$default(query, new String[]{"&"}, false, 0, 6, null)) {
            if (StringsKt.P(str, "sku=", false) && ((CharSequence) StringsKt__StringsKt.split$default(str, new String[]{"="}, false, 0, 6, null).get(1)).length() > 0) {
                arrayList.add(StringsKt__StringsKt.split$default(str, new String[]{"="}, false, 0, 6, null).get(1));
            }
        }
        return arrayList;
    }

    public static final boolean f(Uri uri) {
        uri.getClass();
        String host = uri.getHost();
        return host != null && (StringsKt.p(host, ".louisvuitton.com", false) || StringsKt.p(host, ".louisvuitton.cn", false));
    }

    public static final String g(Uri uri) {
        List listC;
        String str;
        uri.getClass();
        Regex regex = new Regex("media/(\\d+)");
        String strDecode = Uri.decode(uri.toString());
        strDecode.getClass();
        MatchResult matchResultB = regex.b(strDecode);
        if (matchResultB != null && (listC = matchResultB.c()) != null && (str = (String) listC.get(1)) != null) {
            return str;
        }
        String string = uri.toString();
        string.getClass();
        return string;
    }
}
