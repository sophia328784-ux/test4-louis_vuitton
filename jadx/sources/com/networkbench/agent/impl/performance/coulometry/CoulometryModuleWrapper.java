package com.networkbench.agent.impl.performance.coulometry;

import android.content.Context;
import android.os.IBinder;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.f.d;
import com.networkbench.agent.impl.performance.coulometry.b.c;
import com.networkbench.agent.impl.performance.coulometry.b.f;
import com.networkbench.agent.impl.performance.coulometry.b.k;
import com.networkbench.agent.impl.performance.coulometry.b.l;
import com.networkbench.agent.impl.performance.coulometry.c.g;
import com.networkbench.agent.impl.util.r;
import defpackage.d21;
import defpackage.tr;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class CoulometryModuleWrapper implements d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static CoulometryModuleWrapper f37783f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.networkbench.agent.impl.performance.b f37785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.networkbench.agent.impl.performance.coulometry.a.a.a f37786c;
    com.networkbench.agent.impl.harvest.a.a.b d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    c f37787e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f37788h;
    private int g = 300;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f37789i = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile f f37784a = new f();

    private CoulometryModuleWrapper() {
    }

    private void a(Class<?> cls, Method method, Field field, g gVar) {
        try {
            IBinder iBinder = (IBinder) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{IBinder.class}, new com.networkbench.agent.impl.performance.coulometry.c.c((IBinder) method.invoke(null, gVar.d()), gVar));
            field.setAccessible(true);
            ((Map) field.get(null)).put(gVar.d(), iBinder);
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.y("CoulometryModuleWrapper extracted error:" + th.getMessage());
        }
    }

    public static synchronized CoulometryModuleWrapper getInstance() {
        try {
            if (f37783f == null) {
                f37783f = new CoulometryModuleWrapper();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f37783f;
    }

    public void clearCount() {
        if (this.f37784a != null) {
            this.f37784a.b();
        }
    }

    public synchronized com.networkbench.agent.impl.performance.coulometry.b.d getEvent(String str) {
        try {
            if (this.f37784a == null) {
                com.networkbench.agent.impl.c.g.y("CoulometryModuleWrapper getEvent eventManager is null");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f37784a.a(str);
    }

    @Override // com.networkbench.agent.impl.f.d
    public String getModuleData() {
        String strA;
        String info = "";
        if (this.f37786c == null || this.f37785b == null) {
            com.networkbench.agent.impl.c.g.y("CoulometryModuleWrapper not initModule !");
            return "";
        }
        processForgetData(this.f37789i);
        if (r.u().aA().a()) {
            if (System.currentTimeMillis() - this.f37788h < (this.g - 5) * 1000) {
                com.networkbench.agent.impl.c.g.y("CoulometryModuleWrapper get otelMetricData  interval is not enough");
                com.networkbench.agent.impl.c.g.y("applicationBackgrounded :" + this.f37789i);
                if (!this.f37789i) {
                    return tr.g("", a());
                }
            }
            strA = a();
            this.f37787e.a().a(this.f37785b);
            info = this.f37785b.formatInfo();
            clearCount();
            this.f37785b.reset();
            this.f37788h = System.currentTimeMillis();
        } else {
            strA = a();
        }
        this.f37789i = false;
        return d21.j(info, strA);
    }

    @Override // com.networkbench.agent.impl.f.d
    public String getModuleName() {
        return com.networkbench.agent.impl.f.c.a.f37012a;
    }

    @Override // com.networkbench.agent.impl.f.d
    public void harvestRestart() {
        if (this.f37784a != null) {
            this.f37787e.b();
        }
    }

    @Override // com.networkbench.agent.impl.f.d
    public void harvestStop() {
        if (this.f37784a != null) {
            this.f37787e.c();
        }
    }

    @Override // com.networkbench.agent.impl.f.d
    public void initModule(Context context, e eVar, com.networkbench.agent.impl.harvest.a.a.c cVar, int i2) {
        try {
            com.networkbench.agent.impl.c.g.y("CoulometryModuleWrapper initModule");
            this.f37788h = System.currentTimeMillis();
            this.d = (com.networkbench.agent.impl.harvest.a.a.b) cVar;
            this.f37785b = new com.networkbench.agent.impl.performance.b(a.d, this.g, "otelMetric");
            this.f37786c = new com.networkbench.agent.impl.performance.coulometry.a.a.a(a.f37793e, (int) r.u().r());
            this.f37787e = new c(true);
            this.f37784a.a(a.f37795h, new k());
            com.networkbench.agent.impl.performance.coulometry.b.e eVar2 = new com.networkbench.agent.impl.performance.coulometry.b.e(this.f37786c, this.d);
            l lVar = new l(this.f37786c, this.d);
            com.networkbench.agent.impl.performance.coulometry.b.a aVar = new com.networkbench.agent.impl.performance.coulometry.b.a(this.f37786c, this.d);
            a(eVar2.a(), lVar.a(), aVar.a());
            this.f37784a.a(a.f37790a, eVar2);
            this.f37784a.a(a.f37792c, lVar);
            this.f37784a.a(a.f37791b, aVar);
        } catch (Throwable unused) {
        }
    }

    public void processForgetData(boolean z) {
        if ((r.u().aA().c() || r.u().aA().a()) && this.f37784a != null) {
            this.f37784a.a(z);
        }
    }

    public void setApplicationBackgrounded(boolean z) {
        this.f37789i = z;
    }

    private void a(g gVar, g gVar2, g gVar3) {
        try {
            Class<?> cls = Class.forName("android.os.ServiceManager");
            Method declaredMethod = cls.getDeclaredMethod("getService", String.class);
            Field declaredField = cls.getDeclaredField("sCache");
            declaredField.setAccessible(true);
            a(cls, declaredMethod, declaredField, gVar);
            a(cls, declaredMethod, declaredField, gVar2);
            a(cls, declaredMethod, declaredField, gVar3);
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.y("CoulometryModuleWrapper hookManager error:" + th.getMessage());
        }
    }

    private String a() {
        if (!r.u().aA().c()) {
            return "";
        }
        String info = this.f37786c.formatInfo();
        this.f37786c.reset();
        this.f37786c.b();
        return info;
    }
}
