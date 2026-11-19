package com.networkbench.agent.impl.g.a;

import com.networkbench.agent.impl.harvest.HarvestData;
import com.networkbench.agent.impl.session.Event;
import com.networkbench.agent.impl.session.screen.NBSScreenShotController;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f37177f = "NBSGestureCollection";
    private static final int g = 10000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f37178h = 300;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected d f37180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected d f37181c;
    protected d d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f37182e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Stack<d> f37179a = new Stack<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f37183i = 0;

    private void e(d dVar) {
        Event event = new Event("rage click", 3, null);
        try {
            event.getAttributes().add("touchMap", new Gson().toJsonTree(dVar.a(this.f37179a, c()), new TypeToken<ArrayList>() { // from class: com.networkbench.agent.impl.g.a.e.1
            }.getType()));
        } catch (Throwable unused) {
        }
        HarvestData.getSpanDatas().addEvent(event);
        this.f37179a.clear();
    }

    public void a(d dVar) {
        if (r.u().f()) {
            if (dVar.c() == a.FLING) {
                Logger.debug(f37177f, "dropFlingWithDown invoke");
                d();
            } else {
                if (a(dVar.c())) {
                    c(dVar);
                    return;
                }
                Logger.debug(f37177f, "gestureType is not suit for angry hit:" + dVar.c());
            }
        }
    }

    public boolean b(d dVar) {
        Logger.debug(f37177f, "shouldDropGesture  gesture :" + dVar.a());
        if (dVar.a() - this.f37183i < a()) {
            Logger.debug(f37177f, "shouldDropGesture  lastMotionEventTime :" + this.f37183i);
            return true;
        }
        this.f37183i = dVar.a();
        Logger.debug(f37177f, "shouldDropGesture  new :" + this.f37183i);
        return false;
    }

    public void c(d dVar) {
        if (r.p != 0) {
            Logger.debug(f37177f, "angry happened  isMainProcess :  not  .. ");
            return;
        }
        if (this.f37180b != null && this.f37181c != null) {
            if (!d(dVar)) {
                this.f37182e = false;
            } else if (!this.f37182e) {
                e(dVar);
                this.f37182e = true;
            }
        }
        this.f37179a.add(dVar);
        this.f37181c = this.f37180b;
        this.f37180b = dVar;
    }

    public boolean d(d dVar) {
        return (dVar.a(this.f37180b) || this.f37180b.a(this.f37181c) || this.f37181c.b(this.f37180b) || this.f37180b.b(dVar)) ? false : true;
    }

    private void d() {
        this.f37181c = null;
        this.f37180b = null;
    }

    public int c() {
        return r.u().J().getResources().getConfiguration().orientation == 1 ? 0 : 1;
    }

    public void a(h hVar) {
        Logger.debug(f37177f, "processGesture:" + hVar.toString());
        b(hVar);
        a((d) hVar);
    }

    public int a() {
        return f37178h;
    }

    public void a(long j2, h hVar) {
        NBSScreenShotController.getShotController(NBSScreenShotController.ShotControllerType.SCREEN_SHOT_TYPE).doShot(j2, hVar, null);
    }

    private boolean a(a aVar) {
        return aVar == a.DOWN;
    }

    public void b(h hVar) {
        if (b((d) hVar)) {
            Logger.debug(f37177f, "drop gesture type is:" + hVar.c().name());
            this.d.f37172a.add(hVar);
            return;
        }
        Logger.debug(f37177f, "add gesture to queue gesture type is:" + hVar.c());
        this.d = hVar;
        a(System.currentTimeMillis(), hVar);
    }

    public int b() {
        return 10000;
    }
}
