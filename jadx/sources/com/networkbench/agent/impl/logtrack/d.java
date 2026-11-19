package com.networkbench.agent.impl.logtrack;

import android.os.Looper;
import android.text.TextUtils;
import defpackage.r81;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
class d {
    private static d l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37476c;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f37477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f37478f;
    private long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37479h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f37480i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private g f37481j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConcurrentLinkedQueue<e> f37474a = new ConcurrentLinkedQueue<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private SimpleDateFormat f37482k = new SimpleDateFormat("yyyy-MM-dd");

    private d(LoganConfig loganConfig) {
        if (!loganConfig.a()) {
            r81.d("config's param is invalid");
            throw null;
        }
        this.f37476c = loganConfig.f37445b;
        this.f37475b = loganConfig.f37444a;
        this.d = loganConfig.d;
        this.f37478f = loganConfig.f37448f;
        this.f37477e = loganConfig.f37446c;
        this.g = loganConfig.f37447e;
        this.f37479h = new String(loganConfig.g);
        this.f37480i = new String(loganConfig.f37449h);
        c();
    }

    private void c() {
        if (this.f37481j == null) {
            g gVar = new g(this.f37474a, this.f37475b, this.f37476c, this.d, this.f37477e, this.f37478f, this.f37479h, this.f37480i);
            this.f37481j = gVar;
            gVar.setName("logan-thread");
            this.f37481j.start();
        }
    }

    public void a(String str, int i2, c cVar, String str2, long j2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        e eVar = new e();
        eVar.f37483a = e.a.WRITE;
        k kVar = new k();
        String name = Thread.currentThread().getName();
        long id = Thread.currentThread().getId();
        boolean z = Looper.getMainLooper() == Looper.myLooper();
        kVar.f37512a = str;
        kVar.f37515e = j2;
        kVar.f37516f = i2;
        kVar.f37513b = z;
        kVar.f37514c = id;
        kVar.d = name;
        if (str2 == null) {
            str2 = "";
        }
        kVar.f37518i = str2;
        StackTraceElement stackTraceElementA = a(Logan.STACK_INVOKE_INDEX);
        if (stackTraceElementA != null) {
            kVar.g = stackTraceElementA.getFileName() == null ? "" : stackTraceElementA.getFileName();
            kVar.f37517h = stackTraceElementA.getMethodName() != null ? stackTraceElementA.getMethodName() : "";
            kVar.f37519j = stackTraceElementA.getLineNumber();
            kVar.f37520k = cVar.a();
        }
        eVar.f37484b = kVar;
        if (this.f37474a.size() < this.g) {
            this.f37474a.add(eVar);
            g gVar = this.f37481j;
            if (gVar != null) {
                gVar.d();
            }
        }
    }

    public File b() {
        return new File(this.f37476c);
    }

    private StackTraceElement a(int i2) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length > i2) {
            return stackTrace[i2];
        }
        return null;
    }

    public static d a(LoganConfig loganConfig) {
        if (l == null) {
            synchronized (d.class) {
                try {
                    if (l == null) {
                        l = new d(loganConfig);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return l;
    }

    public void a(String[] strArr, SendLogRunnable sendLogRunnable) {
        if (TextUtils.isEmpty(this.f37476c) || strArr == null || strArr.length == 0) {
            return;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                long jA = a(str);
                if (jA > 0) {
                    e eVar = new e();
                    h hVar = new h();
                    eVar.f37483a = e.a.SEND;
                    hVar.f37505b = String.valueOf(jA);
                    hVar.d = sendLogRunnable;
                    eVar.f37485c = hVar;
                    this.f37474a.add(eVar);
                    g gVar = this.f37481j;
                    if (gVar != null) {
                        gVar.d();
                    }
                }
            }
        }
    }

    public void a() {
        if (TextUtils.isEmpty(this.f37476c)) {
            return;
        }
        e eVar = new e();
        eVar.f37483a = e.a.FLUSH;
        this.f37474a.add(eVar);
        g gVar = this.f37481j;
        if (gVar != null) {
            gVar.d();
        }
    }

    private long a(String str) {
        try {
            return this.f37482k.parse(str).getTime();
        } catch (ParseException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }
}
