package com.networkbench.agent.impl.g.a;

import android.view.MotionEvent;
import com.networkbench.agent.impl.session.screen.NBSMotionEvent;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class h extends d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f37189e = "NBSGestureDetector";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinkedList<NBSMotionEvent> f37190f;
    private long g;

    public h(a aVar, MotionEvent motionEvent, String str, long j2) {
        super(aVar, motionEvent, str);
        LinkedList<NBSMotionEvent> linkedList = new LinkedList<>();
        this.f37190f = linkedList;
        linkedList.add(new NBSMotionEvent().conversionMotionEvent(motionEvent, a()));
        this.g = j2;
    }

    public void a(MotionEvent motionEvent) {
        if (this.f37173b || motionEvent == null) {
            return;
        }
        this.f37190f.add(new NBSMotionEvent().conversionMotionEvent(motionEvent, System.currentTimeMillis()));
    }

    public LinkedList<NBSMotionEvent> e() {
        return this.f37190f;
    }

    public long f() {
        return this.g;
    }
}
