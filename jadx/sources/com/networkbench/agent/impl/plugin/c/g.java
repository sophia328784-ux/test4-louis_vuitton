package com.networkbench.agent.impl.plugin.c;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.logtrack.Logan;
import com.networkbench.agent.impl.logtrack.LoganConfig;
import com.networkbench.agent.impl.logtrack.SendLogCallback;
import com.networkbench.agent.impl.logtrack.SendLogRunnable;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.n00;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f37990a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f37991c = "LogTrackWrapper";
    private static final String d = "nbs_logtrack_v1";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f37992e = 8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f37993f = 128;
    private static int g = 4096;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f37994h = 104857600;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f37995b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.networkbench.agent.impl.util.c f37996i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Object f37997j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Object f37998k;
    private String l;
    private String m;
    private b n;
    private String o = "";

    public g(String str, com.networkbench.agent.impl.util.c cVar, b bVar) {
        this.f37995b = ak.i(str);
        Logger.debug(f37991c, "isLoganModuleExist is " + this.f37995b);
        this.f37996i = cVar;
        if (this.f37995b) {
            this.f37998k = new e();
        }
        this.n = bVar;
        this.l = bVar.c();
        this.m = d();
        Logger.debug(f37991c, "sk is " + this.l + ", iv16 is " + this.m);
        a(bVar);
    }

    private void a(String[] strArr, String str) {
        if (this.f37995b) {
            String str2 = this.l;
            if (r.u().B) {
                str2 = this.o;
            }
            f fVar = new f(Harvest.getInstance().getHarvestConnection().getLogTrackDataProcess(), ak.i(), NBSAgent.getDeviceInformation().initUserHeaderValue(), r.u().z(), str, str2, strArr);
            this.f37997j = fVar;
            if (!(fVar instanceof f)) {
                Logger.error(f37991c, "error sendLogRunnable is not instanceof SendLogRunnable");
                return;
            }
            for (int i2 = 0; i2 < strArr.length; i2++) {
                Logger.debug(f37991c, "current date file is :" + strArr[i2]);
                Logan.s(new String[]{strArr[i2]}, (SendLogRunnable) this.f37997j);
            }
        }
    }

    private String e() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f37996i.f());
        return n00.r(File.separator, d, sb);
    }

    public void b(String str, String str2, int i2) {
        if (a(b.a.INFO)) {
            Logger.debug(f37991c, "info log is:" + str + ", tag is:" + str2);
            Logan.i(a(str, g), a(str2, f37993f), i2);
            b();
        }
    }

    public void c(String str, String str2, int i2) {
        if (a(b.a.WARM)) {
            Logger.debug(f37991c, "warning log is:" + str + ", tag is:" + str2);
            Logan.w(a(str, g), a(str2, f37993f), i2);
            b();
        }
    }

    public void d(String str, String str2, int i2) {
        if (a(b.a.ERROR)) {
            Logger.debug(f37991c, "error log is:" + str + ", tag is:" + str2);
            Logan.e(a(str, g), a(str2, f37993f), i2);
            b();
        }
    }

    private String d() {
        String str = this.l;
        if (str != null && str.length() == 32) {
            return this.l.substring(0, 16);
        }
        Logger.error(f37991c, "error, secretKey32 is " + this.l);
        return "";
    }

    public void b() {
        if (this.f37995b) {
            Logger.debug(f37991c, "flush log to file");
            Logan.f();
        }
    }

    public Map<String, Long> c() {
        if (!this.f37995b) {
            return new HashMap();
        }
        Map<String, Long> allFilesInfo = Logan.getAllFilesInfo();
        if (allFilesInfo != null) {
            return allFilesInfo;
        }
        Logger.warning(f37991c, "logTrack get all file info is empty");
        return new HashMap();
    }

    public void a(String str) {
        this.o = str;
        Logger.debug(f37991c, "sm2EncryptSecretKey is " + str);
    }

    public void a(b bVar) {
        if (this.f37995b) {
            LoganConfig loganConfigBuild = new LoganConfig.Builder().setCachePath(this.f37996i.e()).setPath(e()).setEncryptKey16(d().getBytes()).setEncryptIV16(this.m.getBytes()).setMaxFile(((long) (bVar.f37967b * 1024)) * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE).setMinSDCard(f37994h).build();
            a(f37990a);
            Logan.init(loganConfigBuild);
        }
    }

    public void a(int i2) {
        if (this.f37995b) {
            Logger.debug(f37991c, "setLoganStackInvokeIndex nInxIndex:" + i2);
            Logan.STACK_INVOKE_INDEX = f37992e + f37990a;
        }
    }

    public void a(String str, String str2, int i2) {
        if (a(b.a.DEBUG)) {
            Logger.debug(f37991c, "debug log is:" + str + ", tag is:" + str2);
            Logan.d(a(str, g), a(str2, f37993f), i2);
            b();
        }
    }

    public boolean a(b.a aVar) {
        return this.f37995b && (this.n.f37966a & aVar.a()) != 0;
    }

    public void a(long j2, long j3, String str) {
        String[] strArrA = new c(j2, j3, c(), e()).a();
        if (strArrA.length == 0) {
            Logger.debug(f37991c, "log date file is empty");
        } else {
            a(strArrA, str);
        }
    }

    public String a() {
        return this.l;
    }

    private void a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        if (this.f37995b) {
            Object obj = this.f37998k;
            if (obj instanceof SendLogCallback) {
                Logan.s(str, str2, str3, str4, str5, str6, str7, (SendLogCallback) obj);
            } else {
                Logger.error(f37991c, "error sendLogCallback is not instanceof SendLogCallback");
            }
        }
    }

    private void a(String str, String str2, Map<String, String> map) {
        if (this.f37995b) {
            Object obj = this.f37998k;
            if (obj instanceof SendLogCallback) {
                Logan.s(str, str2, map, (SendLogCallback) obj);
            } else {
                Logger.error(f37991c, "error sendLogCallback is not instanceof SendLogCallback");
            }
        }
    }

    private String a(String str, int i2) {
        if (str == null) {
            return "";
        }
        return str.length() > i2 ? str.substring(0, i2) : str;
    }
}
