package com.networkbench.agent.impl.g.a;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class f implements GestureDetector.OnDoubleTapListener, GestureDetector.OnGestureListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f37185b = "NBSGestureDetector";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f37186a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f37187c;
    private e d;

    public f(e eVar) {
        this.d = eVar;
    }

    private void a(h hVar) {
        this.d.a(hVar);
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        Logger.debug(f37185b, "onDoubleTap");
        h hVar = this.f37186a;
        if (hVar == null) {
            return false;
        }
        hVar.a(a.DOUBLE_TAP);
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        Logger.debug(f37185b, "onDoubleTapEvent");
        h hVar = this.f37186a;
        if (hVar == null) {
            return false;
        }
        hVar.a(a.DOUBLE_TAP_EVENT);
        if (this.f37186a.e().size() < 1) {
            this.f37186a.a(motionEvent);
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        Logger.debug(f37185b, "onDown");
        h hVar = this.f37186a;
        if (hVar != null && !hVar.f37173b) {
            hVar.f37173b = true;
        }
        h hVar2 = new h(a.DOWN, motionEvent, ScreenNameManager.getCurrentScreenName(), System.currentTimeMillis());
        this.f37186a = hVar2;
        a(hVar2);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        Logger.debug(f37185b, "onFling");
        h hVar = this.f37186a;
        if (hVar == null) {
            return false;
        }
        hVar.a(motionEvent2);
        this.f37186a.f37173b = true;
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        Logger.debug(f37185b, "onLongPress");
        h hVar = this.f37186a;
        if (hVar == null) {
            return;
        }
        hVar.f37173b = true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        Logger.debug(f37185b, "onScroll");
        if (this.f37186a == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f37186a.a();
        h hVar = this.f37186a;
        if (jCurrentTimeMillis >= 300) {
            hVar.f37173b = true;
            h hVar2 = new h(a.SCROLL, motionEvent2, ScreenNameManager.getCurrentScreenName(), System.currentTimeMillis());
            this.f37186a = hVar2;
            a(hVar2);
        } else {
            hVar.a(motionEvent2);
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
        Logger.debug(f37185b, "onShowPress");
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        Logger.debug(f37185b, "Don't deal with onSingleTapConfirmed");
        h hVar = this.f37186a;
        if (hVar == null) {
            return false;
        }
        hVar.f37173b = true;
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        Logger.debug(f37185b, "onSingleTapUp");
        return false;
    }
}
