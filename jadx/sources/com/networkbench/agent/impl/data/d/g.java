package com.networkbench.agent.impl.data.d;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class g implements GestureDetector.OnGestureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36877a = "NBSGestureForFeature";

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        Logger.debug(f36877a, "onDown reset feature data Info");
        b.a().a(new d(ConfigurationName.ACTION_DOWN, ContentTree.ROOT_ID, "", -1));
        com.networkbench.agent.impl.i.d.a().c();
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }
}
