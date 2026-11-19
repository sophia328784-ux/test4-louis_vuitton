package com.networkbench.agent.impl.socket;

import android.text.TextUtils;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import defpackage.fc;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class r {
    private static final String d = "SslDataInfo";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap<String, a> f38217a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap<String, b> f38218b = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<String, String> f38219c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final o f38220e = new o();

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f38224a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f38225b = false;

        public b(int i2) {
            this.f38224a = i2;
        }
    }

    public static void a(String str, int i2, int i3) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sbR = fc.r(i2, "hostName:", str, ", firstPackageTime:", ", remainPackageTime:");
        sbR.append(i3);
        Logger.debug(d, sbR.toString());
        o oVar = f38220e;
        if (!oVar.a(str)) {
            oVar.a(str, i2, i3);
        } else {
            oVar.b(str).a(i2);
            oVar.b(str).b(i3);
        }
    }

    public static void b(String str, int i2) {
        if (ak.r(str) || i2 < 0) {
            return;
        }
        ConcurrentHashMap<String, a> concurrentHashMap = f38217a;
        if (concurrentHashMap.get(str) == null) {
            concurrentHashMap.put(str, new a(i2));
        }
    }

    public static int c(String str) {
        if (str == null) {
            return -1;
        }
        ConcurrentHashMap<String, a> concurrentHashMap = f38217a;
        if (concurrentHashMap.get(str) == null || concurrentHashMap.get(str).f38222b) {
            return -1;
        }
        concurrentHashMap.get(str).f38222b = true;
        return concurrentHashMap.get(str).f38221a;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f38221a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f38222b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f38223c;

        public a(int i2) {
            this.f38221a = i2;
            this.f38222b = false;
            this.f38223c = "";
        }

        public void a(String str) {
            this.f38223c = str;
        }

        public String a() {
            return this.f38223c;
        }

        public a(int i2, String str) {
            this.f38221a = i2;
            this.f38222b = false;
            this.f38223c = str;
        }
    }

    public static boolean b(String str) {
        return (str == null || f38217a.get(str) == null) ? false : true;
    }

    public static int a(String str) {
        if (str == null) {
            return -1;
        }
        ConcurrentHashMap<String, b> concurrentHashMap = f38218b;
        if (concurrentHashMap.get(str) == null || concurrentHashMap.get(str).f38225b) {
            return -1;
        }
        concurrentHashMap.get(str).f38225b = true;
        return concurrentHashMap.get(str).f38224a;
    }

    public static o a() {
        return f38220e;
    }

    public static void a(String str, int i2) {
        if (TextUtils.isEmpty(str) || i2 < 0) {
            return;
        }
        f38218b.put(str, new b(i2));
    }
}
