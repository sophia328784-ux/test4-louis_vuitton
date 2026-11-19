package com.networkbench.agent.impl.m;

import android.content.Context;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.crash.j;
import com.networkbench.agent.impl.util.p;
import defpackage.n00;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f37523c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f37524e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final e f37522b = f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f37521a = 5242880;

    public a(Context context, String str) {
        this.f37523c = new j(context, str);
        this.f37524e = context;
        this.d = str;
    }

    private long c() {
        f37522b.a("sp file path:" + d());
        File file = new File(d());
        if (file.exists()) {
            return file.length();
        }
        return -1L;
    }

    private String d() {
        StringBuilder sb = new StringBuilder("/data/data/");
        sb.append(this.f37524e.getPackageName());
        sb.append("/shared_prefs/");
        return n00.r(this.d, ".xml", sb);
    }

    public void a(String str, String str2) {
        long jC = c();
        e eVar = f37522b;
        eVar.a("current sp size " + jC);
        if (jC == -1) {
            this.f37523c.b(str2, str);
            return;
        }
        String strB = p.b(str);
        if (strB.length() >= f37521a) {
            eVar.a("single store Info over max_sp_size, storeInfo length is " + str.length() + ", and max_sp_size is " + f37521a);
            return;
        }
        while (true) {
            long length = ((long) strB.length()) + jC;
            long j2 = f37521a;
            j jVar = this.f37523c;
            if (length <= j2) {
                jVar.b(str2, str);
                return;
            }
            String strE = jVar.e();
            if (strE == null) {
                return;
            }
            jC -= (long) this.f37523c.e(strE).length();
            this.f37523c.a(p.c(strE));
        }
    }

    public void b(long j2) {
        this.f37523c.a(String.valueOf(j2));
    }

    public void b() {
        this.f37523c.d();
    }

    public void a(String str, long j2) {
        a(str, String.valueOf(j2));
    }

    public Map<String, ?> a() {
        return this.f37523c.b();
    }

    public String a(long j2) {
        return this.f37523c.d(j2 + "");
    }

    public void a(String str) {
        this.f37523c.a(str);
    }
}
