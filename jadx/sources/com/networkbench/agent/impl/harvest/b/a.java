package com.networkbench.agent.impl.harvest.b;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.aa;
import com.networkbench.agent.impl.util.k;
import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f37289a = "customError";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f37290b = "crash";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f37291c = "customAction";
    public static String d = "isIntDcSucceed";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static a f37292e = null;
    private static final String g = "NBSInitState";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected k f37293f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f37294h = true;

    static {
        try {
            f37292e = new a(new aa(r.u().J(), b()));
        } catch (Exception unused) {
        }
    }

    public a(k kVar) {
        this.f37293f = kVar;
    }

    public void a(String str, int i2, boolean z) {
        try {
            if (this.f37294h) {
                b(str, i2, z);
            } else {
                Logger.debug(g, "SDK已经init成功了, 不再修改崩溃文件");
            }
        } catch (Throwable th) {
            Logger.error(g, "error putValueInSp", th);
        }
    }

    public synchronized int b(String str) {
        return ((Integer) this.f37293f.c(str, 1)).intValue();
    }

    public synchronized void c() {
        this.f37293f.a(true);
        b(d, 0, true);
        a(ConfigurationName.oldFeatures, Harvest.getInstance().getConfiguration().getFeature(), true);
        this.f37294h = false;
    }

    private void b(String str, int i2, boolean z) {
        k kVar = this.f37293f;
        if (z) {
            kVar.a(str, Integer.valueOf(i2));
        } else {
            kVar.b(str, Integer.valueOf(i2));
        }
    }

    public boolean a(String str) {
        return this.f37293f.a(str);
    }

    public static a a() {
        return f37292e;
    }

    public static String b() {
        return "NBS_Init_State_" + ConfigurationName.processName;
    }
}
