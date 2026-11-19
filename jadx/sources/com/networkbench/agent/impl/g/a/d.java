package com.networkbench.agent.impl.g.a;

import android.view.MotionEvent;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.d21;
import java.util.ArrayList;
import java.util.Queue;
import java.util.Stack;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f37170e = 100;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f37171f = 300;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f37174c;
    public float d;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f37175h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f37173b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Queue<h> f37172a = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f37176i = System.currentTimeMillis();

    public d(a aVar, MotionEvent motionEvent, String str) {
        this.f37175h = aVar;
        this.f37174c = motionEvent.getX();
        this.d = motionEvent.getY();
        this.g = str;
    }

    private void a(ArrayList arrayList, d dVar, int i2) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().e(System.currentTimeMillis()))));
        jsonObject.add("x", new JsonPrimitive((Number) Float.valueOf(dVar.f37174c)));
        jsonObject.add("y", new JsonPrimitive((Number) Float.valueOf(dVar.d)));
        jsonObject.add("or", new JsonPrimitive((Number) Integer.valueOf(i2)));
        jsonObject.add("page", new JsonPrimitive(dVar.b()));
        arrayList.add(jsonObject);
    }

    public boolean b(d dVar) {
        float f2 = dVar.f37174c;
        float f3 = dVar.d;
        float fAbs = Math.abs(this.f37174c - f2);
        float fAbs2 = Math.abs(this.d - f3);
        return Math.sqrt((double) ((fAbs2 * fAbs2) + (fAbs * fAbs))) > 100.0d;
    }

    public a c() {
        return this.f37175h;
    }

    public int d() {
        return f37171f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NBSGesture{gestureType=");
        sb.append(this.f37175h);
        sb.append(", gestureHappenedTime=");
        sb.append(this.f37176i);
        sb.append(", motion=[");
        sb.append(this.f37174c);
        sb.append(",");
        return d21.e(this.d, "]}", sb);
    }

    public String b() {
        return this.g;
    }

    public long a() {
        return this.f37176i;
    }

    public boolean a(d dVar) {
        return this.f37176i - dVar.f37176i > ((long) d());
    }

    public ArrayList a(Stack<d> stack, int i2) {
        ArrayList arrayList = new ArrayList();
        d dVarPop = stack.pop();
        a(arrayList, stack.pop(), i2);
        a(arrayList, dVarPop, i2);
        a(arrayList, this, i2);
        return arrayList;
    }

    public void a(a aVar) {
        this.f37175h = aVar;
    }
}
