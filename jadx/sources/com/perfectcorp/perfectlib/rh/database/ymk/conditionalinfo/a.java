package com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo;

import com.perfectcorp.common.gson.GsonHelper;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f41819c;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a$a, reason: collision with other inner class name */
    public static final class C0187a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41820a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41821b;
    }

    public static final class b {
        public final C0188a shadeFinder = null;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a$b$a, reason: collision with other inner class name */
        public static final class C0188a {
            public final Map<String, float[]> shadeFinderV4ItemGuidLabMapping;
            public final Map<String, c> shadeFinderV4ItemGuidWcldMapping;

            public C0188a() {
                Map map = Collections.EMPTY_MAP;
                this.shadeFinderV4ItemGuidWcldMapping = map;
                this.shadeFinderV4ItemGuidLabMapping = map;
            }
        }
    }

    public a(C0187a c0187a) {
        this.f41817a = c0187a.f41820a;
        this.f41818b = c0187a.f41821b;
    }

    public final synchronized b a() {
        try {
            if (this.f41819c == null) {
                this.f41819c = (b) GsonHelper.f39260a.i(this.f41818b, b.class);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f41819c;
    }
}
