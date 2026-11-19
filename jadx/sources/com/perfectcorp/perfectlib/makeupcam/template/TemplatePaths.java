package com.perfectcorp.perfectlib.makeupcam.template;

import android.text.TextUtils;
import com.perfectcorp.common.guava.predicate.StringPredicates;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.GsonBuilder;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TemplatePaths {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Gson f40995a = new GsonBuilder().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Type f40996b = new b().f42556b;

    public static List a(String str) {
        List list;
        if (!TextUtils.isEmpty(str) && (list = (List) f40995a.j(str, f40996b)) != null) {
            return FluentIterable.n(list).i(StringPredicates.a()).p();
        }
        return Collections.EMPTY_LIST;
    }

    public static String b(JSONArray jSONArray) {
        if (jSONArray == null) {
            return "";
        }
        String strOptString = jSONArray.optString(0);
        return !TextUtils.isEmpty(strOptString) ? strOptString : "";
    }

    public static JSONArray c(String str) {
        JSONArray jSONArray = new JSONArray();
        if (!TextUtils.isEmpty(str)) {
            jSONArray.put(str);
        }
        return jSONArray;
    }

    public static String d(List list) {
        return f40995a.l(FluentIterable.n(list).i(StringPredicates.a()).p(), f40996b);
    }

    public static List e(JSONArray jSONArray) {
        if (jSONArray == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            String strOptString = jSONArray.optString(i2);
            if (!TextUtils.isEmpty(strOptString)) {
                arrayList.add(strOptString);
            }
        }
        return arrayList;
    }
}
