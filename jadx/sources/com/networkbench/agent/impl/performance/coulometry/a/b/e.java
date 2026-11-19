package com.networkbench.agent.impl.performance.coulometry.a.b;

import defpackage.pq0;
import java.util.Iterator;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f37830a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f37833e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f37834f;
    public long d = System.currentTimeMillis();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<Float> f37831b = pq0.v();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<Float> f37832c = pq0.v();

    public e(String str) {
        this.f37830a = str;
    }

    public void a() {
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Iterator<Float> it = this.f37831b.iterator();
        Float fValueOf2 = fValueOf;
        while (it.hasNext()) {
            fValueOf2 = Float.valueOf(it.next().floatValue() + fValueOf2.floatValue());
        }
        Iterator<Float> it2 = this.f37832c.iterator();
        while (it2.hasNext()) {
            fValueOf = Float.valueOf(it2.next().floatValue() + fValueOf.floatValue());
        }
        if (this.f37831b.size() != 0) {
            this.f37833e = ((int) ((fValueOf2.floatValue() / this.f37831b.size()) * 100.0f)) / 100.0f;
        }
        if (this.f37832c.size() != 0) {
            this.f37834f = ((int) ((fValueOf.floatValue() / this.f37832c.size()) * 100.0f)) / 100.0f;
        }
    }

    public Float b() {
        float f2 = this.f37833e;
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 == -1.0f) {
            return null;
        }
        com.networkbench.agent.impl.c.g.y("processData  : temperature " + this.f37833e);
        return Float.valueOf(this.f37833e);
    }

    public Float c() {
        float f2 = this.f37834f;
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 == -1.0f) {
            return null;
        }
        com.networkbench.agent.impl.c.g.y("processData  : electric " + this.f37834f);
        return Float.valueOf(this.f37834f);
    }
}
