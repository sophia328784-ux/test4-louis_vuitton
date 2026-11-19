package com.networkbench.agent.impl.crash.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.c.j;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HarvestableObject implements SpanFormat {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f36592e = 60;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f36593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AtomicBoolean f36594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Queue<d> f36595c;
    Queue<d> d;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.crash.a.a$a, reason: collision with other inner class name */
    public static class C0094a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f36596a = new a();

        private C0094a() {
        }
    }

    private a() {
        this.f36594b = new AtomicBoolean(false);
        this.f36595c = new ConcurrentLinkedQueue();
        this.d = new ConcurrentLinkedQueue();
        this.f36593a = 60;
    }

    public static a c() {
        return C0094a.f36596a;
    }

    private synchronized JsonArray g() {
        JsonArray jsonArray;
        jsonArray = new JsonArray();
        Iterator<d> it = this.f36595c.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    public synchronized void a(d dVar) {
        if (dVar == null) {
            g.m("addErrorInfo : null");
            return;
        }
        if (this.f36594b.get()) {
            if (this.d.size() >= ConfigurationName.MAX_ERROR_COUNT) {
                this.d.poll();
            }
            this.d.add(dVar);
        } else {
            if (this.f36595c.size() >= ConfigurationName.MAX_ERROR_COUNT) {
                this.f36595c.poll();
            }
            this.f36595c.add(dVar);
        }
        c.a(dVar.d(), dVar.toJsonString());
        try {
            if (r.u().aC()) {
                NBSAppAgent.debugLog(dVar.toJsonString(), "TingyunSDK_customError");
            }
            j.a("addErrorInfo :", dVar);
        } catch (Throwable th) {
            g.p("addErrorInfo debuglog has error :" + th.getMessage());
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive("customError"));
        jsonObject.add("interval", new JsonPrimitive((Number) Integer.valueOf(this.f36593a)));
        jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().g(System.currentTimeMillis()))));
        jsonObject.add("dev", NBSAgent.getDeviceData().asJson());
        jsonObject.add("errs", g());
        return jsonObject;
    }

    public Queue<d> b() {
        return this.d;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return e() == 0;
    }

    public synchronized void d() {
        c.a(this.f36595c);
        this.f36595c.clear();
    }

    public int e() {
        return this.f36595c.size();
    }

    public synchronized void f() {
        while (this.d.size() > 0) {
            this.f36595c.add(this.d.poll());
        }
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (checkData()) {
            return "";
        }
        return "customError" + asJsonObject().toString() + "\n";
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        d();
    }

    public void a(int i2) {
        this.f36593a = i2;
    }

    public Queue<d> a() {
        return this.f36595c;
    }

    public void a(Queue<d> queue) {
        Iterator<d> it = queue.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }
}
