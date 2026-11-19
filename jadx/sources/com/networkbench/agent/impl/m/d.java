package com.networkbench.agent.impl.m;

import android.content.Context;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.crash.j;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.p;
import defpackage.n00;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f37528a = 5242880;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f37529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f37530c;

    public d(Context context, String str) {
        this.f37529b = new j(context, str);
        this.f37530c = context;
        boolean zB = ak.b(context);
        j jVar = this.f37529b;
        if (zB) {
            jVar.c(str);
            return;
        }
        StringBuilder sbU = n00.u(str, "_");
        sbU.append(ConfigurationName.processName);
        jVar.c(sbU.toString());
    }

    private long c() {
        g.p("sp file path:" + d());
        File file = new File(d());
        if (file.exists()) {
            return file.length();
        }
        return -1L;
    }

    private String d() {
        return "/data/data/" + this.f37530c.getPackageName() + "/shared_prefs/" + this.f37529b.f() + ".xml";
    }

    public void a(String str, long j2) {
        try {
            if (c() == -1) {
                this.f37529b.b(j2 + "", str);
                return;
            }
            if (str.length() >= f37528a) {
                g.p("single store Info over max_sp_size, storeInfo length is " + str.length() + ", and max_sp_size is " + f37528a);
                return;
            }
            if (c() + ((long) p.b(str).length()) > f37528a) {
                long length = 0;
                while (length < str.length()) {
                    String strE = this.f37529b.e();
                    if (strE == null) {
                        return;
                    }
                    length += (long) this.f37529b.e(strE).length();
                    j jVar = this.f37529b;
                    jVar.a(p.c(jVar.e()));
                }
            }
            this.f37529b.b(j2 + "", str);
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37291c, 1, true);
        } catch (Throwable unused) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37291c, 0, true);
        }
    }

    public void b() {
        this.f37529b.d();
    }

    public Map<String, ?> a() {
        return this.f37529b.b();
    }

    public String a(long j2) {
        return this.f37529b.d(j2 + "");
    }

    public void a(String str) {
        this.f37529b.a(str);
    }
}
