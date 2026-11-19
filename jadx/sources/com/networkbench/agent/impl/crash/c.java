package com.networkbench.agent.impl.crash;

import android.content.Context;
import android.os.Looper;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonParser;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.o60;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class c extends HarvestableArray {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36637b = "NBSCrash";
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Throwable f36639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f36640f;
    private long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36641h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Context f36642i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.networkbench.agent.impl.k.b f36643j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f36644k;
    private String l;
    private JsonArray m;
    private HashMap<String, JsonObject> n;
    private JsonArray o;
    private JsonArray p;
    private Map q;
    private int r;
    private com.networkbench.agent.impl.crash.oom.b s;
    private String t;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f36638c = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f36636a = "";

    public c(Throwable th, long j2, JsonArray jsonArray, JsonArray jsonArray2, Map<Thread, StackTraceElement[]> map, String str) {
        this.f36642i = r.u().J();
        this.l = null;
        this.m = null;
        this.f36644k = com.networkbench.agent.impl.data.a.h.a();
        this.f36643j = ak.p();
        this.f36641h = c(th);
        this.f36640f = str;
        this.g = j2;
        this.f36639e = th;
        int stackDepth = Harvest.getInstance().getConfiguration().getStackDepth();
        this.d = stackDepth;
        if (stackDepth == 0) {
            this.d = 100;
        }
        this.n = new HashMap<>();
        f36638c.d("stackDepth is " + this.d);
        this.o = jsonArray;
        this.p = jsonArray2;
        this.q = r.u().e();
        b(th);
        this.s = new com.networkbench.agent.impl.crash.oom.b(com.networkbench.agent.impl.data.type.f.f36952a.d());
        a(th);
        b(map);
    }

    private String c(Throwable th) {
        if (th == null) {
            return "";
        }
        String strC = ak.c(th);
        f36638c.a("className:" + th.getClass().getName() + ", throwable message is " + strC);
        return strC == null ? "" : strC;
    }

    private String k() {
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        for (Thread thread : allStackTraces.keySet()) {
            if (thread.getName().equals(Looper.getMainLooper().getThread().getName())) {
                StackTraceElement[] stackTraceElementArr = allStackTraces.get(thread);
                StringBuilder sb = new StringBuilder();
                int length = stackTraceElementArr.length;
                int i2 = this.d;
                if (i2 < length) {
                    length = i2;
                }
                for (int i3 = 0; i3 < length; i3++) {
                    sb.append("\tat " + stackTraceElementArr[i3] + "\n");
                }
                return sb.toString();
            }
        }
        return null;
    }

    private long l() {
        long jR = r.u().R();
        return jR <= 0 ? this.g : jR;
    }

    private String m() {
        return (NBSAgent.getImpl() == null || NBSAgent.getImpl().o() == null) ? "" : NBSAgent.getImpl().o();
    }

    public JsonArray a(Map<Thread, StackTraceElement[]> map) {
        JsonArray jsonArray = new JsonArray();
        if (ak.b(this.f36639e)) {
            jsonArray.add(a(Thread.currentThread().getId(), "com.facebook.react.JavaScript", ak.a(this.f36639e).toString()));
        }
        if (h()) {
            f36638c.d("user crash thread is UIThread");
            jsonArray.add(a(Thread.currentThread().getId(), Thread.currentThread().getName(), a(this.d).toString()));
        } else {
            f36638c.d("user crash thread is not UIThread");
            Thread threadCurrentThread = Thread.currentThread();
            jsonArray.add(a(threadCurrentThread.getId(), threadCurrentThread.getName(), a(this.d).toString()));
        }
        a(ak.g(map), jsonArray);
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        if (!ab.c(this.t)) {
            return a(this.t);
        }
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(r.u().f(this.g))));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(r.u().f(l()))));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(ak.g())));
        jsonArray.add(new JsonPrimitive(new UUID(ak.a().nextLong(), ak.a().nextLong()).toString()));
        String str = this.f36641h;
        if (str == null) {
            str = "";
        }
        jsonArray.add(new JsonPrimitive(str));
        JsonArray jsonArray2 = this.m;
        if (jsonArray2 == null) {
            jsonArray2 = new JsonArray();
        }
        jsonArray.add(jsonArray2);
        jsonArray.add(new JsonPrimitive(ScreenNameManager.getCurrentScreenName()));
        jsonArray.add(this.o);
        jsonArray.add(this.p);
        if (this.l == null) {
            this.l = ak.a(this.f36642i, true);
        }
        String str2 = this.l;
        if (str2 == null) {
            str2 = "";
        }
        jsonArray.add(new JsonPrimitive(str2));
        jsonArray.add(new JsonPrimitive(""));
        jsonArray.add(null);
        if (r.q) {
            jsonArray.add(new JsonPrimitive("logcats :" + f36636a));
        } else {
            jsonArray.add(new JsonPrimitive(""));
            f36638c.a("logcats collect  is  not turned on !");
        }
        if (ak.b(this.f36642i) && Harvest.isUI_enabled()) {
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(com.networkbench.agent.impl.data.type.f.f36952a.a())));
        } else {
            jsonArray.add(new JsonPrimitive((Number) 0));
        }
        String str3 = this.f36644k;
        if (str3 == null) {
            str3 = "";
        }
        jsonArray.add(new JsonPrimitive(str3));
        HashMap<String, JsonObject> map = this.n;
        if (map != null) {
            jsonArray.add(ak.c((Map<String, JsonObject>) map));
        } else {
            jsonArray.add(new JsonObject());
        }
        String str4 = this.f36640f;
        jsonArray.add(new JsonPrimitive(str4 != null ? str4 : ""));
        jsonArray.add(new JsonPrimitive(new com.networkbench.agent.impl.data.a(r.u(), this.f36643j).asJsonObject().toString()));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.r)));
        jsonArray.add(new JsonPrimitive(this.s.asJson().toString()));
        return jsonArray;
    }

    public StringBuilder b(int i2) {
        if (this.f36639e == null) {
            return new StringBuilder(1);
        }
        StringBuilder sb = new StringBuilder();
        Throwable cause = this.f36639e.getCause();
        if (cause == null) {
            cause = this.f36639e;
        }
        int i3 = 0;
        while (cause != null) {
            sb.append("Caused by: " + cause.toString() + "\n");
            StackTraceElement[] stackTrace = cause.getStackTrace();
            for (int i4 = 0; i4 < stackTrace.length; i4++) {
                if (i3 >= i2) {
                    sb.append("\t... ");
                    sb.append(stackTrace.length - i4);
                    sb.append(" more");
                    f36638c.a("sDepth is" + i3);
                    break;
                }
                i3++;
                sb.append("\tat " + stackTrace[i4] + "\n");
            }
            cause = cause.getCause();
        }
        return sb;
    }

    public JsonArray d() {
        return this.m;
    }

    public HashMap<String, JsonObject> e() {
        return this.n;
    }

    public int f() {
        return this.r;
    }

    public String g() {
        return this.t;
    }

    public boolean h() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public String i() {
        return o60.j(this.g, "", new StringBuilder());
    }

    public String j() {
        return this.f36640f.toString();
    }

    public String c() {
        return this.f36641h;
    }

    public c(String str) {
        this.f36642i = r.u().J();
        this.l = null;
        this.m = null;
        try {
            this.t = str;
            this.s = new com.networkbench.agent.impl.crash.oom.b();
        } catch (Throwable th) {
            Logger.error(f36637b, "nbscrash init from content failed", th);
        }
    }

    public void a(com.networkbench.agent.impl.crash.oom.b bVar) {
        this.s = bVar;
    }

    private void a(Throwable th) {
        if (th == null || !(th instanceof OutOfMemoryError)) {
            return;
        }
        try {
            File fileA = new com.networkbench.agent.impl.crash.oom.d(new com.networkbench.agent.impl.util.c(r.u().J())).a();
            if (fileA == null || !fileA.exists() || fileA.length() <= 0 || !com.networkbench.agent.impl.util.a.f38249a.c(com.networkbench.agent.impl.crash.oom.g.a(fileA.getName()))) {
                return;
            }
            this.s.a(com.networkbench.agent.impl.util.h.b(fileA));
            fileA.delete();
            File file = new File(fileA.getAbsolutePath().replace(".json", ".content"));
            if (file.exists()) {
                file.delete();
            }
        } catch (Throwable th2) {
            Logger.error(f36637b, "error configOOMHprofReport", th2);
        }
    }

    private void b(Throwable th) {
        if (th == null) {
            this.r = 1;
        } else if (th instanceof OutOfMemoryError) {
            this.r = 2;
        } else {
            this.r = 0;
        }
    }

    private void b(Map<Thread, StackTraceElement[]> map) {
        if (this.l == null) {
            this.l = ak.a(this.f36642i, true);
        }
        if (this.r == 1) {
            this.m = new JsonArray();
        } else {
            this.m = a(map);
        }
    }

    public String b() {
        return this.f36644k;
    }

    public com.networkbench.agent.impl.k.b a() {
        return this.f36643j;
    }

    private void a(List<Map.Entry<Thread, StackTraceElement[]>> list, JsonArray jsonArray) {
        if (list != null) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : list) {
                if (!entry.getKey().getName().equals(Thread.currentThread().getName())) {
                    StackTraceElement[] value = entry.getValue();
                    if (value.length > 0) {
                        StringBuilder sb = new StringBuilder();
                        for (int i2 = 0; i2 < value.length; i2++) {
                            if (i2 <= this.d) {
                                sb.append("\tat " + value[i2] + "\n");
                            }
                        }
                        jsonArray.add(a(entry.getKey().getId(), entry.getKey().getName(), sb.toString()));
                    }
                }
            }
        }
    }

    private JsonArray a(long j2, String str, String str2) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(j2)));
        jsonArray.add(new JsonPrimitive(str));
        if (str2 == null) {
            str2 = "";
        }
        jsonArray.add(new JsonPrimitive(str2));
        return jsonArray;
    }

    private JsonArray a(String str) {
        JsonArray asJsonArray = new JsonParser().parse(str).getAsJsonArray();
        JsonArray jsonArray = new JsonArray();
        for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
            if (i2 != asJsonArray.size() - 1) {
                jsonArray.add(asJsonArray.get(i2));
            }
        }
        jsonArray.add(new JsonPrimitive(this.s.a(new JsonParser().parse(asJsonArray.get(asJsonArray.size() - 1).getAsString()).getAsJsonObject().get("memory").getAsJsonObject()).toString()));
        return jsonArray;
    }

    public StringBuilder a(int i2) {
        return b(i2);
    }
}
