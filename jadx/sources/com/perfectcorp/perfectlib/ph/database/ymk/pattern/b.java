package com.perfectcorp.perfectlib.ph.database.ymk.pattern;

import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import defpackage.xx0;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final C0149b f41250j = new C0149b(new JsonObject(), false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41253c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f41254e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41255f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f41256h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0149b f41257i;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f41258a = new a("TOP", 0, "top");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static a f41259b = new a("BOTTOM", 1, "bottom");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f41260c;

        public a(String str, int i2, String str2) {
            super(str, i2);
            this.f41260c = str2;
        }

        public final String a() {
            return this.f41260c;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.pattern.b$b, reason: collision with other inner class name */
    public static final class C0149b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final JsonObject f41261a;

        public C0149b(JsonObject jsonObject, boolean z) {
            Objects.requireNonNull(jsonObject);
            this.f41261a = jsonObject;
        }
    }

    public b(String str, String str2, String str3, String str4, int i2, String str5, String str6, String str7, C0149b c0149b) {
        this.f41251a = str;
        this.f41252b = str2;
        this.f41253c = str3;
        this.d = str4;
        this.f41254e = i2;
        this.f41255f = str5;
        this.g = str6;
        this.f41256h = str7;
        this.f41257i = c0149b;
    }

    public static List a(String str) {
        try {
            return FluentIterable.n(Arrays.asList(str.split(","))).r(new xx0(21)).p();
        } catch (Throwable unused) {
            return Collections.EMPTY_LIST;
        }
    }

    public b(String str, String str2, String str3, int i2, String str4, String str5, String str6, C0149b c0149b) {
        this(str, str2, "", str3, i2, str4, str5, str6, c0149b);
    }
}
