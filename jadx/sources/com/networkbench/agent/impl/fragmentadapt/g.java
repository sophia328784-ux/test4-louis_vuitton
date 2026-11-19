package com.networkbench.agent.impl.fragmentadapt;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f37154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f37155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f37156c;
    private static String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static JSONObject f37157e;

    public static String a() {
        return !TextUtils.isEmpty(f37154a) ? f37154a : "";
    }

    public static void b(String str) {
        f37156c = d;
        d = str;
    }

    public static void c(String str) {
        f37154a = f37155b;
        f37155b = str;
    }

    public static String d() {
        return f37155b;
    }

    public static JSONObject e() {
        return f37157e;
    }

    public static String b() {
        return f37156c;
    }

    public static String c() {
        return d;
    }

    public static void a(String str) {
        f37154a = str;
    }

    public static void a(JSONObject jSONObject) {
        f37157e = jSONObject;
    }

    public static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.getClass().getCanonicalName();
    }
}
