package com.networkbench.agent.impl.harvest.b;

import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37295a = "NBSInitSwichControl";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f37296b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f37297c = 1;
    private static b d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f37298e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f37299f = true;
    private boolean g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f37300h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f37301i;

    public b(a aVar) {
        this.f37301i = aVar;
    }

    public static b a() {
        if (d == null) {
            synchronized (b.class) {
                d = new b(a.a());
            }
        }
        return d;
    }

    public boolean b() {
        return this.f37298e && this.f37299f;
    }

    public boolean c() {
        Logger.debug(f37295a, "customAction : " + this.g + ", sdkInitEnabled : " + this.f37299f);
        return this.g && this.f37299f;
    }

    public void d(int i2) {
        g.p("首次启动设置opt , setModuleSwitch :" + i2);
        f37296b = i2;
    }

    public void e() {
        f();
        if (f37297c != 0) {
            r.u().a(this.f37301i.b(ConfigurationName.oldFeatures));
        } else {
            e(1);
        }
    }

    public void f() {
        c(this.f37301i.b(a.f37290b));
        b(this.f37301i.b(a.f37291c));
        a(this.f37301i.b(a.f37289a));
        f37297c = this.f37301i.b(a.d);
    }

    public boolean g() {
        g.p("            ");
        g.p("checkSwitchOfError ----------");
        int i2 = f37297c;
        if (i2 == 0) {
            g.p("自定义错误 判断,上次init成功..根据下发开关, 采集数据 ....");
            return r.u().Y();
        }
        if (i2 == 2) {
            if (f37296b == -1) {
                return d();
            }
            return d() && (f37296b & 128) != 0;
        }
        int iC = r.u().c();
        g.p("自定义错误判断,上次没有init成功...开关受历史开关 和 崩溃文件开关控制....");
        return (iC & 128) != 0 && d();
    }

    public boolean h() {
        g.p("checkSwitchOfCrash ----------");
        int i2 = f37297c;
        if (i2 == 0) {
            g.p("崩溃采集 判断,上次init成功..根据下发开关, 采集数据 ....");
            return r.u().ab();
        }
        if (i2 == 2) {
            if (f37296b == -1) {
                return b();
            }
            return b() && (f37296b & 4) != 0;
        }
        int iC = r.u().c();
        g.p("自定义事件判断,上次没有init成功...开关受历史开关 和 崩溃文件开关控制....");
        return (iC & 4) != 0 && b();
    }

    public boolean i() {
        g.p("            ");
        g.p("checkSwitchOfAction ----------");
        int i2 = f37297c;
        if (i2 == 0) {
            g.p("自定义事件判断,上次init成功..根据下发开关, 采集数据 ....");
            g.p("checkSwitchOfAction : " + r.u().Y());
            return r.u().Y();
        }
        if (i2 == 2) {
            g.p("按照首次启动方式开启开关...");
            if (f37296b != -1) {
                return c() && (f37296b & 128) != 0;
            }
            g.p("setStartOption 没有被调用过...只判断tag值...");
            return c();
        }
        int iC = r.u().c();
        g.p("oldFeature : " + iC);
        g.p("自定义事件判断,上次没有init成功...开关受历史开关 和 崩溃文件开关控制....");
        return (iC & 128) != 0 && c();
    }

    public void b(int i2) {
        if (i2 == 1) {
            this.g = true;
        } else {
            this.g = false;
        }
    }

    public boolean d() {
        return this.f37300h && this.f37299f;
    }

    public void a(boolean z) {
        this.f37299f = z;
    }

    public void a(int i2) {
        if (i2 == 1) {
            this.f37300h = true;
        } else {
            this.f37300h = false;
        }
    }

    public void e(int i2) {
        this.f37301i.a(a.d, i2, true);
    }

    public void c(int i2) {
        if (i2 == 1) {
            this.f37298e = true;
        } else {
            this.f37298e = false;
        }
    }
}
