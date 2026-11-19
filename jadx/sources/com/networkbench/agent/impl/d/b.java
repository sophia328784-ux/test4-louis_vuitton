package com.networkbench.agent.impl.d;

import com.networkbench.com.google.gson.JsonObject;
import defpackage.fc;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final com.networkbench.agent.impl.c.e f36705a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected HashMap<String, JsonObject> f36706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f36707c;
    private long d;

    public b(f fVar) {
        a(fVar);
        this.f36706b = new HashMap<>();
    }

    public void a(f fVar) {
        this.f36707c = fVar;
    }

    @Override // com.networkbench.agent.impl.d.a
    public long b() {
        return this.d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BaseMeasurement{type=");
        sb.append(this.f36707c);
        sb.append("'', startTime=");
        return fc.k(sb, this.d, '}');
    }

    public void a(long j2) {
        this.d = j2;
    }

    @Override // com.networkbench.agent.impl.d.a
    public f a() {
        return this.f36707c;
    }

    public void a(HashMap<String, JsonObject> map) {
        this.f36706b = map;
    }
}
