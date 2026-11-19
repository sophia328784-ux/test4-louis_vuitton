package com.perfectcorp.common.utility;

import android.text.TextUtils;
import android.util.Pair;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f39425b = new ArrayList();

    public HttpRequest(String str) throws Exception {
        String strDecode;
        this.f39424a = "";
        new ArrayList();
        if (str.isEmpty()) {
            return;
        }
        String[] strArrSplit = str.split("\\?");
        if (strArrSplit.length == 0) {
            return;
        }
        this.f39424a = strArrSplit[0];
        if (strArrSplit.length > 1) {
            for (String str2 : strArrSplit[1].split("&")) {
                String[] strArrSplit2 = str2.split("=");
                String str3 = strArrSplit2[0];
                if (strArrSplit2.length == 2) {
                    strDecode = strArrSplit2[1];
                    try {
                        strDecode = URLDecoder.decode(strDecode, "UTF-8");
                    } catch (UnsupportedEncodingException e2) {
                        Log.e("URLCodec", "decode", e2);
                    } catch (Exception e3) {
                        throw e3;
                    }
                } else {
                    strDecode = "";
                }
                if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(strDecode)) {
                    this.f39425b.add(new Pair(str3, strDecode));
                }
            }
        }
        new URL(strArrSplit[0]).getHost();
    }

    public final void a(Object obj, String str) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        this.f39425b.add(new Pair(str, obj.toString()));
    }

    public final String b() {
        ArrayList<Pair> arrayList = this.f39425b;
        if (MoreCollections.a(arrayList)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Pair pair : arrayList) {
            String str = (String) pair.first;
            String str2 = (String) pair.second;
            if (!str.isEmpty()) {
                if (z) {
                    z = false;
                } else {
                    sb.append("&");
                }
                sb.append(URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20"));
                sb.append("=");
                sb.append(URLEncoder.encode(str2, "UTF-8").replaceAll("\\+", "%20"));
            }
        }
        return sb.toString();
    }

    public final String c() {
        StringBuilder sb = new StringBuilder();
        String str = this.f39424a;
        if (str != null && !str.isEmpty()) {
            sb.append(str);
        }
        ArrayList<Pair> arrayList = this.f39425b;
        if (!MoreCollections.a(arrayList)) {
            boolean z = false;
            for (Pair pair : arrayList) {
                String str2 = (String) pair.first;
                String strReplaceAll = (String) pair.second;
                if (!str2.isEmpty()) {
                    if (z) {
                        sb.append("&");
                    } else {
                        sb.append("?");
                        z = true;
                    }
                    try {
                        strReplaceAll = URLEncoder.encode(strReplaceAll, "UTF-8").replaceAll("\\+", "%20");
                    } catch (UnsupportedEncodingException e2) {
                        Log.e("HttpRequest", "getRequestURL can't encode parameters", e2);
                    }
                    defpackage.a.B(sb, str2, "=", strReplaceAll);
                }
            }
        }
        return sb.toString();
    }

    public final boolean d(String str) {
        Iterator it = this.f39425b.iterator();
        while (it.hasNext()) {
            if (str.equals(((Pair) it.next()).first)) {
                return true;
            }
        }
        return false;
    }
}
